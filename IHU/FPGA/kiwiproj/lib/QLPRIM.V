//`resetall
//`accelerate
`timescale 1ps / 1ps
//`delay_mode_path
module frag_a( A1, A2, A3, A4, A5, A6, AZ );
input A1, A2, A3, A4, A5, A6;
output AZ;

P_AND6 QL1( A1, A2, A3, A4, A5, A6, AZ );

endmodule // frag_a
module frag_f( F1, F2, F3, F4, F5, F6, FZ );
input F1, F2, F3, F4, F5, F6;
output FZ;

P_AND6 QL1( F1, F2, F3, F4, F5, F6, FZ );

endmodule // frag_f
module frag_m( B1,B2,C1,C2,D1,D2,E1,E2,OS,NS,OZ,NZ);

input B1,B2,C1,C2,D1,D2,E1,E2,OS,NS;
output OZ,NZ;

P_MUX3 QL1( B1, B2, C1, C2, NS, OS, NZ, OZ );
P_MUX2 QL2( D1, D2, E1, E2, NS, NZ);

endmodule // frag_m
module frag_q( QD, QC, QS, QR, QZ);
input QC, QD, QS, QR;
output QZ;

P_FF QL1( QD, QC, QS, QR, QZ );

endmodule // frag_q
module bicell( I1,I2,IE,IZ,IP);
input I1,I2,IE;
output IZ;
inout IP;

P_OUT QL1( I1, I2, IE, IP );
P_BUF QL2( IP, IZ);

endmodule // bicell
module incell( IN,IZ,IP);
input IP;
output IN,IZ;

P_BUF QL1( IP, IZ);
P_INV QL2( IP, IN);

endmodule // incell
module ckcell( IN,IZ,IC,IP);
input IP;
output IN,IZ,IC;

P_BUF QL1( IP, IC);
P_BUF QL2( IP, IZ);
P_INV QL3( IP, IN);

endmodule // ckcell
module P_AND6( A, B, C, D, E, F, Z );
input A, B, C, D, E, F;
output Z;

udpand6 QL1 ( Z, A, B, C, D, E, F );

specify
   (A => Z) = 1;
   (B => Z) = 1;
   (C => Z) = 1;
   (D => Z) = 1;
   (E => Z) = 1;
   (F => Z) = 1;
endspecify

endmodule // P_AND6
module P_BUF( A, Z);
input A;
output Z;

buf QL1 (Z, A);

specify
   (A => Z) = 1;
endspecify

endmodule // P_BUF
module P_FF( D, C, S, R, Q );
 input C, D, R, S;
output Q;

udpff QL1 ( Q, D, C, R, S );

specify
   (C => Q) = 1;
   (R => Q) = 1;
   (S => Q) = 1;
   $setup( D, posedge C, 1);
   $hold ( posedge C, D, 1);
   $width( posedge C, 1);
   $width( negedge C, 1);
   $recovery( negedge R, posedge C, 1);
   $recovery( negedge S, posedge C, 1);
endspecify

endmodule // P_FF
module P_INV( A, Z);
input A;
output Z;

not QL1 (Z, A);

specify
   (A => Z) = 1;
endspecify

endmodule // P_INV
module P_MUX2( A, B, C, D, S, Z);
input A, B, C, D, S;
output Z;

udpmux2 QL1 ( Z, A, B, C, D, S );

specify
   (A => Z) = 1;
   (B => Z) = 1;
   (C => Z) = 1;
   (D => Z) = 1;
   (S => Z) = 1;
endspecify

endmodule // P_MUX2
module P_MUX3( A, B, C, D, S, T, E, Z );
input A, B, C, D, S, E, T;
output Z;

udpmux3 QL2 ( Z, A, B, C, D, E, S, T );

specify
   (A => Z) = 1;
   (B => Z) = 1;
   (C => Z) = 1;
   (D => Z) = 1;
   (E => Z) = 1;
   (S => Z) = 1;
   (T => Z) = 1;
endspecify

endmodule // P_MUX3
module P_OUT( A, B, E, Z );
input A, B, E;
output Z;

bufif1  QL2 (Z, O, E);
udpout  QL1 (O, A, B);

specify
   (E => Z) = 1;
   (A => Z) = 1;
   (B => Z) = 1;
endspecify

