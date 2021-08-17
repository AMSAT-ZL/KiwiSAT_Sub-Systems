// file hu_fpga.v
//
// Top-level design file for the HULOGIC FPGA.
// This file maps ports on the top-level design 'hulogic'
// to I/O pads on the device boundary, including implementation
// of all required 3-state buffers using continuous assignment.
// Pin numbers and pad types are not allocated here; see instead
// the Synplicity constraints file hu_fpga.sc for
// pin numbering and I/O pad types.
//
// revisions:
//   1.0  22-Feb-2010  Jonathan Bromley
//      release for Issue 1

`timescale 1ns/1ns

module hulogic_fpga (
   xnRESET,
   xA,
   xWRCLK,
   xnWR,
   xnRD,
   xnIOCS,
   xnECS,
   xD,
   xE0D,
   xE1D,
   xE2D,
   xnEWR,
   xnERD,
   xnSCCCS,
   xnSCCRD,
   xnSCCWR,
   xMUX,
   xMISO,
   xCLK7M,
   xSPICLK,
   xMOSI,
   xnSPICS,
   unusedADD0,
   unusednWR,
   unusedGND
);

  // Uncommitted pads set up as inputs so they are not driven
  input unusedADD0, unusednWR, unusedGND;

  // Global clock and reset
  input        xCLK7M;
  input        xnRESET;

  // Bus control
  input  [3:0] xA;
  input        xWRCLK;
  input        xnWR;
  input        xnRD;
  input        xnIOCS;

  // ERR. data interface
  input  [1:0] xnECS;
  inout  [7:0] xD;
  inout  [7:0] xE0D;
  inout  [7:0] xE1D;
  inout  [7:0] xE2D;
  output       xnEWR;
  output       xnERD;

  // SCC signals
  output       xnSCCCS;
  output       xnSCCRD;
  output       xnSCCWR;

  // Misc.
  output [1:0] xMUX;

  // SPI interface
  input [3:0]  xMISO;
  output       xSPICLK;
  output       xMOSI;
  output [3:0] xnSPICS;

  // For the sake of consistency we have provided internal signals for
  // every connection to the main design instance.  In truth this
  // is unnecessarily fussy, but it helps to make clear what this
  // top-level module is doing.
  //
  wire       nRESET;
  wire [3:0] A;
  wire       WRCLK;
  wire       nWR;
  wire       nRD;
  wire       nIOCS;
  wire [1:0] nECS;
  wire [7:0] D_in;
  wire [7:0] E0D_in;
  wire [7:0] E1D_in;
  wire [7:0] E2D_in;
  wire [7:0] D_out;
  wire       driveD;
  wire [7:0] E0D_out;
  wire [7:0] E1D_out;
  wire [7:0] E2D_out;
  wire       driveED;
  wire       nEWR;
  wire       nERD;
  wire       nSCCCS;
  wire       nSCCRD;
  wire       nSCCWR;
  wire [1:0] MUX;
  wire [3:0] MISO;
  wire       CLK7M;
  wire       SPICLK;
  wire       MOSI;
  wire [3:0] nSPICS;


  // INPUT PADS
  //
  assign nRESET = xnRESET;
  assign A = xA;
  assign WRCLK = xWRCLK;
  assign nWR = xnWR;
  assign nRD = xnRD;
  assign nIOCS = xnIOCS;
  assign nECS = xnECS;
  assign MISO = xMISO;
  assign CLK7M = xCLK7M;

  // OUTPUT PADS
  //
  assign xnEWR = nEWR;
  assign xnERD = nERD;
  assign xnSCCCS = nSCCCS;
  assign xnSCCRD = nSCCRD;
  assign xnSCCWR = nSCCWR;
  assign xMUX = MUX;
  assign xSPICLK = SPICLK;
  assign xMOSI = MOSI;
  assign xnSPICS = nSPICS;

  // BIDIRECTIONAL PADS
  //
  assign xD = driveD? D_out : 8'bz;
  assign D_in = xD;
  //
  assign xE0D = driveED? E0D_out: 8'bz;
  assign E0D_in = xE0D;
  //
  assign xE1D = driveED? E1D_out: 8'bz;
  assign E1D_in = xE1D;
  //
  assign xE2D = driveED? E2D_out: 8'bz;
  assign E2D_in = xE2D;

  // Top-level design instance
  //
  hulogic hulogic_top (
     .CLK7M   (CLK7M),   //<
     .nRESET  (nRESET),  //<

     .A       (A),       //<

     .WRCLK   (WRCLK),   //<
     .nWR     (nWR),     //<
     .nRD     (nRD),     //<
     .nIOCS   (nIOCS),   //<

     // ERR. data interface
     .nECS    (nECS),    //<
     .D_in    (D_in),    //<
     .E0D_in  (E0D_in),  //<
     .E1D_in  (E1D_in),  //<
     .E2D_in  (E2D_in),  //<
     .D_out   (D_out),   //>
     .E0D_out (E0D_out), //>
     .E1D_out (E1D_out), //>
     .E2D_out (E2D_out), //>
     .driveED (driveED), //>
     .driveD  (driveD),  //>

     .nEWR    (nEWR),    //>
     .nERD    (nERD),    //>

     .nSCCCS  (nSCCCS),  //>
     .nSCCRD  (nSCCRD),  //>
     .nSCCWR  (nSCCWR),  //>

     .MUX     (MUX),     //>

     .MISO    (MISO),    //<
     .SPICLK  (SPICLK),  //>
     .MOSI    (MOSI),    //>
     .nSPICS  (nSPICS)   //>
     );

endmodule
