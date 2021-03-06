
module full_adder_6 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n3;

  XOR2_X1 U2 ( .A(Cin), .B(n3), .Z(Sum) );
  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(n3), .B2(Cin), .ZN(n1) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X2 U1 ( .A(n1), .ZN(Cout) );
endmodule


module full_adder_5 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n3;

  XOR2_X1 U2 ( .A(Cin), .B(n3), .Z(Sum) );
  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(n3), .B2(Cin), .ZN(n1) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X2 U1 ( .A(n1), .ZN(Cout) );
endmodule


module full_adder_4 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n3;

  XOR2_X1 U2 ( .A(Cin), .B(n3), .Z(Sum) );
  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(n3), .B2(Cin), .ZN(n1) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X2 U1 ( .A(n1), .ZN(Cout) );
endmodule


module full_adder_3 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n3;

  XOR2_X1 U2 ( .A(Cin), .B(n3), .Z(Sum) );
  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(n3), .B2(Cin), .ZN(n1) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X2 U1 ( .A(n1), .ZN(Cout) );
endmodule


module full_adder_2 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n3;

  XOR2_X1 U2 ( .A(Cin), .B(n3), .Z(Sum) );
  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(n3), .B2(Cin), .ZN(n1) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X2 U1 ( .A(n1), .ZN(Cout) );
endmodule


module full_adder_1 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n3;

  XOR2_X1 U2 ( .A(Cin), .B(n3), .Z(Sum) );
  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(n3), .B2(Cin), .ZN(n1) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X2 U1 ( .A(n1), .ZN(Cout) );
endmodule


module full_adder_7 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n3;

  XOR2_X1 U2 ( .A(Cin), .B(n3), .Z(Sum) );
  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(n3), .B2(Cin), .ZN(n1) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X2 U1 ( .A(n1), .ZN(Cout) );
endmodule


module full_adder_0 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n2, n3;

  XOR2_X1 U2 ( .A(Cin), .B(n2), .Z(Sum) );
  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(n2), .B2(Cin), .ZN(n3) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n2) );
  INV_X2 U1 ( .A(n3), .ZN(Cout) );
endmodule


module Adder ( Sum, clock, X, Y, Cin );
  output [8:0] Sum;
  input [7:0] X;
  input [7:0] Y;
  input clock, Cin;
  wire   n19, n20;
  wire   [8:0] S;
  wire   [6:0] C;

  full_adder_0 a0 ( .A(X[0]), .B(Y[0]), .Cin(Cin), .Sum(S[0]), .Cout(C[0]) );
  full_adder_7 a1 ( .A(X[1]), .B(Y[1]), .Cin(C[0]), .Sum(S[1]), .Cout(C[1]) );
  full_adder_6 a2 ( .A(X[2]), .B(Y[2]), .Cin(C[1]), .Sum(S[2]), .Cout(C[2]) );
  full_adder_5 a3 ( .A(X[3]), .B(Y[3]), .Cin(C[2]), .Sum(n19), .Cout(n20) );
  full_adder_4 a4 ( .A(X[4]), .B(Y[4]), .Cin(1'b0), .Sum(S[4]), .Cout(C[4]) );
  full_adder_3 a5 ( .A(X[5]), .B(Y[5]), .Cin(C[4]), .Sum(S[5]), .Cout(C[5]) );
  full_adder_2 a6 ( .A(X[6]), .B(Y[6]), .Cin(C[5]), .Sum(S[6]), .Cout(C[6]) );
  full_adder_1 a7 ( .A(X[7]), .B(Y[7]), .Cin(C[6]), .Sum(S[7]), .Cout(S[8]) );
  DFF_X2 Sum_reg_0_ ( .D(S[0]), .CK(clock), .Q(Sum[0]) );
  DFF_X2 Sum_reg_1_ ( .D(S[1]), .CK(clock), .Q(Sum[1]) );
  DFF_X2 Sum_reg_2_ ( .D(S[2]), .CK(clock), .Q(Sum[2]) );
  DFF_X2 Sum_reg_3_ ( .D(S[3]), .CK(clock), .Q(Sum[3]) );
  DFF_X2 Sum_reg_4_ ( .D(S[4]), .CK(clock), .Q(Sum[4]) );
  DFF_X2 Sum_reg_5_ ( .D(S[5]), .CK(clock), .Q(Sum[5]) );
  DFF_X2 Sum_reg_6_ ( .D(S[6]), .CK(clock), .Q(Sum[6]) );
  DFF_X2 Sum_reg_7_ ( .D(S[7]), .CK(clock), .Q(Sum[7]) );
  DFF_X2 Sum_reg_8_ ( .D(S[8]), .CK(clock), .Q(Sum[8]) );
  AND2_X4 U3 ( .A1(n20), .A2(n19), .ZN(S[3]) );
endmodule

