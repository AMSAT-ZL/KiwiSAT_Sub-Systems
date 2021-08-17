// file: harness.v
//
// Top-level test harness for HULOGIC2 FPGA.
//
// revisions:
//   1.0  22-Feb-2010  Jonathan Bromley
//     Released for Issue 1
//   1.1  23-Feb-2010  Jonathan Bromley
//     Fixes to support Icarus Verilog, various cleanups

// Uses behavioural models of CPU, ROM, RAM and ADCs.
// On its own this harness will do very little - it will
// initialise and start running, endlessly doing instruction
// fetches from ROM.  It is intended to be controlled from
// a testcase that instantiates it.
//
// Testcases should call methods in the behavioural models,
// particularly the CPU, to perform tests.  Some proxy methods
// have been provided here to make that simpler.
// See existing testcase files for examples.

`timescale 1ns/1ps

module hulogic_harness;

  // Crystal oscillator period
  parameter PERIOD_Xin = 67.817; // ns

  // Make convenient local names for the CPU's chip-select values
  integer ECS0, ECS1, IOCS, RDCS, XIOCS, INTA0;
  integer MEMdelay, IOdelay, IACKdelay;

  // Methods for use by tests
  //
  task setIOdelay;
    input integer delay;
    if (delay > 0)
      IOdelay = delay;
    else
      IOdelay = 0;
  endtask
  //
  task setMEMdelay;
    input integer delay;
    if (delay > 0)
      MEMdelay = delay;
    else
      MEMdelay = 0;
  endtask
  //
  task setIACKdelay;
    input integer delay;
    if (delay > 0)
      IACKdelay = delay;
    else
      IACKdelay = 0;
  endtask
  //
  task intAck;
    input integer cs;
    output [7:0] D;
    reg aborted;
    begin
      #(IACKdelay)
      CPU.intAck(cs, D, aborted);
      if (aborted) warnAbort;
    end
  endtask
  //
  task writeMem;
    input integer cs;
    input [19:0] A;
    input [7:0] D;
    reg aborted;
    reg [7:0] junk;
    begin
      #(MEMdelay)
      CPU.writeMem(cs, A, D, aborted);
      if (aborted) warnAbort;
    end
  endtask
  //
  task writeIO;
    input integer cs;
    input [19:0] A;
    input [7:0] D;
    reg aborted;
    reg [7:0] junk;
    begin
      #(IOdelay)
      CPU.writeIO(cs, A, D, aborted);
      if (aborted) warnAbort;
    end
  endtask
  //
  task readMem;
    input integer cs;
    input [19:0] A;
    output [7:0] D;
    reg aborted;
    begin
      #(MEMdelay)
      CPU.readMem(cs, A, D, aborted);
      if (aborted) warnAbort;
    end
  endtask
  //
  task readIO;
    input integer cs;
    input [19:0] A;
    output [7:0] D;
    reg aborted;
    reg [2:0] status;
    begin
      #(IOdelay)
      CPU.readIO(cs, A, D, aborted);
      if (aborted) warnAbort;
    end
  endtask
  //
  task warnAbort;
    $display("*W* %m.CPU@%t: bus cycle aborted by reset", $time);
  endtask

  // Back-door access to RAM
  function [7:0] getRAM;
    input integer bank;   // 0..1
    input integer which;  // 0..2
    input integer adrs;
    if (bank) begin
      // Access to bank 1.
      case (which)
        0: getRAM = U36.get(adrs);
        1: getRAM = U37.get(adrs);
        2: getRAM = U38.get(adrs);
        default: which = errBadBackdoor(which);
      endcase
    end else begin
      // Access to bank 0.
      case (which)
        0: getRAM = U33.get(adrs);
        1: getRAM = U34.get(adrs);
        2: getRAM = U35.get(adrs);
        default: which = errBadBackdoor(which);
      endcase
    end
  endfunction
  task putRAM;
    input integer bank;   // 0..1
    input integer which;  // 0..2, or -1 to write all three with the same data
    input integer adrs;
    input [7:0] data;
    if (bank) begin
      // Access to bank 1.
      case (which)
        0: U36.put(adrs, data);
        1: U37.put(adrs, data);
        2: U38.put(adrs, data);
        -1:
          begin
            U36.put(adrs, data);
            U37.put(adrs, data);
            U38.put(adrs, data);
          end
        default: which = errBadBackdoor(which);
      endcase
    end else begin
      // Access to bank 0.
      case (which)
        0: U33.put(adrs, data);
        1: U34.put(adrs, data);
        2: U35.put(adrs, data);
        -1:
          begin
            U33.put(adrs, data);
            U34.put(adrs, data);
            U35.put(adrs, data);
          end
        default: which = errBadBackdoor(which);
      endcase
    end
  endtask
  function errBadBackdoor;
    input integer which;
    begin
      $display("*E* %m@%t: bad backdoor access to RAM block %0d", $time, which);
      errBadBackdoor = 0;
    end
  endfunction


  //
  reg  nRESET;
  reg  Xin;
  wire cpuCLKOUT;
  wire [18:0] ADD;
  wire [7:0] DATA;
  wire [7:0] E0DATA;
  wire [7:0] E1DATA;
  wire [7:0] E2DATA;
  wire [19:16] MADD;
  wire ALE;
  wire nRD;
  wire nWR;
  wire nEWR;
  wire nERD;
  wire nBOOTCS;
  wire nIOCS;
  wire nIOCS2a;
  wire nRAMDISKCS;
  wire nECS0, nECS1;
  wire [7:0] nGCS;
  wire DTnR;
  wire [3:0] nSPICS;
  wire MOSI;
  wire SPICLK;
  wire [1:0] MUX;  // used by FEC encoder, not modelled here
  wire nSCCCS, nSCCRD, nSCCWR;  // used by 85230 SCC, not modelled here
  wire nTEST_pullup;
  wire [3:0] MISO;
  wire INT3, nINTACK;

  initial begin
    ECS0 = CPU.csLCS;   // EDAC RAM bank 0 is on LCS
    ECS1 = CPU.csGCS0;  // EDAC RAM bank 1 is on GCS0
    XIOCS= CPU.csGCS1;  // Non-FPGA I/O is on GCS1
    RDCS = CPU.csGCS2;  // RAMDISK control is on GCS2
    IOCS = CPU.csGCS3;  // I/O is on GCS3
    INTA0 = CPU.csINTA0; // nINTACK on INTA0
    setMEMdelay(0);
    setIOdelay(0);
    setIACKdelay(0);
  end

  // Clock generator, stop and reset control
  //
  reg stop;
  //
  initial begin
    stop = 0;
    $timeformat(-9, 0, "ns", 8);
  end
  //
  initial begin // 14.7456 MHz crystal
    Xin = 0;
    forever wait (stop !== 1'b1) while (stop !== 1'b1) begin
      Xin <= #(PERIOD_Xin/2) 1;
      #(PERIOD_Xin) Xin = 0;
    end
  end
  //
  initial begin
    nRESET = 1'b0;
    #500 nRESET = 1'b1;
  end

  // CPU pin connections
  //
  TN80C188EB CPU (
    .RESOUT(), .nRESIN(nRESET),
    .Xin(Xin), .CLKOUT(cpuCLKOUT),
    .nTEST(nTEST_pullup),
    .A({MADD[19:16], ADD[15:8]}),
    .AD(DATA),
    .ALE(ALE), .nRD(nRD), .nWR(),
    .READY(1'b1),
    .nS(),
    .HOLD(1'b0), .HLDA(),
    .nUCS(nBOOTCS), .nLCS(nECS0), .nGCS(nGCS),
    .DTnR(DTnR), .nDEN(),
    .nINTA({INT3, nINTACK})
  );

  pullup(nTEST_pullup);

  // Address latch
  assign ADD[18:16] = ALE ? MADD[18:16] : ADD[18:16];
  assign ADD[7:0]   = ALE ? DATA        : ADD[7:0]  ;

  // Memory controls
  assign nWR = ~DTnR;

  // Chip selects
  assign nECS1 = nGCS[0];
  assign nIOCS = nGCS[1];
  assign nIOCS2a = nGCS[3];
  assign nRAMDISKCS = ALE | nGCS[2];
  wire GND = 0;

  //wire nRESETw;
  //assign nRESETw = nRESET;
  hulogic_fpga FPGA (
    .xnRESET (nRESET),
    .xA      (ADD[3:0]),
    .xWRCLK  (nWR),
    .xnWR    (nWR),
    .xnRD    (nRD),
    .xnIOCS  (nIOCS2a),
    .xnECS   ({nECS1, nECS0}),
    .xD      (DATA),
    .xE0D    (E0DATA),
    .xE1D    (E1DATA),
    .xE2D    (E2DATA),
    .xnEWR   (nEWR),
    .xnERD   (nERD),
    .xnSCCCS (nSCCCS),
    .xnSCCRD (nSCCRD),
    .xnSCCWR (nSCCWR),
    .xMUX    (MUX),
    .xMISO   (MISO),
    .xCLK7M  (cpuCLKOUT),
    .xSPICLK (SPICLK),
    .xMOSI   (MOSI),
    .xnSPICS (nSPICS),
    .unusedADD0(ADD[0]),
    .unusednWR(nWR),
    .unusedGND(GND)
  );


  // Boot ROM - bidi IO buffer not modelled, RST_FF counter not modelled
  //
  AT27C020 U7 (.A({1'b0, ADD[16:0]}), .D(DATA), .nOE(nRD), .nCS(nBOOTCS));

  // Triple-redundant read/write memory
  //
  HM628512CLFPI7 U33 (.A(ADD), .D(E0DATA), .nOE(nERD), .nWE(nEWR), .nCS(nECS0));
  HM628512CLFPI7 U36 (.A(ADD), .D(E0DATA), .nOE(nERD), .nWE(nEWR), .nCS(nECS1));
  //
  HM628512CLFPI7 U34 (.A(ADD), .D(E1DATA), .nOE(nERD), .nWE(nEWR), .nCS(nECS0));
  HM628512CLFPI7 U37 (.A(ADD), .D(E1DATA), .nOE(nERD), .nWE(nEWR), .nCS(nECS1));
  //
  HM628512CLFPI7 U35 (.A(ADD), .D(E2DATA), .nOE(nERD), .nWE(nEWR), .nCS(nECS0));
  HM628512CLFPI7 U38 (.A(ADD), .D(E2DATA), .nOE(nERD), .nWE(nEWR), .nCS(nECS1));

  // Four A/D converter modules.  Since we don't care about the SEL input,
  // we simply float it so that only the first converter in each
  // module is in use (channels 1-8).
  //
  adc_module ADC0(.SCLK(SPICLK), .MOSI(MOSI), .nCS(nSPICS[0]), .MISO(MISO[0]), .SEL());
  adc_module ADC1(.SCLK(SPICLK), .MOSI(MOSI), .nCS(nSPICS[1]), .MISO(MISO[1]), .SEL());
  adc_module ADC2(.SCLK(SPICLK), .MOSI(MOSI), .nCS(nSPICS[2]), .MISO(MISO[2]), .SEL());
  adc_module ADC3(.SCLK(SPICLK), .MOSI(MOSI), .nCS(nSPICS[3]), .MISO(MISO[3]), .SEL());

  // Plant interesting dummy analog values into the A/D inputs.
  initial begin : initializeAnalogValues
    integer i;
    for (i=1; i<=16; i=i+1) begin
      ADC0.CH[i] = 11*i;
      ADC1.CH[i] = 11*i + 1000;
      ADC2.CH[i] = 11*i + 2000;
      ADC3.CH[i] = 11*i + 3000;
    end
  end

endmodule
