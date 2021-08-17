`timescale 1ns/1ns

module TN80C188EB (
  RESOUT, nRESIN,
  Xin, CLKOUT,
  nTEST,
  A, AD,
  ALE, nRD, nWR,
  READY,
  nS,
  HOLD, HLDA,
  nUCS, nLCS, nGCS,
  DTnR, nDEN,
  nINTA
);

  parameter  // Data sheet timing in nanoseconds for TN80C188EB-20
    tCLRO  = 40,
    tCICO  = 25,
    tCHLH  = 30,
    tCHSV  = 45,
    tCHCTV = 44,
    tCLAV  = 44,
    tCLCSV = 42,
    tCHCSX = 30,
    tCHLL  = 25,
    tCLAX  =  0,  // tCLAX < tCLDV
    tCLDV  = 40,
    tCLDZ  =  3,
    tCVCTV = 44,
    tCHCZ  = 33,
    tCLAZ  = 25,
    tCLHAV = 33,
    tCHCV  = 36,
    tCLSH  = 35,
    tCVCTX = 37,
    tCVDEX = 37,
    tCLRL  = 37,
    tCLRH  = 37;

  //___________________________________ Directionality, width and kind of ports
  //
  output RESOUT;      reg RESOUT;
  input  nRESIN;
  input  Xin;
  output CLKOUT;     reg CLKOUT;
  input  nTEST;
  inout  [19:8] A;
  inout  [7:0] AD;
  output ALE;
  output nRD;
  output nWR;
  input  READY;
  output [2:0] nS;
  input  HOLD;
  output HLDA;       reg HLDA;
  output nUCS;
  output nLCS;
  output [7:0] nGCS; reg [7:0] nGCS;
  output DTnR;
  output nDEN;
  output [1:0] nINTA; reg [1:0] nINTA;

  //_____________________________________________________________ EXTERNAL API
  //
  parameter  // DO NOT CHANGE THESE!
    csNONE = 12,
    csGCS0 = 0,
    csGCS1 = 1,
    csGCS2 = 2,
    csGCS3 = 3,
    csGCS4 = 4,
    csGCS5 = 5,
    csGCS6 = 6,
    csGCS7 = 7,
    csLCS  = 8,
    csUCS  = 9,
    csINTA0 = 10,
    csINTA1 = 11;
  //
  reg     xRdy [0:9];
  integer intW [0:11];
  //
  task setAccessMode;
    input integer cs;
    input useExtRdy;
    input integer internalWaits;
    begin
      xRdy[cs] = useExtRdy;
      intW[cs] = internalWaits;
    end
  endtask
  //
  task intAck;
    input integer cs;
    output [7:0] D;  // returned int vector
    output aborted;
    reg af_save;
    case (cs)
      csINTA0, csINTA1:
        begin
          af_save = 0;
          swapAutoFetch(af_save);
          runBFM(3'b000, cs, 20'b0, 0, D, aborted);
          repeat (2) @(negedge CLKOUT);
          runBFM(3'b000, cs, 20'b0, 0, D, aborted);
          swapAutoFetch(af_save);
        end
      default:
        af_save = msgError(errorBadIACK, cs);
    endcase
  endtask
  //
  task writeMem;
    input integer cs;
    input [19:0] A;
    input [7:0] D;
    output aborted;
    reg [7:0] junk;
    runBFM(3'b110, cs, A, D, junk, aborted);
  endtask
  //
  task writeIO;
    input integer cs;
    input [19:0] A;
    input [7:0] D;
    output aborted;
    reg [7:0] junk;
    runBFM(3'b010, cs, A, D, junk, aborted);
  endtask
  //
  task readMem;
    input integer cs;
    input [19:0] A;
    output [7:0] D;
    output aborted;
    runBFM(3'b101, cs, A, 0, D, aborted);
  endtask
  //
  task readIO;
    input integer cs;
    input [19:0] A;
    output [7:0] D;
    output aborted;
    reg [2:0] status;
    runBFM(3'b001, cs, A, 0, D, aborted);
  endtask
  //
  task fetch;
    input integer cs;
    input [19:0] A;
    output [7:0] D;
    output aborted;
    runBFM(3'b100, cs, A, 0, D, aborted);
  endtask
  //
  task enableAutoFetch;
    input [19:0] Amin, Amax;
    input integer cs;
    begin
      manageAutoFetch(1, Amin, Amax, cs);
    end
  endtask
  //
  task disableAutoFetch;
    reg v;
    begin
      v = 0;
      swapAutoFetch(v);
    end
  endtask

  //--------------------------------------------------------------
  // EVERYTHING BELOW THIS DIVIDER IS PRIVATE INTERNAL LOGIC
  // AND SHOULD NOT BE ACCESSED BY CLIENT CODE.
  //--------------------------------------------------------------


  //____________________________ Enforce mandatory relationships among parameters
  //
  initial begin : param_check
    reg ok;
    ok = 1;
    if (tCLAX >= tCLDV) begin
      ok = 0; $display("REQUIRED tCLAX < tCLDV");
    end
    if (!ok)
      msgFatal(fatalBadParameters, 0);
  end

  //__________________________________________________ Internal shadows of pins
  //
  reg iDTnR;
  reg inDEN;
  reg inWR;
  reg inRD;
  reg inUCS;
  reg inLCS;
  reg [19:16] iAH;
  reg [15:8] iAM;
  reg [7:0] iAL;
  reg iALE;
  reg [2:0] inS;

  //____________________________________________________ Buffer group enables
  //
  reg ieAD;
  reg ieCtrl;

  //_______________________________________________________ Internal registers
  //
  reg resetInProgress;

  //____________________________________________________ Cycle data structure
  //
  reg [7:0] cycleWData;
  reg [7:0] cycleRData;
  reg [19:0] cycleAdrs;
  reg [2:0] cycleStatus;
  integer   cycleCS;

  //_________________________________________________________ Cycle management
  //
  reg autoFetch;
  reg [19:0]autoFetchAmin;
  reg [19:0]autoFetchAmax;
  reg [19:0]autoFetchPC;
  integer   autoFetchCS;
  reg startCycle;

  //___________________________________________________________ Output buffers
  //
  pullup(nTEST);

  assign nUCS = inUCS;
  assign nLCS = inLCS;

  assign (highz0, weak1) A = (RESOUT | ~nRESIN);
  assign A    = ieAD ? {iAH, iAM}   : 'bz;
  assign AD   = ieAD ? iAL          : 'bz;
  assign nDEN = ieAD ? inDEN        : 'bz;

  assign ALE  = ieCtrl ? iALE  : 'bz;
  assign nRD  = ieCtrl ? inRD  : 'bz;
  assign nWR  = ieCtrl ? inWR  : 'bz;
  assign nS   = ieCtrl ? inS   : 'bz;
  assign DTnR = ieCtrl ? iDTnR : 'bz;

  //____________________________________________________________  Error numbers
  //
  parameter
    fatalBadResetState          = 101,
    fatalNotImplEnhancedMode    = 102,  // not used in TN80C188EB
    fatalNotImplONCEMode        = 103,
    fatalNotImplQueueStatusMode = 104,  // not used in TN80C188EB
    fatalBadParameters          = 105,
    errorReentrant              = 201,
    errorBadIACK                = 202,
    warnBadIoAdrs               = 301;

  //_________________________________________________________ HOLD/HLDA and bus cycle logic
  //
  parameter
    NOP = "NOP",
    T0H = "T0H",
    T1L = "T1L",
    T1H = "T1H",
    T2L = "T2L",
    T2H = "T2H",
    TWi = "TWi",
    TWx = "TWx",
    T3L = "T3L",
    T3H = "T3H",
    T4L = "T4L",
    T4H = "T4H";
  //
  task initializeBusController;
    integer i;
    begin
      ieCtrl = 0;
      ieAD = 0;
      inRD = 1;
      inWR = 1;
      {iAH, iAM, iAL} = 20'bz;
      busController.busState = NOP;
      manageAutoFetch(1, 20'hFFC00, 20'hFFFFF, csUCS);
      autoFetchPC = 20'hFFFEF;
      startCycle = 0;
      for (i=0; i<=9; i=i+1)
        setAccessMode(i, 0, 3);
      setAccessMode(10, 0, 0);
      setAccessMode(11, 0, 0);
    end
  endtask
  //
  task swapAutoFetch;
    inout new_old;
    reg update;
    begin
      update = new_old;
      new_old = autoFetch;
      autoFetch = update;
    end
  endtask
  //
  task manageAutoFetch;
    input active;
    input [19:0] Amin, Amax;
    input integer cs;
    begin
      autoFetch = active;
      if (active) begin
        autoFetchAmin = Amin;
        autoFetchAmax = Amax;
        autoFetchCS   = cs;
        if (autoFetchPC < Amin)
          autoFetchPC = Amin-1;
        if (autoFetchPC > Amax)
          autoFetchPC = Amax;
      end
    end
  endtask
  //
  function runDecision;
    input externalStart;
    begin
      if (externalStart) begin
        runDecision = 1;
      end else if (!autoFetch) begin
        runDecision = 0;
      end else begin
        runDecision = 1;
        if (autoFetchPC >= autoFetchAmax)
          autoFetchPC = autoFetchAmin;
        else
          autoFetchPC = autoFetchPC + 1;
        cycleAdrs = autoFetchPC;
        cycleStatus = 3'b100;
        cycleCS = autoFetchCS;
      end
    end
  endfunction
  //
  always @(posedge resetInProgress) disable busController;
  //
  initial begin
    {nINTA, inUCS, inLCS, nGCS} = {12{1'b1}};
    wait (CLKOUT===0)
    forever begin
      initializeBusController;
      wait (!resetInProgress) begin: busController
        event cycleDone;
        reg [23:0] busState;
        reg [11:0] selects;   // {nINTA, nUCS, nLCS, nGCS[7:0]}
        reg sampledREADY;
        reg accept;
        reg cycleWrite;
        reg ok;

        forever begin

          busState <= NOP;
          accept = 1;
          //_________________________________________________________NOP
          while (accept) @(posedge CLKOUT) begin
            {nINTA, inUCS, inLCS, nGCS} <= #tCHCSX {12{1'b1}};
            inDEN <= #tCHCTV 1;
            if (HOLD) begin
              ieCtrl <= #tCHCZ 0;
              @(negedge CLKOUT)
              ieAD <= #tCLAZ 0;
              HLDA <= #tCLHAV 1;
              while (HOLD) @(negedge CLKOUT);
              @(negedge CLKOUT) HLDA <= #tCLHAV 0;
            end else if (runDecision(startCycle)) begin
              accept = 0;
              startCycle = 0;
              cycleWrite = (cycleStatus[1:0] == 2'b10);
              busState <= T0H;
              ieCtrl <= #tCHCV 1;
              HLDA <= #tCLHAV 0;
            end
          end
          //_________________________________________________________T0H
          iALE <= #tCHLH 1;
          inS  <= #tCHSV cycleStatus;
          iDTnR <= #tCHCTV cycleWrite;
          inDEN <= #tCHCTV 1;

          @(negedge CLKOUT) busState <= T1L;
          //_________________________________________________________T1L
          ieAD <= #tCLAV 1;
          selects = 1 << cycleCS;
          {nINTA, inUCS, inLCS, nGCS} <= #tCLCSV ~selects;
          {iAH, iAM, iAL} <= #tCLAV cycleAdrs;

          @(posedge CLKOUT) busState <= T1H;
          //_________________________________________________________T1H
          iALE <= #tCHLL 0;
          if (cycleWrite)
            inDEN <= #tCVCTV 0;

          @(negedge CLKOUT) busState <= T2L;
          //_________________________________________________________T2L
          iAH <= #tCLAX 'bx;
          iAH <= #tCLDV 0;
          if (cycleWrite) begin
            iAL <= #tCLDZ cycleWData;
            inWR <= #tCVCTV 0;
          end else begin
            iAL <= #tCLDZ 'bz;
            if (cycleStatus != 3'b000)
              // No nRD on int ack.
              inRD <= #tCLRL 0;
          end
          @(posedge CLKOUT) busState <= T2H;
          //_________________________________________________________T2H
          sampledREADY = READY;
          if (!cycleWrite)
            inDEN <= #tCVCTV 0;

          repeat (intW[cycleCS]) @(negedge CLKOUT) busState <= TWi;
          while (!accept) begin
            @(negedge CLKOUT)
            if (~xRdy[cycleCS] || (READY && sampledREADY)) begin
              busState <= T3L;
              accept = 1;
            end else begin
              busState <= TWx;
              @(posedge CLKOUT);
              sampledREADY = READY;
            end
          end
          //_________________________________________________________T3L
          inS <= #tCLSH 3'b111;

          @(posedge CLKOUT) busState <= T3H;
          //_________________________________________________________T3H

          @(negedge CLKOUT) busState <= T4L;
          //_________________________________________________________T4L == NOP
          if (cycleWrite) begin
            inWR <= #tCVCTX 1;
          end else begin
            cycleRData = AD;
            inDEN <= #tCVDEX 1;
            inRD <= #tCLRH 1;
          end
          -> cycleDone;

        end
      end // busController
    end // forever
  end // initial

  //_________________________________________________________ Reset and clock-divider
  //
  initial begin
    CLKOUT = 0;
    fork : blkResetAndClock
      integer resetState;
      reg sample_nRES;
      reg sample_nTEST;
      //--------------------------------------------------
      forever @(negedge Xin) begin : blkClkDiv
        // Default clock behaviour
        CLKOUT <= #tCICO ~CLKOUT;
        // Get reset started by detecting fall on nRESIN
        if ((sample_nRES !== 1'b0) && (nRESIN === 1'b0)) begin
          // Reset has started
          resetState = 0;
        end else if (!sample_nRES && (resetState === 0)) begin
          CLKOUT <= #tCICO 1;
          resetState = 1;
        end
        sample_nRES = nRESIN;
      end // blkClkDiv
      //------------------------------------------------
      forever @(negedge CLKOUT) if (resetState) begin
        case (resetState)
          1: resetInProgress <= 1;
          2: RESOUT <= #tCLRO 1;
          3: if (sample_nRES) begin
               if (A[19] === 1'b0)
                 enterONCEMode;
               sample_nTEST = nTEST;
             end else begin
               resetState = resetState - 1;  // hold here!
             end
          4: RESOUT <= #tCLRO 0;
          5,
          6,
          7: ;
          8: resetInProgress <= 0;
          9: resetState = 0;
          default: msgFatal(fatalBadResetState, resetState);
       endcase
       if (resetState) resetState = resetState + 1;
      end
      //--------------------------------------------------
    join // blkResetAndClock
  end

  //_____________________________________________________________ BFM functionality
  //
  reg lock;
  //
  function get_lock;
    input junk;
    if (lock) begin
      junk = msgError(errorReentrant,0);
      get_lock = 0;
    end else begin
      lock = 1;
      get_lock = 1;
    end
  endfunction
  //
  task release_lock;
    lock = 0;
  endtask
  //
  task runBFM;
    input [2:0] status;
    input integer cs;
    input [19:0] A;
    input [7:0] wD;
    output [7:0] rD;
    output aborted;
    reg junk;
    begin
      if ((status == 3'b010 || status == 3'b001) && (A[19:16] != 0)) begin
        junk = msgWarning(warnBadIoAdrs, A);
      end
      if (get_lock(0)) begin
        wait (busController.accept && !resetInProgress);
        startCycle = 1;
        aborted = 0;
        cycleAdrs = A;
        cycleWData = wD;
        cycleStatus = status;
        cycleCS = cs;
        wait (resetInProgress || !busController.accept);
        if (!resetInProgress) begin
          @(busController.cycleDone or resetInProgress);
        end
        aborted = resetInProgress;
        if (!aborted) begin
          rD = cycleRData;
        end
        release_lock;
      end else begin
        aborted = 1;
      end
    end
  endtask

  //_________________________________________________________________ Utilities
  //
  task updateWord;  // with no byte funnelling, just masking
    inout [15:0] word;
    input wrH, wrL;
    input [15:0] value;
    begin
      if (wrH) word[15:8] = value[15:8];
      if (wrL) word[7:0]  = value[7:0];
    end
  endtask

  //__________________________________________________ Placeholders for TBD functionality
  //
  task enterONCEMode;
    msgFatal(fatalNotImplONCEMode, 0);
  endtask

  //_______________________________________________________ Reporting and diagnostics
  //
  task msgFatal;
    input integer reason;
    input integer value;
    begin
      case (reason)
        fatalBadResetState:          $display("*F*[%m] @%t: badResetState=%0d", $time, value);
        fatalNotImplONCEMode:        $display("*F*[%m] @%t: ONCE mode NOT SUPPORTED", $time);
        fatalBadParameters:          $display("*F*[%m] @%t: Unacceptable parameter values", $time);
        default:                     $display("*F*[%m] @%t: unknown internal fatal %0d/%0d", $time, reason, value);
      endcase
      if ($time == 0)
        // Allow execution to continue for a short time if, and only if, we are at start of sim.
        // Aims to allow reporting of all parameter value errors, not just the first one.
        delayedFatal.trigger <= #1 1'b1;
      else
        // Any fatal error after execution has begun causes immediate halt.
        fatalExit;
    end
  endtask
  //
  initial begin : delayedFatal
    reg trigger;
    wait (trigger === 1'b1) fatalExit;
  end
  //
  task fatalExit;
    begin
      $display("*F*[%m] @%t: halting because of unrecoverable error(s)", $time);
      $finish(1);
    end
  endtask
  //
  function msgError;
    input integer reason;
    input integer value;
    reg [31:0] uvalue;
    begin
      uvalue = value;  // for bit-slicing
      case (reason)
        errorReentrant:  $display("*E*[%m] @%t: re-entrant BFM call, returning", $time);
        errorBadIACK  :  $display("*E*[%m] @%t: ignored bad cs-code %d in BFM call", $time, value);
        default:         $display("*W*[%m] @%t: unknown error %0d/%0d", $time, reason, value);
      endcase
      msgError = 0;
    end
  endfunction
  //
  function msgWarning;
    input integer reason;
    input integer value;
    reg [31:0] uvalue;
    begin
      uvalue = value;  // for bit-slicing
      case (reason)
        warnBadIoAdrs      : $display("*W*[%m] @%t: bad IO address 20'h%h", $time, uvalue[19:0]);
        default            : $display("*W*[%m] @%t: unknown warning %0d/%0d", $time, reason, value);
      endcase
      msgWarning = 0;
    end
  endfunction

endmodule