endmodule // P_OUT
primitive udpand6(Z, A, B, C, D, E, F);
   output Z;
   input A, B, C, D, E, F;
   table
      // A  B  C  D  E  F  :  Z
         1  0  1  0  1  0  :  1  ;
         0  ?  ?  ?  ?  ?  :  0  ;
         ?  1  ?  ?  ?  ?  :  0  ;
         ?  ?  0  ?  ?  ?  :  0  ;
         ?  ?  ?  1  ?  ?  :  0  ;
         ?  ?  ?  ?  0  ?  :  0  ;
         ?  ?  ?  ?  ?  1  :  0  ;
   endtable
endprimitive // udpand6
primitive udpff(Q, D, C, R, S);
    output Q;
    reg    Q;
    input  C, D, R, S;

    table
 
    //  D   C       R   S   :   Q   :   Q+
 
        1   (01)    0   0   :   ?   :   1;
        1   (01)    0   x   :   ?   :   1;
        ?    ?      0   x   :   1   :   1;
 
        0   (01)    0   0   :   ?   :   0;
        0   (01)    x   0   :   ?   :   0;
        ?    ?      x   0   :   0   :   0;
 
        1   (x1)    0   0   :   1   :   1;
        0   (x1)    0   0   :   0   :   0;
        1   (0x)    0   0   :   1   :   1;
        0   (0x)    0   0   :   0   :   0;
 
        ?   ?       1   ?   :   ?   :   0;
        ?   ?       0   1   :   ?   :   1;
 
        ?   (?0)    0   0   :   ?   :   -;
        ?   (1x)    0   0   :   ?   :   -;
        *    ?      ?   ?   :   ?   :   -;
 
        ?   ?     (?0)  ?   :   ?   :   -;
        ?   ?       ?  (?0) :   ?   :   -;
 
    endtable
endprimitive // udpff
primitive udpmux2(Z, A, B, C, D, S);
   output Z;
   input A, B, C, D, S;
   table
      // A  B  C  D  S   :    Z
         1  0  ?  ?  0   :    1  ;
         0  ?  ?  ?  0   :    0  ;
         ?  1  ?  ?  0   :    0  ;
         ?  ?  1  0  1   :    1  ;
         ?  ?  0  ?  1   :    0  ;
         ?  ?  ?  1  1   :    0  ;
// Reduce pessimism
         1  0  1  0  ?   :    1  ;
         0  ?  0  ?  ?   :    0  ;
         0  ?  ?  1  ?   :    0  ; // new
         ?  1  ?  1  ?   :    0  ;
         ?  1  0  ?  ?   :    0  ; // new
   endtable
endprimitive // udpmux2
primitive udpmux3(Z, A, B, C, D, E, S, T);
   output Z;
   input A, B, C, D, E, S, T;
   table
   // A  B  C  D  E     S  T   :    Z
      1  0  ?  ?  ?     0  0   :    1  ;
      0  ?  ?  ?  ?     0  0   :    0  ;
      ?  1  ?  ?  ?     0  0   :    0  ;
      ?  ?  1  0  ?     1  0   :    1  ;
      ?  ?  0  ?  ?     1  0   :    0  ;
      ?  ?  ?  1  ?     1  0   :    0  ;
      ?  ?  ?  ?  0     ?  1   :    0  ;
      ?  ?  ?  ?  1     ?  1   :    1  ;
// Reduce pessimism
      1  0  1  0  1     ?  ?   :    1  ;
      0  ?  0  ?  0     ?  ?   :    0  ;
      0  ?  ?  1  0     ?  ?   :    0  ; // new
      ?  1  ?  1  0     ?  ?   :    0  ;
      ?  1  0  ?  0     ?  ?   :    0  ; // new
      1  0  1  0  ?     ?  0   :    1  ;
      0  ?  0  ?  ?     ?  0   :    0  ;
      ?  1  ?  1  ?     ?  0   :    0  ;
      ?  1  0  ?  ?     ?  0   :    0  ; // new
      0  ?  ?  1  ?     ?  0   :    0  ; // new
      0  ?  ?  ?  0     0  ?   :    0  ;
      ?  1  ?  ?  0     0  ?   :    0  ;
      1  0  ?  ?  1     0  ?   :    1  ;
      ?  ?  0  ?  0     1  ?   :    0  ;
      ?  ?  ?  1  0     1  ?   :    0  ;
      ?  ?  1  0  1     1  ?   :    1  ;
   endtable
endprimitive // udpmux3
primitive udpout(Z, A, B);
   output Z;
   input A, B;
   table
   // A  B  Z
      0  ?   : 1  ;
      ?  1   : 1  ;
      1  0   : 0  ;
   endtable
endprimitive // udpout
