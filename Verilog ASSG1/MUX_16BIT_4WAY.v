module MUX_16BIT_4WAY(out,in0,in1,in2,in3,s0,s1);
output [15:0]out;
input [15:0]in0,in1,in2,in3;
input s0,s1;
MUX_4WAY mux_4way_1 [15:0] (out,in0,in1,in2,in3,s0,s1);
endmodule
