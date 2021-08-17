// Generic asynchronous static memory model - can be used as ROM or RAM

`timescale 1ns/1ns

module asyncMem (A, D, nOE, nWE, nCS);
  parameter Abits = 8, Dbits = 4;
  parameter
    tAVDV = 10,   // Read access after address change
    tSLDV = 10,   // Read access after select
    tSHDX = 1,    // Read data hold time
    tOLDX = 10,   // Output enable delay
    tOHDZ = 10,   // Output disable delay
    tDVWH = 5,    // Write data setup time
    tAVWL = 5,    // Write address setup time
    tWHAX = 5,    // Address hold after end of write
    tWHDX = 5,    // Data hold after end of write
    tWLWH = 20;   // Minimum write enable time

  input  [Abits-1:0] A;
  inout  [Dbits-1:0] D;
  input nOE, nWE, nCS;

  reg [Dbits-1:0] mem [0:(1<<Abits)-1];
  reg [Abits-1:0] oldA;
  reg changeA;
  time tChangeA, tChangeD, tStartW, tEndW;

  wire #(tOLDX, tOHDZ) readEn = !nOE && !nCS && nWE;
  wire writeEn = !nWE && !nCS;
  wire #(0, tWHAX) writeEnLate = writeEn;

  wor badRD;
  assign #(0, tAVDV)     badRD = changeA;
  assign #(tSHDX, tSLDV) badRD = nCS;
  wire [Dbits-1:0] DR = badRD ? {Dbits{1'bx}} : mem[A];

  assign D = readEn ? DR : {Dbits{1'bz}};

  task put;
    input [Abits-1:0] adrs;
    input [Dbits-1:0] data;
    mem[adrs] = data;
  endtask
  function [Dbits-1:0] get;
    input [Abits-1:0] adrs;
    get = mem[adrs];
  endfunction

  initial begin
    tChangeA = 0;
    tChangeD = 0;
    tStartW = 0;
    tEndW = 0;
    changeA = 0;
  end

  always @(writeEn) begin
    if (writeEn) begin
      tStartW = $time;
      if ($time < tChangeA+tAVWL)
        $display("*W* %m @ %t: write address setup time %t < tAVWL=%t",
                        $time,                 $time-tChangeA, tAVWL);
    end else if ($time > 0) begin
      tEndW = $time;
      mem[A] = D;
      // $display("*N* %m @ %t: commit write mem['h%h] = 'h%h", $time, A, D);
      if ($time < tChangeD+tDVWH)
        $display("*W* %m @ %t: write data setup time %t < tDVWH=%t",
                        $time,             $time-tChangeD, tDVWH);
      if ($time < tStartW+tWLWH)
        $display("*W* %m @ %t: write enable duration %t < tWLWH=%t",
                        $time,           $time-tStartW, tDVWH);
    end
  end

  always @(A) begin
    if (($time > 0) && (($time - tEndW) < tWHAX))
      $display("*W* %m @ %t: write address hold violation %t < tWHAX=%t",
                      $time,                   $time - tEndW,     tWHAX);
    oldA <= A;
    tChangeA = $time;
    changeA = 1;
    changeA <= 0;
  end

  always @(posedge changeA) begin
    if (writeEnLate) begin
      mem[oldA] = {Dbits{1'bx}};
      $display("*W* %m @ %t: location 'h%h trashed by address change during write",
                       $time,        oldA);
    end
  end

  always @(D) begin
    if (($time > 0) && (($time - tEndW) < tWHDX))
      $display("*W* %m @ %t: write data hold violation %t < tWHDX=%t",
                      $time,                $time - tEndW,     tWHDX);
    tChangeD = $time;
  end

endmodule
