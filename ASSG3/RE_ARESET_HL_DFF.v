module RE_ARESET_HL_DFF(q,q_bar,reset,d,clk);
input reset,d,clk;
output q,q_bar;
wire Qm,Qm_bar,temp,reset_bar,clk_bar;
nand(clk_bar,clk,clk);
nand(reset_bar,reset,reset);
nand(temp,reset_bar,Qm_bar);
RISINGEDGE_DFF REDFF1(Qm,Qm_bar,d,clk_bar);
RISINGEDGE_DFF REDFF2(q,q_bar,temp,clk);
endmodule
