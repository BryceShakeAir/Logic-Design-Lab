module MUX_16BIT_2WAY(out,in0,in1,s0);
output [15:0] out;
input [15:0] in0,in1;
input s0;
/*wire [15:0]p,q;
wire s0_bar;
NOT not_16_2(s0_bar,s0);
AND and_16 [15:0] (p,in1,s0);
AND and_16_1 [15:0] (q,in0,s0_bar) ;
OR_16 or_16(out,p,q);
*/
MUX MUX_16_01 [15:0] (out,in0,in1,s0);
endmodule
