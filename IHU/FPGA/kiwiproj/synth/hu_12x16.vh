module hulogic_fpga(
xnWR,
unusednWR,
xnRD,
xMUX,
unusedGND,
xnIOCS,
xnECS,
xD,
xMISO,
xE0D,
xCLK7M,
xE1D,
xSPICLK,
xnRESET,
xE2D,
xMOSI,
xnEWR,
xnERD,
xnSCCCS,
xnSCCRD,
xA,
xnSCCWR,
xnSPICS,
xWRCLK,
unusedADD0
);
input xnWR;
input unusednWR;
input xnRD;
output [1:0] xMUX;
input unusedGND;
input xnIOCS;
input [1:0] xnECS;
output [7:0] xD;
input [3:0] xMISO;
output [7:0] xE0D;
input xCLK7M;
output [7:0] xE1D;
output xSPICLK;
input xnRESET;
output [7:0] xE2D;
output xMOSI;
output xnEWR;
output xnERD;
output xnSCCCS;
output xnSCCRD;
input [3:0] xA;
output xnSCCWR;
output [3:0] xnSPICS;
input xWRCLK;
input unusedADD0;
