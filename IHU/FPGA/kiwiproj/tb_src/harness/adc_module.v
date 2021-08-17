// adc_mod.v
//
// KIWISAT ADC module
// Follows ADC Module rev 1.0 schematic dated 12/01/09.

`timescale 1ns/1ns

module adc_module (SCLK, MOSI, MISO, nCS, SEL);

  // Digital I/O at connector J136
  //
  input SCLK, MOSI, nCS, SEL;
  output MISO;

  // The analog channels are not represented as ports,
  // because they will always be set programmatically
  // from test code; so, for simplicity, they are a
  // simple array of values here.  They appear on
  // connectors J133 (CH1-CH8) and J132 (CH9-CH16).
  //
  integer CH[1:16];

  // Convenience method to configure reporting in both MAX1202 instances
  task setReporting;
    input integer which_messages;
    input integer channels;
    begin
      ADC_U131.setReporting(which_messages, channels);
      ADC_U133.setReporting(which_messages, channels);
    end
  endtask

  // Selection: SEL=1 (default) selects 1:8; SEL=0 selects 9:16
  //
  wire nCS1 =  SEL ? nCS : 1'b1;
  wire nCS9 = ~SEL ? nCS : 1'b1;
  pullup(SEL);

  max1202 ADC_U131 (
    .CH0(CH[1]),
    .CH1(CH[2]),
    .CH2(CH[3]),
    .CH3(CH[4]),
    .CH4(CH[5]),
    .CH5(CH[6]),
    .CH6(CH[7]),
    .CH7(CH[8]),
    .nCS (nCS1),
    .SCLK(SCLK),
    .DIN (MOSI),
    .DOUT(MISO),
    .SSTRB(),
    .nSHDN(1'b1)
  );

  max1202 ADC_U133 (
    .CH0(CH[9]),
    .CH1(CH[10]),
    .CH2(CH[11]),
    .CH3(CH[12]),
    .CH4(CH[13]),
    .CH5(CH[14]),
    .CH6(CH[15]),
    .CH7(CH[16]),
    .nCS (nCS9),
    .SCLK(SCLK),
    .DIN (MOSI),
    .DOUT(MISO),
    .SSTRB(),
    .nSHDN(1'b1)
  );

endmodule
