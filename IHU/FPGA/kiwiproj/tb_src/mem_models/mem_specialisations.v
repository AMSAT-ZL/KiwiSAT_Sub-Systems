// Specialization of asyncMem for RAM and ROM devices used in HULOGIC

`timescale 1ns/1ns

// Specialization of asyncMem for Hitachi 512Kx8 SRAM HM628512CLFPI-7
//
module HM628512CLFPI7 (A, D, nOE, nWE, nCS);
  input  [18:0] A;
  inout  [7:0] D;
  input nOE, nWE, nCS;
  asyncMem #(
      19, // Abits
       8, // Dbits
      70, // tAVDV    Read access after address change
      70, // tSLDV    Read access after select
       0, // tSHDX    Read data hold time
      35, // tOLDX    Output enable delay
      25, // tOHDZ    Output disable delay
      30, // tDVWH    Write data setup time
       0, // tAVWL    Write address setup time
       5, // tWHAX    Address hold after end of write
       5, // tWHDX    Data hold after end of write
      50) // tWLWH    Minimum write enable time
    core (A, D, nOE, nWE, nCS);
  task put;
    input [18:0] adrs;
    input [7:0] data;
    core.put(adrs, data);
  endtask
  function [7:0] get;
    input [18:0] adrs;
    get = core.get(adrs);
  endfunction
endmodule


// Specialization of asyncMem for Atmel 256Kx8 EPROM AT27C020
//
module AT27C020 (A, D, nOE, nCS);
  input  [17:0] A;
  inout  [7:0] D;
  input nOE, nCS;
  asyncMem #(
      18, // Abits
       8, // Dbits           // CHECK THESE TIMINGS
      70, // tAVDV   Read access after address change
      70, // tSLDV   Read access after select
       0, // tSHDX   Read data hold time
       0, // tOLDX   Output enable delay
      25) // tOHDZ   Output disable delay
    core (A, D, nOE, 1'b1, nCS);
  task put;
    input [17:0] adrs;
    input [7:0] data;
    core.put(adrs, data);
  endtask
  function [7:0] get;
    input [17:0] adrs;
    get = core.get(adrs);
  endfunction
endmodule
