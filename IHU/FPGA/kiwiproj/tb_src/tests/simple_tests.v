// file: simple_tests.v
//
// Crude self-checking test for HULOGIC2 FPGA.
//
// Revisions:
//   1.0  22-Feb-2010  Jonathan Bromley
//     Released for Issue 1
//   1.1  23-Feb-2010  Jonathan Bromley
//     Released for Issue 1A.  Minor improvements to error injector,
//     now uses backdoor memory access.  Random seed for error injector
//     can be changed from the command line using +SEED=12345

`timescale 1ns/1ns

module simple_tests;

  // Test harness instance
  //
  hulogic_harness TH();

  //========================================================================================
  // Test program
  //========================================================================================
  //
  integer seed;
  reg verbose;
  //
  initial begin : test
    integer i, spi_clock_divisor;
    time spi_start_time, spi_timeout;
    reg [7:0] data;
    integer SPI_chan;
    integer ADC_input;
    reg [11:0] ADC, expADC;
    reg busy;
    reg OK;

    //____________________________________________________________ Test setup

    if (!$value$plusargs("SEED=%d", seed))
      seed = 42;
    verbose = ($test$plusargs("VERBOSE") != 0);
    announce;
    // Allow autofetch to run for a while to check access to ROM
    #2000;

    // Configure minimum time interval between I/O accesses
    TH.setIOdelay(500);
    TH.setIACKdelay(1000);

    // Configure address ranges for no external READY and zero wait states
    TH.CPU.setAccessMode(TH.ECS0, 0, 0);
    TH.CPU.setAccessMode(TH.ECS1, 0, 0);
    TH.CPU.setAccessMode(TH.IOCS, 0, 2);
    TH.CPU.setAccessMode(TH.RDCS, 0, 1);

    // Suppress "info" messages from A/D converter models
    TH.ADC0.setReporting(8,0);
    TH.ADC1.setReporting(8,0);
    TH.ADC2.setReporting(8,0);
    TH.ADC3.setReporting(8,0);

    #1000;

    // ______________________________________________________________RAM access test

    // Write to a few memory locations using walking-1 and walking-0
    for (i=0; i<10; i=i+1) begin
      TH.writeMem(TH.ECS0, i, onehot(i));
      TH.writeMem(TH.ECS0, 100+i, ~onehot(i));
    end
    #1000
    // Read them back
    for (i=0; i<10; i=i+1) begin
      TH.readMem(TH.ECS0, i, data);
      checkData(data, onehot(i));
      TH.readMem(TH.ECS0, 100+i, data);
      checkData(data, ~onehot(i));
    end

    #1000;

    //_____________________________________________________________ Check SCC access
    // (visual check on waves, no auto test yet)

    for (i=0; i<=3; i=i+1)
      TH.writeIO(TH.IOCS, i, 8'hC0+onehot(i));
    for (i=0; i<=3; i=i+1)
      TH.readIO(TH.IOCS, i, data);

    #1000;

    repeat(3)
      TH.intAck(TH.INTA0, data);

    //__________________________________________________________ Check RAMDISK access
    // (visual check on waves, no auto test yet)

    // SCC write cycle for comparison
    TH.writeIO(TH.IOCS, 0, 8'h33);

    // Accesses to RAMDISK
    for (i=0; i<=3; i=i+1)
      TH.writeIO(TH.RDCS, i, 8'hA0+onehot(i));
    for (i=0; i<=3; i=i+1)
      TH.readIO(TH.RDCS, i, data);

    #1000;

    //__________________________________________________________________Test SPI

    // Set up appropriate SPI clock rate
    spi_clock_divisor = 5;
    TH.writeIO(TH.IOCS, 9, spi_clock_divisor);
    // Calculate maximum expected SPI transaction time: 21 SPI clock periods.
    spi_timeout = TH.PERIOD_Xin * 2 * (spi_clock_divisor * 42);
    // Read every input of every available A/D
    for (SPI_chan = 0; SPI_chan <= 3; SPI_chan = SPI_chan + 1) begin
      for (ADC_input = 0; ADC_input <= 7; ADC_input = ADC_input + 1) begin
        // Decide which A/D to read
        // Compute expected ADC value (all ADC inputs have been preset
        // to "interesting" values in the test harness)
        case (SPI_chan)  // choose SPI channel
          0: expADC = TH.ADC0.CH[ADC_input+1];
          1: expADC = TH.ADC1.CH[ADC_input+1];
          2: expADC = TH.ADC2.CH[ADC_input+1];
          3: expADC = TH.ADC3.CH[ADC_input+1];
        endcase
        // Launch the conversion
        TH.writeIO(TH.IOCS, 8, (SPI_chan<<3) | ADC_input );
        // Predict latest possible completion time
        spi_start_time = $time;
        // Poll for "conversion complete"
        busy = 1;
        while (busy) begin
          #1000;
          TH.readIO(TH.IOCS, 10, data);
          checkChannel (data[2:1], SPI_chan);
          busy = data[0];
          if (!busy && ($time - spi_start_time < 0.9 * spi_timeout)) begin
            $display("*F* SPI@%t: busy went false too soon", $time);
            fatal;
          end
          if (busy && ($time - spi_start_time > 1.1 * spi_timeout)) begin
            $display("*F* SPI@%t: busy held true for too long", $time);
            fatal;
          end
        end
        // Collect 12-bit data and check it
        ADC[3:0] = data[7:4];
        TH.readIO(TH.IOCS, 11, ADC[11:4]);
        checkADC(ADC, expADC);
      end
    end

    #1000;

    //_____________________________________________________ Test MUX output

    // Check for reset value
    checkMUX(2'b00);
    // Check we can write all other values
    for (i=3; i>=0; i=i-1) begin
      TH.writeIO(TH.IOCS, 4, i);
      checkMUX(i);
    end

    #1000;

    //___________________________________________________ Test error counter

    // Check counter was correctly reset (and wasn't incremented by valid reads)
    checkErrorCounter(0,0);
    checkErrorCounter(0,1);
    checkErrorCounter(0,0);
    // Force errors on every read from locations 0..10 and 100..110
    for (i=0; i<=9; i=i+1) begin
      injectEDACerror(0,     i,   -1, -1);       // corrupt just one bit
      injectEDACerror(0, 100+i, 'hFF, -2); // corrupt one block in each bit position
    end
    // Read back 14 locations - each one should give an error
    for (i=0; i<=6; i=i+1) begin
      TH.readMem(TH.ECS0, i, data);
      checkData(data, onehot(i));
      checkErrorCounter(2*i+1, 0);
      TH.readMem(TH.ECS0, 100+i, data);
      checkData(data, ~onehot(i));
      checkErrorCounter(2*i+2, 0);
    end
    // Read back some more locations - error count should saturate at 15
    repeat (3) begin
      TH.readMem(TH.ECS0, 7, data);
      checkData(data, onehot(7));
      checkErrorCounter(15, 0);
      checkErrorCounter(15, 0);
    end
    // Auto clear
    checkErrorCounter(15,1);
    checkErrorCounter(0,0);
    // Auto clear from a different value
    repeat (3) begin
      TH.readMem(TH.ECS0, 8, data);
      checkData(data, onehot(8));
    end
    checkErrorCounter(3,0);
    checkErrorCounter(3,1);
    checkErrorCounter(0,0);

    // TAF!
    #1000
    TH.stop = 1;
    reportPassFail;
  end

  //========================================================================================
  //------------------ Utility functions to support test program ---------------------------
  //========================================================================================

  // Pass/fail counters
  //
  integer passes, fails;
  initial begin
    passes = 0;
    fails = 0;
  end

  task announce;
    begin
      $display("\n==========================\n       START OF TEST");
      $display("*I* SEED = %0d, verbose mode = %b", seed, verbose);
      $display("==========================\n");
    end
  endtask

  task fatal;
    begin
      $display("==========================\nFATAL - test cannot proceed\n==========================\n");
      $stop;
    end
  endtask

  task reportPassFail;
  begin
    $display("\n==========================\n      END OF TEST\n==========================");

    if ((fails > 0) || (passes == 0)) begin
      $display("passes = %0d, FAILS = %0d", passes, fails);
    end else begin
      $display("passes = %0d, fails = %0d", passes, fails);
    end
    $display("==========================\n");
  end
  endtask

  function [7:0] onehot;
    input integer n;
    onehot = 1<<n;
  endfunction

  task checkErrorCounter;
    input [3:0] expected;
    input clear;
    reg aborted;
    reg [7:0] actual;
    begin
      TH.readIO(TH.IOCS, (clear? 13: 9), actual);
      if (actual !== expected) begin
        $display("*E* ERRCNT@%t: count='h%h, expected 'h0%h", $time, actual, expected);
        fails = fails + 1;
      end else begin
        if (verbose)
          $display("*N* %m PASS @%t: got 'h%h", $time, actual);
        passes = passes + 1;
      end
    end
  endtask

  task checkData;
    input [7:0] actual;
    input [7:0] expected;
    if (actual !== expected) begin
      $display("*E* Bad data @%t: got 'b%b, expected 'b%b", $time, actual, expected);
      fails = fails + 1;
    end else begin
      if (verbose)
        $display("*N* %m PASS @%t: got 'b%b", $time, actual);
      passes = passes + 1;
    end
  endtask

  task checkADC;
    input [11:0] actual;
    input [11:0] expected;
    if (actual !== expected) begin
      $display("*E* Bad ADC value @%t: got 'b%b, expected 'b%b", $time, actual, expected);
      fails = fails + 1;
    end else begin
      if (verbose)
        $display("*N* %m PASS @%t: got 'b%b=%0d", $time, actual, actual);
      passes = passes + 1;
    end
  endtask

  task checkChannel;
    input [1:0] actual;
    input [1:0] expected;
    if (actual !== expected) begin
      $display("*E* Bad SPI channel @%t: got 'b%b, expected 'b%b", $time, actual, expected);
      fails = fails + 1;
    end else begin
      if (verbose)
        $display("*N* %m PASS @%t: got 'b%b", $time, actual);
      passes = passes + 1;
    end
  endtask

  task checkMUX;
    input [1:0] expected;
    if (TH.MUX !== expected) begin
      $display("*E* Bad mux @%t: got 'b%b, expected 'b%b", $time, TH.MUX, expected);
      fails = fails + 1;
    end else begin
      if (verbose)
        $display("*N* %m PASS @%t: got 'b%b", $time, TH.MUX);
      passes = passes + 1;
    end
  endtask

  task injectEDACerror;  // Injects a correctable error
    input integer bank;
    input integer adrs;
    input integer mask;
    input integer block;
    integer i;
    reg [7:0] original [0:2];
    reg [7:0] modified [0:2];
    reg [7:0] data;
    reg [18:0] A;
    begin
      A = adrs;
      // Get the current values
      for (i=0; i<=2; i=i+1) begin
        original[i] = TH.getRAM(bank, i, A);
        modified[i] = original[i];
      end
      // Decide which bit(s) to trash - directed or random.
      // If mask>=0, the 8 LSBs of mask are a bit-map.
      // If mask=-1, a single randomly-chosen bit mask is created.
      // If mask=-2, a random 8-bit mask is created.
      // If block>=0, block%3 is trashed.
      // If block=-1, a single random block is trashed.
      // If block=-2, each bit in the mask is trashed in some random block.
      case (mask)
        -1: mask = 1 << $dist_uniform(seed, 0, 7);
        -2: mask = $dist_uniform(seed, 0, 'hFF);
        default: mask = mask & 'hFF;
      endcase
      if (block>=0)
        block=block%3;
      else if (block == -1)
        block = $dist_uniform(seed, 0, 2);
      if (block >= 0) begin
        // Read the memory and trash it
        modified[block] = original[block] ^ mask;
        TH.putRAM(bank, block, A, modified[block]);
      end else for (i=0; i<=7; i=i+1) begin
        block = $dist_uniform(seed, 0, 2);
        if (mask[i]) begin
          data = modified[block];
          data[i] = ~data[i];
          modified[block] = data;
        end
      end
      for (i=0; i<=2; i=i+1) begin
        TH.putRAM(bank, i, A, modified[i]);
      end
      if (verbose) begin
        $display("*N* %m @%t: bank=%0d, A='h%h, original 'b%b 'b%b 'b%b",
                       $time,     bank,      A, original[0], original[1], original[2]);
        $display("    %m @%t:                    modified   %s   %s   %s",
                       $time, changes(original[0], modified[0]),
                                  changes(original[1], modified[1]),
                                        changes(original[2], modified[2])  );
      end
    end
  endtask
  //
  function [63:0] changes;
    input [7:0] Old;
    input [7:0] New;
    integer i;
    reg [7:0] Char;
    begin
      for (i=7; i>=0; i=i-1) begin
        if (Old[i]==New[i])
          Char = "^";
        else
          case (New[i])
            1'b0: Char = "0";
            1'b1: Char = "1";
            1'bx: Char = "x";
            1'bz: Char = "z";
          endcase
        changes = (changes<<8) | Char;
      end
    end
  endfunction

endmodule
