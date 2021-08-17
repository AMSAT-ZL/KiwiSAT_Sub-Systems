// file: max1202.v
//
// Behavioural (simulation) model of MAX1202/1203 A-D converters
//
// Jonathan Bromley, 17 Jan 2009

// See also:
// * Maxim data sheet 19-1173 from www.maxim-ic.com
// * Errata for Maxim data sheet, described at the end of this file.
// * Implementation Notes, at the end of this file.

// LIMITATIONS:
// In this version, power-down behaviour is not modelled except
// that DOUT is held at zero when nSHDN is asserted (low).

//---------------------------------------------------------
// TESTBENCH CONTROL INTERFACE
//
// Various aspects of the model's operation can be controlled
// dynamically from the testbench by calling tasks as follows.
//
// INTERNAL CLOCK OSCILLATOR CONTROL
//    setInternalConvTimePicoseconds(time t);
// Sets the time taken to do a conversion (SSTRB low time) when
// running with internal clock mode.  The value is nominally
// about 7us, but is guaranteed to be no more than 10us.  The
// task automatically clips the value to be within 5us to 10us.
// It is not normally necessary to use this function; the
// default settings are appropriate.
//
// REPORT MESSAGE OUTPUT CONTROL
//    setReporting(integer which_messages, integer channels);
// Diagnostic messages from this model are grouped into
// several categories.  Each category is identified by
// a single-bit integer value defined below.  For each
// message category, the model stores a multi-channel
// file identifier value that determines whether the
// message will be generated and, if so, to which
// output channels it will be sent.  The startup default
// is for all messages to go to the console (channel 1).
// Message category integers can be ORed together to
// form a multi-bit integer that denotes multiple message
// categories, in which case the task call will affect
// all messages whose bit is set.  Note that it is therefore
// easy to revert to the default condition by calling
//    setReporting(-1, 1);
// A typical use of the call might be:
//    setReporting(
//         `MAX1202_MSG_CONTROL_INFO_BIT | `MAX1202_MSG_ANALOG_WARNING_BIT,
//         0
//    );
// which will suppress all message output for CONTROL_INFO and
// ANALOG_WARNING messages.
//
//---------------------------------------------------------
// DEFINES FOR MESSAGE TYPES

