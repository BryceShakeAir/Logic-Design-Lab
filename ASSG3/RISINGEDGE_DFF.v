module RISINGEDGE_DFF(q,q_bar,d,clk);
input d,clk;
output q,q_bar;
wire clk_not,qm,qm_bar,qm1,qm1_bar,gm2,qm2_bar;
nand(clk_not,clk,clk);
GATED_DLATCH GDL1(qm,qm_bar,clk_not,d);
GATED_DLATCH GDL2(qm1,qm1_bar,clk,qm);
GATED_DLATCH GDL3(qm2,qm2_bar,clk_not,qm1);
GATED_DLATCH GDL4(q,q_bar,clk,qm2);	
endmodule
