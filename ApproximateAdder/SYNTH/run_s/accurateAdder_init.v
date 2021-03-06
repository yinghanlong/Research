
module full_adder_7 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n3;

  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(n3), .B2(Cin), .ZN(n1) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  XOR2_X2 U1 ( .A(Cin), .B(n3), .Z(Sum) );
  INV_X2 U2 ( .A(n1), .ZN(Cout) );
endmodule


module full_adder_6 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n3;

  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(n3), .B2(Cin), .ZN(n1) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  XOR2_X2 U1 ( .A(Cin), .B(n3), .Z(Sum) );
  INV_X2 U2 ( .A(n1), .ZN(Cout) );
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

  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(n3), .B2(Cin), .ZN(n1) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  XOR2_X2 U1 ( .A(Cin), .B(n3), .Z(Sum) );
  INV_X2 U2 ( .A(n1), .ZN(Cout) );
endmodule


module full_adder_3 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n3;

  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(n3), .B2(Cin), .ZN(n1) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  XOR2_X2 U1 ( .A(Cin), .B(n3), .Z(Sum) );
  INV_X2 U2 ( .A(n1), .ZN(Cout) );
endmodule


module full_adder_2 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n3;

  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(n3), .B2(Cin), .ZN(n1) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  XOR2_X2 U1 ( .A(Cin), .B(n3), .Z(Sum) );
  INV_X2 U2 ( .A(n1), .ZN(Cout) );
endmodule


module full_adder_1 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n3;

  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(n3), .B2(Cin), .ZN(n1) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  XOR2_X2 U1 ( .A(Cin), .B(n3), .Z(Sum) );
  INV_X2 U2 ( .A(n1), .ZN(Cout) );
endmodule


module full_adder_0 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n2, n3;

  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(n2), .B2(Cin), .ZN(n3) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n2) );
  XOR2_X2 U1 ( .A(Cin), .B(n2), .Z(Sum) );
  INV_X2 U2 ( .A(n3), .ZN(Cout) );
endmodule


module accurateAdder ( S, clock, X, Y, Cin );
  output [8:0] S;
  input [7:0] X;
  input [7:0] Y;
  input clock, Cin;
  wire   n1, n2;
  wire   [6:0] C;

  full_adder_0 a0 ( .A(X[0]), .B(Y[0]), .Cin(Cin), .Sum(S[0]), .Cout(C[0]) );
  full_adder_7 a1 ( .A(X[1]), .B(Y[1]), .Cin(C[0]), .Sum(S[1]), .Cout(C[1]) );
  full_adder_6 a2 ( .A(X[2]), .B(Y[2]), .Cin(C[1]), .Sum(S[2]), .Cout(C[2]) );
  full_adder_5 a3 ( .A(X[3]), .B(Y[3]), .Cin(C[2]), .Sum(n1), .Cout(n2) );
  full_adder_4 a4 ( .A(X[4]), .B(Y[4]), .Cin(1'b0), .Sum(S[4]), .Cout(C[4]) );
  full_adder_3 a5 ( .A(X[5]), .B(Y[5]), .Cin(C[4]), .Sum(S[5]), .Cout(C[5]) );
  full_adder_2 a6 ( .A(X[6]), .B(Y[6]), .Cin(C[5]), .Sum(S[6]), .Cout(C[6]) );
  full_adder_1 a7 ( .A(X[7]), .B(Y[7]), .Cin(C[6]), .Sum(S[7]), .Cout(S[8]) );
  AND2_X4 U1 ( .A1(n2), .A2(n1), .ZN(S[3]) );
endmodule

