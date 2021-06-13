module DEMUX_8WAY(out7,out6,out5,out4,out3,out2,out1,out0,i0,s2,s1,s0);
output out7,out6,out5,out4,out3,out2,out1,out0;
input i0,s2,s1,s0;
wire s2_bar,s1_bar,s0_bar;
NOT not1(s2_bar,s2), not2(s1_bar,s1) , not3(s0_bar,s0);
AND_4WAY and7(out7,s2_bar,s1_bar,s0_bar,i0);
AND_4WAY and6(out6,s2_bar,s1_bar,s0,i0);
AND_4WAY and5(out5,s2_bar,s1,s0_bar,i0);
AND_4WAY and4(out4,s2_bar,s1,s0,i0);
AND_4WAY and3(out3,s2,s1_bar,s0_bar,i0);
AND_4WAY and2(out2,s2,s1_bar,s0,i0);
AND_4WAY and1(out1,s2,s1,s0_bar,i0);
AND_4WAY and0(out0,s2,s1,s0,i0);
endmodule
