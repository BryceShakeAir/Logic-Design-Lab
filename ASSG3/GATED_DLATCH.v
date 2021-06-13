module GATED_DLATCH(q,q_bar,enable,d);
input d,enable;
output q,q_bar;
wire s_bar,r_bar,d_bar;
nand(d_bar,d,d);
nand(s_bar,d,enable);
nand(r_bar,s_bar,enable);
nand(q,q_bar,s_bar);
nand(q_bar,q,r_bar);
endmodule
