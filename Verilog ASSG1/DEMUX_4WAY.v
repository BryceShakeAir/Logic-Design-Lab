module DEMUX_4WAY(out3,out2,out1,out0,in0,s1,s0);
output out3,out2,out1,out0;
input in0 ,s1 ,s0;
wire s0_bar, s1_bar;
NOT not1(s0_bar,s0), not2(s1_bar,s1);
AND_3WAY and0(out0,s1_bar,s0_bar,in0);
AND_3WAY and1(out1,s1_bar,s0,in0);
AND_3WAY and2(out2,s1,s0_bar,in0);
AND_3WAY and3(out3,s1,s0,in0);
endmodule
