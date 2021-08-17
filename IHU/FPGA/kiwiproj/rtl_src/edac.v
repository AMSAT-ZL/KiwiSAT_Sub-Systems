// file edac.v
//
// Combinational majority-voting error detection and correction logic
//
// revisions:
//   1.0  22-Feb-2010  Jonathan Bromley
//      release for Issue 1

`timescale 1ns/1ns

module edac (
   EDIA, EDIB, EDIC,
   DO,
   ERR_DET_C
   );
   parameter BITS=8;         // Number of bits in a data word
   input  [BITS-1:0] EDIA;   // Read data ...
   input  [BITS-1:0] EDIB;   //   ... from three RAM blocks ...
   input  [BITS-1:0] EDIC;   //     ... that have nominally identical data
   output [BITS-1:0] DO;     // Corrected data (independent majority vote on each bit)
   output       ERR_DET_C;   // Error indication (true if at least one bit had a mismatch)

   reg [BITS-1:0] DO;
   reg [BITS-1:0] error;

   always @(EDIA or EDIB or EDIC) begin: error_voter
     integer i;
     for (i=0; i<BITS; i = i + 1)
       case ({EDIA[i], EDIB[i], EDIC[i]})
         //---------------------------{ result , fail }
         //  All match, no error
         3'b000:  {DO[i], error[i]} = {  1'b0  , 1'b0 };
         3'b111:  {DO[i], error[i]} = {  1'b1  , 1'b0 };
         //---------------------------
         // Error, majority is 0
         3'b001,
         3'b010,
         3'b100:  {DO[i], error[i]} = {  1'b0  , 1'b1 };
         //---------------------------
         // Error, majority is 1
         3'b110,
         3'b101,
         3'b011:  {DO[i], error[i]} = {  1'b1  , 1'b1 };
         //---------------------------
         // Simulation-only, handle Xs
         default: {DO[i], error[i]} = {  1'bX  , 1'bX };
         //---------------------------{ result , fail }
       endcase
   end

   // Assert error output if any bit had an error
   assign ERR_DET_C = |error;

endmodule // edac
