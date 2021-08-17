# file hu_fpga.sc
#
# HULOGIC FPGA pinout for use with Synplify-Lite synthesis
#
# revisions:
#   2.0  16-June-2010  Jonathan Bromley
#     release for Issue 2, fix pinouts IO10/IO11

#_________________________________________________________________________
#                                                              UNUSED PINS
# These pins are unused and must be configured as inputs.
# We choose to free-up the hi-drive pads because our design
# is limited by hi-drive net resource in the 8x12 FPGA.
#
portprop unusedADD0 ql_placement = "io16", ql_padtype = "INCELL";
portprop unusednWR  ql_placement = "io50", ql_padtype = "INCELL";
portprop unusedGND  ql_placement = "io12", ql_padtype = "INPUT";
portprop xWRCLK     ql_placement = "io51", ql_padtype = "CLOCK";

#_________________________________________________________________________
#                                                          CLOCK AND RESET
#
portprop xCLK7M     ql_placement = "io17", ql_padtype = "CLOCK";
portprop xnRESET    ql_placement = "io26";

#_________________________________________________________________________
#                                                         ADDRESS FROM CPU
#
portprop xA[0]      ql_placement = "io11";
portprop xA[1]      ql_placement = "io19", ql_padtype = "INCELL";
portprop xA[2]      ql_placement = "io20", ql_padtype = "INCELL";
portprop xA[3]      ql_placement = "io54", ql_padtype = "INCELL";

#_________________________________________________________________________
#                                                         DATA TO/FROM CPU
#
portprop xD[0]      ql_placement = "io27";
portprop xD[1]      ql_placement = "io28";
portprop xD[2]      ql_placement = "io29";
portprop xD[3]      ql_placement = "io30";
portprop xD[4]      ql_placement = "io31";
portprop xD[5]      ql_placement = "io32";
portprop xD[6]      ql_placement = "io33";
portprop xD[7]      ql_placement = "io34";

#_________________________________________________________________________
#                                       SELECT AND ENABLE SIGNALS FROM CPU
#
portprop xnWR       ql_placement = "io10";
portprop xnRD       ql_placement = "io53", ql_padtype = "INCELL";
portprop xnIOCS     ql_placement = "io4";
portprop xnECS[0]   ql_placement = "io2";
portprop xnECS[1]   ql_placement = "io3";

#_________________________________________________________________________
#                                                    STROBE SIGNALS TO SCC
#
portprop xnSCCCS    ql_placement = "io23";
portprop xnSCCRD    ql_placement = "io24";
portprop xnSCCWR    ql_placement = "io25";

#_________________________________________________________________________
#                                                      OUTPUTS FOR FEC MUX
#
portprop xMUX[0]    ql_placement = "io67";
portprop xMUX[1]    ql_placement = "io68";

#_________________________________________________________________________
#                                                            SPI INTERFACE
#
portprop xnSPICS[1] ql_placement = "io6";
portprop xnSPICS[2] ql_placement = "io7";
portprop xnSPICS[3] ql_placement = "io8";
portprop xMOSI      ql_placement = "io9";
portprop xMISO[0]   ql_placement = "io13";
portprop xMISO[1]   ql_placement = "io14";
portprop xMISO[2]   ql_placement = "io15";
portprop xMISO[3]   ql_placement = "io21";
portprop xSPICLK    ql_placement = "io22";

#_________________________________________________________________________
#                                                            EDAC RAM DATA
#
portprop xnEWR      ql_placement = "io66";
portprop xnERD      ql_placement = "io65";
#
portprop xE0D[0]    ql_placement = "io36";
portprop xE0D[1]    ql_placement = "io37";
portprop xE0D[2]    ql_placement = "io38";
portprop xE0D[3]    ql_placement = "io39";
portprop xE0D[4]    ql_placement = "io40";
portprop xE0D[5]    ql_placement = "io41";
portprop xE0D[6]    ql_placement = "io42";
portprop xE0D[7]    ql_placement = "io43";
#
portprop xE1D[0]    ql_placement = "io44";
portprop xE1D[1]    ql_placement = "io45";
portprop xE1D[2]    ql_placement = "io46";
portprop xE1D[3]    ql_placement = "io47";
portprop xE1D[4]    ql_placement = "io48";
portprop xE1D[5]    ql_placement = "io49";
portprop xE1D[6]    ql_placement = "io55";
portprop xE1D[7]    ql_placement = "io56";
#
portprop xE2D[0]    ql_placement = "io57";
portprop xE2D[1]    ql_placement = "io58";
portprop xE2D[2]    ql_placement = "io59";
portprop xE2D[3]    ql_placement = "io60";
portprop xE2D[4]    ql_placement = "io61";
portprop xE2D[5]    ql_placement = "io62";
portprop xE2D[6]    ql_placement = "io63";
portprop xE2D[7]    ql_placement = "io64";

########################## That's All Folks ##############################
