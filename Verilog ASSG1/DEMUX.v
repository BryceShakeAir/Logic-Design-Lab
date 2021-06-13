module DEMUX_2WAY(out0,out1,in0,s0);
input in0,s0;
output out0,out1;
wire s0_bar;
NOT not1(s0_bar,s0);
AND and0(out0,i0,s0_bar);
AND and1(out1,i0,s0);
endmodule
