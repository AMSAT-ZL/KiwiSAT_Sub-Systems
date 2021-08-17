// file spi_ctlr.v
//
// SPI controller dedicated to work with MAX1202 devices
//
// revisions:
//   1.0  22-Feb-2010  Jonathan Bromley
//      release for Issue 1

`timescale 1ns/1ns

module spi_controller (
  // System signals
  CLK,      // System clock at 7.4MHz (CPU CLKOUT)
  nRESET,   // Asynch active-low reset

  // SPI interface
  MOSI,     // Serial data out to SPI
  MISO,     // Serial data in from SPI
  SCLK,     // SPI Serial clock out
  nSPICS,   // Select (enable) for SPI

  // Control interface
  DWE,      // Data write enable, active for 1 cycle of CLK, initiates sending
  CWE,      // Control write enable, active for 1 cycle of CLK
  WD,       // Write data, synchronous with CLK (8 bits)
  RDH,      // Read data, high byte
  RDL,      // Read data, low byte (includes status)
  RDC);     // Read data, contents of clock control register

  // These parameters are the values of mode control bits applied to
  // the ADC when a convert command is sent.  See pages 12-13 of MAX1202 data sheet.
  parameter
    MAX1202_UNIPOLAR = 1'b1,      // 1=unipolar, 0=bipolar
    MAX1202_SINGLE_ENDED = 1'b1,  // 1=single-ended (8 inputs), 0=differential (4 input pairs)
    MAX1202_MODE = 2'b11;         // 00=full power down, 01=fast PD, 10=internal clk, 11=ext clk

  input  CLK;
  input  nRESET;
  output MOSI;
  input  [3:0] MISO;
  output SCLK;
  output [3:0] nSPICS;
  input  DWE;
  input  CWE;
  input  [7:0] WD;
  output [7:0] RDH;
  output [7:0] RDL;
  output [7:0] RDC;

  reg SCLK;
  reg [3:0] nSPICS;

  // Internal registers
  reg busy;
  reg [1:0] activeChannel;
  reg [3:0] clockLength;
  reg [11:0] SR;
  reg sample;
  reg sampledMISO;

  // Construct output values from internal regs
  assign {RDH, RDL} = {SR, 1'b0, activeChannel, busy};
  assign RDC = {4'b0, clockLength};


  // Writing to clock control register __________________________________
  //
  always @(posedge CLK or negedge nRESET) begin
    if (nRESET == 1'b0) begin
      clockLength <= 0;
    end else if (CWE) begin
      clockLength <= WD[3:0];
    end
  end
  //_____________________________________________________________________




  // Input mux, synchronizer and deglitch filter ________________________
  //
  reg [1:0] syncMISO;
  reg stableMISO;
  //
  always @(posedge CLK) begin
    syncMISO[1:0] <= {syncMISO[0], MISO[activeChannel]};
    case (syncMISO)
      2'b00, 2'b11:
        // MISO is stable.  Capture it for possible future use...
        begin
          stableMISO <= syncMISO[1];
          // and if we need the value immediately, use it (permits
          // operation with clock divisor >= 3 in noise-free environment)
          if (sample)
            sampledMISO <= syncMISO[1];
        end
      default:
        // MISO is unstable.  If we need the value for shifting,
        // use the most recent stable value.
        begin
          if (sample)
            sampledMISO <= stableMISO;
        end
    endcase
  end
  // ____________________________________________________________________



  // Main SPI logic _____________________________________________________
  //
  reg [3:0] clockTimer;
  reg [4:0] shiftCount;
  //
  always @(posedge CLK or negedge nRESET) begin
    if (nRESET == 1'b0) begin
      nSPICS <= 4'b1111;
      SR <= 0;
      SCLK <= 0;
      activeChannel <= 0;
      busy <= 0;
      shiftCount <= 0;
      clockTimer <= 0;
      sample <= 0;
    end else begin
      // Ensure sample is one pulse wide
      sample <= 0;
      // Just keep timing regardless.
      clockTimer <= clockTimer - 1;
      shiftCount <= shiftCount + sample;
      if (busy) begin // Cycle is running.
        if (clockTimer == 1) begin
          clockTimer <= clockLength;
          if (SCLK == 0) begin
            // Halfway through a bit time.
            // Assert SCLK and set up for input sampling 1 clock later.
            SCLK <= 1;
            sample <= 1;
          end else begin
            // It's the end of a bit time.
            // Drop SCLK:
            SCLK <= 0;
            // Shift out the next bit of data:
            SR <= {SR[10:0], sampledMISO};
            // If all 12 bits of response have been collected, we're done.
            if (shiftCount[4:2] == 3'b011) // we hit 12
              busy <= 0;
          end
        end
      end else begin // Not busy.  Idle, and accept updates.
        nSPICS <= 4'b1111;
        SCLK <= 0;
        if (DWE) begin
          // This starts stuff going.  Note the bizarre bit ordering of the channel number.
          SR <= {1'b1, WD[0], WD[2:1], MAX1202_UNIPOLAR, MAX1202_SINGLE_ENDED, MAX1202_MODE, 4'b0};
          activeChannel <= WD[4:3];
          nSPICS[WD[4:3]] <= 0;
          busy <= 1;
          shiftCount <= -9;
          clockTimer <= clockLength;
        end
      end
    end
  end // SPI_logic
  // Generate MOSI output.  Force to zero during readback (shiftCount>=0).
  assign MOSI = SR[11] & shiftCount[4];

endmodule
