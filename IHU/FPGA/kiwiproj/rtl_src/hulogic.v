// file hulogic.v
//
// Top level design for HULOGIC, not including I/O ports and buffers.
//
// revisions:
//   1.0  22-Feb-2010  Jonathan Bromley
//      release for Issue 1
//   1.1  23-Feb-2010  Jonathan Bromley
//      improved write cycle timing, release for Issue 1A

`timescale 1ns/1ns

module hulogic (
    nRESET,
    A,
    WRCLK,
    nWR,
    nRD,
    nIOCS,
    nECS,
    D_in,
    E0D_in,
    E1D_in,
    E2D_in,
    D_out,
    E0D_out,
    E1D_out,
    E2D_out,
    driveED,
    driveD,
    nEWR,
    nERD,
    nSCCCS,
    nSCCRD,
    nSCCWR,
    MUX,
    MISO,
    CLK7M,
    SPICLK,
    MOSI,
    nSPICS
  );

  input         nRESET;
  input         CLK7M;

  input   [3:0] A;
  input         WRCLK;
  input         nWR;
  input         nRD;
  input         nIOCS;

  // ERR. data interface
  input   [1:0] nECS;
  input   [7:0] D_in;
  input   [7:0] E0D_in;
  input   [7:0] E1D_in;
  input   [7:0] E2D_in;
  output  [7:0] D_out; reg [7:0] D_out;
  output  [7:0] E0D_out;
  output  [7:0] E1D_out;
  output  [7:0] E2D_out;
  output        driveED;
  output        driveD;

  output       nEWR;  reg  nEWR;
  output       nERD;

  output       nSCCCS;
  output       nSCCRD;
  output       nSCCWR;

  output [1:0] MUX; reg [1:0] MUX;

  // SPI interface
  input  [3:0] MISO;
  output       SPICLK;
  output       MOSI;
  output [3:0] nSPICS;

  //_______________________________________________________________________
  //                                                       Internal signals
  //
  parameter ERROR_COUNT_BITS = 4;
  wire [ERROR_COUNT_BITS-1:0] ERROR_COUNT;
  wire ERR_DET_C;
  wire [7:0] EDO;  // Corrected data
  reg [1:0] accessTimer;
  reg writeIO;
  wire [7:0] SPI_DH;
  wire [7:0] SPI_DL;
  wire [7:0] SPI_DC;


  //_______________________________________________________________________
  //                                                     Access delay logic
  //
  always @(negedge CLK7M)
    if (~nIOCS | ~nECS[0] | ~nECS[1]) // It's an access
      case (accessTimer)
        2'b00: accessTimer <= 2'b01;
        2'b01: accessTimer <= 2'b11;
        2'b11: accessTimer <= 2'b10;
      endcase
    else
      accessTimer <= 2'b00;
  always @(posedge CLK7M)
    writeIO <= accessTimer[0] & ~nWR & ~nIOCS;

  //_______________________________________________________________________
  //                                                             SCC access
  //
  assign nSCCCS= ~(~nIOCS & ~A[2] & ~A[3] & (accessTimer != 0)); // 4'b00xx (0..3)
  assign nSCCRD= ~(~nRESET | ~nRD);
  assign nSCCWR= ~(~nRESET | writeIO);

  //_______________________________________________________________________
  //                                             MUX general-purpose output

   always @(posedge CLK7M or negedge nRESET) begin
     if (nRESET == 1'b0)
       MUX <= 2'b00;
     else if (writeIO & A[2] & ~A[3])  // 4'b01xx = 4..7
       MUX <= D_in[1:0];
   end

  //_______________________________________________________________________
  //                                                 EDAC logic and counter

  // Error detection/correction logic
  //
  edac #(8) edac8m_0 (
    .EDIA     (E0D_in),   //<
    .EDIB     (E1D_in),   //<
    .EDIC     (E2D_in),   //<
    .DO       (EDO),      //>
    .ERR_DET_C(ERR_DET_C) //>
  );

  // Readable error counter
  //
  error_counter #(ERROR_COUNT_BITS) err_cnt (
    .CLK(CLK7M),
    .nRESET(nRESET),
    .ERR_DET_C(ERR_DET_C),
    .accessMem(~nECS[0] | ~nECS[1]),
    .accessCount(~nIOCS & A[3] & ~A[1] & A[0]),
    .clearOnRead(A[2]),
    .nRD(nRD),
    .ERROR_COUNT(ERROR_COUNT)
  );

  //_______________________________________________________________________
  //                                                          EDAC datapath

  // Write data path
  assign E0D_out =  D_in;
  assign E1D_out =  D_in;
  assign E2D_out =  D_in;

  // Write datapath enables and EDAC memory write strobe timing
  //
  assign driveED     =  ~nWR;
  always @(posedge CLK7M)
    nEWR <= ~((~nECS[0] | ~nECS[1]) & accessTimer[0] & ~nWR);

  // Read data path enables
  assign nERD   =  nRD;
  assign driveD = ~nRD & ((~nECS[0] | ~nECS[1]) | (~nIOCS & A[3]));

  //_______________________________________________________________________
  //                                                         SPI controller

  spi_controller spi (
    // System signals
    .CLK(CLK7M),       // System clock at 7.4MHz (CPU CLKOUT)
    .nRESET(nRESET),   // Asynch active-low reset

    // SPI interface
    .MOSI(MOSI),       // Serial data out to SPI
    .MISO(MISO),       // Serial data inputs from SPI
    .SCLK(SPICLK),     // SPI Serial clock out
    .nSPICS(nSPICS),   // Selects (enables) for SPI

    // Control interface
    .DWE(writeIO & A[3] & ~A[0]),  // Data write enable
    .CWE(writeIO & A[3] & A[0]),   // Control write enable
    .WD(D_in),       // Write data, synchronous with CLK (8 bits)
    .RDC(),          // Read data back to CPU (clock control reg) NOT USED
    .RDL(SPI_DL),    // Read data back to CPU (LS byte)
    .RDH(SPI_DH)     // Read data back to CPU (MS byte)
  );

  //_______________________________________________________________________
  //                                                Readback data selection

  always @(nIOCS or A[1:0] or EDO or SPI_DL or SPI_DH or ERROR_COUNT)
  begin : readbackMux
    reg [1:0] choice;
    choice = (nIOCS != 1'b0) ? 2'b00 : A[1:0];
    case (choice)
      2'b00:   D_out = EDO;
      2'b01:   D_out = ERROR_COUNT;
      2'b10:   D_out = SPI_DL;
      2'b11:   D_out = SPI_DH;
      default: D_out = 8'bx;  // avoid latches
    endcase
  end

endmodule