// Functional errors in digital operation -
// incomplete conversion, start during conversion etc
`define MAX1202_MSG_CONTROL_ERROR       (0)
`define MAX1202_MSG_CONTROL_ERROR_BIT   (1<<`MAX1202_MSG_CONTROL_ERROR)
//
// Functional warnings for unusual digital operation -
// nCS deasserted before readout complete, conversion
// aborted by early start command, slow conversion, etc
`define MAX1202_MSG_CONTROL_WARNING     (1)
`define MAX1202_MSG_CONTROL_WARNING_BIT (1<<`MAX1202_MSG_CONTROL_WARNING)
//
// Timing violations on digital signals: setup, hold,
// excessive clock frequency
`define MAX1202_MSG_TIMING_WARNING     (2)
`define MAX1202_MSG_TIMING_WARNING_BIT (1<<`MAX1202_MSG_TIMING_WARNING)
//
// Informational report on normal operation -
// start command, conversion, data readout, power up/down
`define MAX1202_MSG_CONTROL_INFO        (3)
`define MAX1202_MSG_CONTROL_INFO_BIT    (1<<`MAX1202_MSG_CONTROL_INFO)
//
// Analog overrange warning
`define MAX1202_MSG_ANALOG_WARNING      (4)
`define MAX1202_MSG_ANALOG_WARNING_BIT  (1<<`MAX1202_MSG_ANALOG_WARNING)
//
`define MAX1202_MSG_COUNT (5)
//---------------------------------------------------------

`timescale 1ps/1ps

module max1202 (
  // Analog inputs are modelled as 32-bit signed (2s complement)
  // integer, representing the input value in millivolts.  It is
  // assumed that the standard 4.096V reference is used; changing
  // the reference voltage is not supported in this model.
  // Consequently, the usable input range is 0 to 4095 in unipolar
  // mode, and -2048 to +2047 in bipolar mode.  However, this range
  // applies to the actual converted voltage after the inverting
  // input has been selected (applies to differential mode only).
  // Values outside the convertible range are saturated, and a
  // warning message may be issued.
  //
  CH0, CH1, CH2, CH3, CH4, CH5, CH6, CH7,

  // Digital signals for SPI interface
  //
  nCS, SCLK, DIN, DOUT,

  // Other digital signals
  //
  SSTRB, nSHDN
  );

  // Analog limits
  parameter supplyPositiveMillivolts = 5000;
  parameter supplyNegativeMillivolts = -5000;

  // Other timing parameters
  parameter paramPowerUpTimePicoseconds = 100_000_000;

  // Data sheet output delays
  parameter tDV    = 240_000;
  parameter tSSTRB = 240_000;
  parameter tDOmin =  10_000;
  parameter tDOmax = 240_000;
  parameter tSDV   = 240_000;

  // Data sheet timing requirements
  parameter tCP  = 500_000;  // max 2MHz
  parameter tCL  = 200_000;
  parameter tCH  = 200_000;
  parameter tCSS = 100_000;
  parameter tDS  = 100_000;

  // Quasi-analog inputs
  //
  input [31:0] CH0, CH1, CH2, CH3, CH4, CH5, CH6, CH7;

  // Digital I/O
  //
  input nCS, SCLK, DIN, nSHDN;
  output DOUT, SSTRB;

  // Internal variables

  reg [11:0] conversion;    // 12-bit sampled analog value
  integer ctrlBitCounter; // counts SCLK cycles as control value loaded
  reg dOut;
  reg sStrb;
  reg clkIsInternal;
  reg powerOK;
  reg pdMode;
  reg activeClock;
  reg converting;
  integer msgFiles[0:`MAX1202_MSG_COUNT-1];
  integer internalConvTimePicoseconds;
  reg [2:8] ctrlReg;   // 7-bit control word
  reg [11:0] convReg;  // 12-bit conversion data

  wire x_dOutOE, x_sStrbOE, x_dOut, x_sStrb;

  assign #(tDV)    x_sStrbOE = ~nCS | clkIsInternal;
  assign           x_sStrbOE = ~nCS | clkIsInternal;
  assign #(tSSTRB) x_sStrb = sStrb ^ clkIsInternal;
  assign           x_sStrb = sStrb ^ clkIsInternal;
  assign SSTRB = x_sStrbOE ? x_sStrb : 1'bz;

  assign #(tSDV)   x_dOutOE = ~nCS;
  assign           x_dOutOE = ~nCS;
  assign #(tDOmin) x_dOut = dOut;
  assign #(tDOmax) x_dOut = dOut;
  assign DOUT = x_dOutOE ? x_dOut & nSHDN : 1'bz;

  // Startup initialisation
  initial begin : startup
    // Set model parameters
    setInternalConvTimePicoseconds(7_000_000); // 7us
    setReporting(-1, 1); // all messages go to console
    powerOK = 0;
    powerOK <= #(paramPowerUpTimePicoseconds) 1;
    clkIsInternal = 1;
    activeClock = 0;
    ctrlBitCounter = 0;
    converting = 0;

    // Initialise outputs
    sStrb = 1;
    dOut = 0;
    convReg = 0;

    forever @(SCLK) begin
      case (SCLK)
        1'b0:    clockFall;
        1'b1:    clockRise;
        default: reportBadClock;
      endcase
    end

  end

  task clockRise;
    begin
      if (clkIsInternal && converting)
        reportClockDuringConversion;
      if (nCS == 0) begin // Take note.
        activeClock = 1;
        if (ctrlBitCounter <= 0) begin
          if (DIN) begin
            reportStartFromIdle;
            ctrlBitCounter = 1;
          end
        end else begin  // Already running
          ctrlBitCounter = ctrlBitCounter + 1;
          if (ctrlBitCounter <= 8) begin
            ctrlReg[ctrlBitCounter] = DIN;  // bits 2..8 are meaningful
          end else if (DIN && (ctrlBitCounter > 15)) begin  // Start while reading out
            ctrlBitCounter = 1;
          end else if (ctrlBitCounter > 20) begin
            ctrlBitCounter = 0;
          end
        end
      end
    end
  endtask

  task clockFall;
    if (activeClock) begin
      if (ctrlBitCounter == 8) begin
        startConversion;
      end else begin
        {dOut, convReg} = {convReg, 1'b0};
        if ((ctrlBitCounter == 9) && converting)
          reportReadBeforeReady;
      end
      activeClock = 0;
    end
  endtask

  task startConversion;
    // called at SCLK fall
    begin
      reportStartConversion;
      if (!powerOK)
        reportConvBeforePowerOK;
      pdMode = 0;
      case (pdBits(ctrlReg))
        0,1: pdMode = 1;
        2:   clkIsInternal = 1;
        3:   clkIsInternal = 0;
      endcase
      // Prepare conversion value
      conversion = getAnalogInput(ctrlReg);
      convReg = 12'bx;
      converting <= 1;
      sStrb <= 1;
      if (clkIsInternal) begin
        converting <= #(internalConvTimePicoseconds) 0;
        sStrb <= #(internalConvTimePicoseconds) 0;
      end else begin
        converting <= @(posedge SCLK) 0;
        sStrb <= @(negedge SCLK) 0;
      end
      convReg <= @(negedge converting) conversion;
    end
  endtask

  // Timing checks are implemented "by hand" rather than using
  // Verilog specify blocks, in order to support the message
  // control mechanism and parameterization of timing numbers.
  initial begin : timing_checks
    real lastDIN, lastCS, lastRise, lastFall, now;
    reg failCP, failCH, failCL;
    failCP = 0;
    failCH = 0;
    failCL = 0;
    lastRise = -tCP;
    lastFall = -tCP;
    fork
      forever @(DIN) lastDIN = $realtime;
      forever @(nCS) lastCS = $realtime;
      begin
        forever @(SCLK) begin
          now = $realtime;
          if (SCLK === 1'b1) begin
            if (now-lastDIN < tDS)
              reportFailDINSetup;
            if (now-lastCS < tCSS)
              reportFailCSSetup;
            if (now-lastRise < tCP) begin
              if (!failCP) reportShortClockPeriod;
              failCP = 1;
            end else begin
              failCP = 0;
            end
            if (now-lastFall < tCL) begin
              if (!failCL) reportShortClockLow;
              failCL = 1;
            end else begin
              failCL = 0;
            end
            lastRise = now;
          end
          if (SCLK === 1'b0) begin
            if (now-lastRise < tCH) begin
              if (!failCL) reportShortClockHigh;
              failCH = 1;
            end else begin
              failCH = 0;
            end
            lastFall = now;
          end
        end
      end
    join
  end

  task reportFailDINSetup;
    integer f;
    begin
      f = msgFiles[`MAX1202_MSG_TIMING_WARNING];
      if (f)
        $fdisplay(f, "[MAX1202_MSG_TIMING_WARNING] @%t", $realtime);
    end
  endtask

  task reportFailCSSetup;
    integer f;
    begin
      f = msgFiles[`MAX1202_MSG_TIMING_WARNING];
      if (f)
        $fdisplay(f, "[MAX1202_MSG_TIMING_WARNING] @%t", $realtime);
    end
  endtask

  task reportShortClockPeriod;
    integer f;
    begin
      f = msgFiles[`MAX1202_MSG_TIMING_WARNING];
      if (f)
        $fdisplay(f, "[MAX1202_MSG_TIMING_WARNING] @%t", $realtime);
    end
  endtask

  task reportShortClockLow;
    integer f;
    begin
      f = msgFiles[`MAX1202_MSG_TIMING_WARNING];
      if (f)
        $fdisplay(f, "[MAX1202_MSG_TIMING_WARNING] %m@%t", $realtime);
    end
  endtask

  task reportShortClockHigh;
    integer f;
    begin
      f = msgFiles[`MAX1202_MSG_TIMING_WARNING];
      if (f)
        $fdisplay(f, "[MAX1202_MSG_TIMING_WARNING] %m@%t", $realtime);
    end
  endtask

  task reportBadClock;
    integer f;
    begin
      f = msgFiles[`MAX1202_MSG_CONTROL_ERROR];
      if (f)
        $fdisplay(f, "[MAX1202_MSG_CONTROL_ERROR] %m@%t", $realtime);
    end
  endtask

  task reportClockDuringConversion;
    integer f;
    begin
      f = msgFiles[`MAX1202_MSG_CONTROL_WARNING];
      if (f)
        $fdisplay(f, "[MAX1202_MSG_CONTROL_WARNING] %m@%t", $realtime);
    end
  endtask

  task reportConvBeforePowerOK;
    integer f;
    begin
      f = msgFiles[`MAX1202_MSG_CONTROL_WARNING];
      if (f)
        $fdisplay(f, "[MAX1202_MSG_CONTROL_WARNING] %m@%t", $realtime);
    end
  endtask

  task reportReadBeforeReady;
    integer f;
    begin
      f = msgFiles[`MAX1202_MSG_CONTROL_WARNING];
      if (f)
        $fdisplay(f, "[MAX1202_MSG_CONTROL_WARNING] %m@%t", $realtime);
    end
  endtask

  task reportStartFromIdle;
    integer f;
    begin
      f = msgFiles[`MAX1202_MSG_CONTROL_INFO];
      if (f)
        $fdisplay(f, "[MAX1202_MSG_CONTROL_INFO] %m@%t", $realtime);
    end
  endtask

  task reportStartConversion;
    integer f;
    begin
      f = msgFiles[`MAX1202_MSG_CONTROL_INFO];
      if (f) begin
        $fdisplay(f,
           "[MAX1202_MSG_CONTROL_INFO] %m@%t: control = 8'b%b",
                                   $realtime, {1'b0, ctrlReg});
        if (differential(ctrlReg))
          $fdisplay(f,
             "                           CH%0d-CH%0d %s",
              posCh(ctrlReg), negCh(ctrlReg), bipolar(ctrlReg)? "BIPOLAR" : "UNIPOLAR");
        else
          $fdisplay(f,
             "                           CH%0d %s",
              posCh(ctrlReg), bipolar(ctrlReg)? "BIPOLAR" : "UNIPOLAR");
      end
    end
  endtask

  task setInternalConvTimePicoseconds;
    input time t;
      internalConvTimePicoseconds = t;
  endtask

  task setReporting;
    input integer which_messages;
    input integer channels;
    integer i;
    for (i=0; i<`MAX1202_MSG_COUNT; i=i+1)
      if (which_messages & (1<<i))
        msgFiles[i] = channels;
  endtask

  // Functions to extract information from the control register and inputs
  function differential;
    input [2:8] ctrlReg;
    differential = ~ctrlReg[6];
  endfunction
  function bipolar;
    input [2:8] ctrlReg;
    bipolar = ~ctrlReg[5];
  endfunction
  function [2:0] posCh;
    input [2:8] ctrlReg;
    posCh = {ctrlReg[3:4], ctrlReg[2]};
  endfunction
  function [2:0] negCh;
    input [2:8] ctrlReg;
    negCh = {ctrlReg[3:4], ~ctrlReg[2]};
  endfunction
  function [1:0] pdBits;
    input [2:8] ctrlReg;
    pdBits = ctrlReg[7:8];
  endfunction
  function integer readCh;
    input [2:0] ch;
    begin
      readCh = 32'bx;
      case (ch)
        0: readCh = CH0;
        1: readCh = CH1;
        2: readCh = CH2;
        3: readCh = CH3;
        4: readCh = CH4;
        5: readCh = CH5;
        6: readCh = CH6;
        7: readCh = CH7;
     endcase
   end
  endfunction
  function [11:0] getAnalogInput;
    input [2:8] ctrlReg;
    integer pos, neg, f, p, n, min, max, value;
    reg [11:0] result;
    reg clip;
    begin
      f = msgFiles[`MAX1202_MSG_ANALOG_WARNING];
      // Get inputs
      pos = readCh(posCh(ctrlReg));
      if (differential(ctrlReg))
        neg = readCh(negCh(ctrlReg));
      else
        neg = 0;
      p = pos;  // only for messages later!
      n = neg;
      // Clip to supply
      clip = 0;
      if (pos > supplyPositiveMillivolts) begin
        pos = supplyPositiveMillivolts;
        clip = 1;
      end else if (pos < supplyNegativeMillivolts) begin
        pos = supplyNegativeMillivolts;
        clip = 1;
      end
      if (neg > supplyPositiveMillivolts) begin
        neg = supplyPositiveMillivolts;
        clip = 1;
      end else if (neg < supplyNegativeMillivolts) begin
        neg = supplyNegativeMillivolts;
        clip = 1;
      end
      value = pos - neg;
      // Overrange check
      if (bipolar(ctrlReg)) begin
        max = 2047;
        min = -2048;
      end else begin
        max = 4096;
        min = 0;
      end
      if (value > max) begin
        value = max;
        clip = 1;
      end else if (value < min) begin
        value = min;
        clip = 1;
      end
      result = value;
      if (clip && f)
        $fdisplay(f, "[MAX1202_MSG_ANALOG_WARNING] %m@%t: +(%0dmV) -(%0dmV) = %0dmV",
                                                  $realtime,  p,       n,     p-n);
      f = msgFiles[`MAX1202_MSG_CONTROL_INFO];
      if (f)
        $fdisplay(f, "[MAX1202_MSG_CONTROL_INFO] %m@%t: analogData = %0dmV = 12'b%b",
                                                  $realtime,         value,  result);
      getAnalogInput = result;
    end
  endfunction

endmodule

//---------------------------------------------------------
// ERRATA IN MAXIM DATA SHEET
//
// There is an error in Figure 11a of the Rev.2 (5/98) edition
// of the Maxim data sheet.  The data on DOUT for Conversion
// Result 0 is displaced to the left by one SCLK cycle, so that
// its first bit (B11) is issued on the falling edge of clock
// number 8 instead of clock number 9.  Later in the same
// timing diagram, the data timing for Conversion Result 1
// is correct.
//
// Figure 11b is nonsense; it shows data being clocked out
// when there is no activity on SCLK.
//
//---------------------------------------------------------
// IMPLEMENTATION NOTES
//
// This model has been written in pure Verilog-1995 style
// to support its use with older simulators.
//
//---------------------------------------------------------
