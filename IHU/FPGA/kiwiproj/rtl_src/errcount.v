// file errcount.v
//
// EDAC error counter for HULOGIC2
//
// revisions:
//   1.0  22-Feb-2010  Jonathan Bromley
//      release for Issue 1

`timescale 1ns/1ns

module error_counter (
  CLK,
  nRESET,
  ERR_DET_C,
  accessMem,
  accessCount,
  clearOnRead,
  nRD,
  ERROR_COUNT
  );
  parameter COUNT_WIDTH = 8; // Number of bits in the counter
  input        CLK;
  input        nRESET;
  input        ERR_DET_C;    // Combinational error-detect
  input        accessMem;    // EDAC RAM is being accessed
  input        accessCount;  // The counter is being accessed (read only)
  input        clearOnRead;  // optional - do we clear counter after read?
  input        nRD;          // usual read strobe signal

  output [COUNT_WIDTH-1:0] ERROR_COUNT; reg [COUNT_WIDTH-1:0] ERROR_COUNT;

  reg error_incr;
  reg old_reading;
  wire reading;
  assign reading = (accessMem | accessCount) & !nRD;

  // Track error detector on falling edges of CLK.
  // This block also includes logic to saturate the counter at max-count.
  //
  always @(negedge CLK or negedge nRESET)
    if (nRESET == 1'b0)
      error_incr <= 0;
    else if (ERROR_COUNT == {COUNT_WIDTH{1'b1}})
      error_incr <= 0;
    else if (nRD == 1'b0)
      error_incr <= ERR_DET_C;

  // Always update the counter just after the end of a read operation
  //
  always @(posedge CLK or negedge nRESET)
    if (nRESET == 0) begin
      old_reading <= 0;
      ERROR_COUNT <= 0;
    end else begin
      old_reading <= reading;
      if (old_reading & !reading)
        if (accessMem)
          ERROR_COUNT <= ERROR_COUNT + error_incr;
        else if (clearOnRead)
          ERROR_COUNT <= 0;
    end

endmodule

