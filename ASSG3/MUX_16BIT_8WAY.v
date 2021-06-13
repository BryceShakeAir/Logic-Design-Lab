module MUX_16BIT_8WAY(out,in0,in1,in2,in3,in4,in5,in6,in7,s0,s1,s2);
output [15:0] out;
input [15:0] in0,in1,in2,in3,in4,in5,in6,in7;
input s0,s1,s2;
MUX_8WAY mux_8way_1 [15:0] (out,in0,in1,in2,in3,in4,in5,in6,in7,s0,s1,s2);
endmodule

