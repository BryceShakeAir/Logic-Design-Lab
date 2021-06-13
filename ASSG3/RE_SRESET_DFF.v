module RE_SRESET_DFF(q,q_bar,reset,d,clk);
output q,q_bar;
input reset,d,clk;
wire temp,reset_bar,temp1;
nand(reset_bar,reset,reset);
nand(temp,d,reset_bar);
nand(temp1,temp,temp);
RISINGEDGE_DFF RSDFF1(q,q_bar,temp1,clk);
endmodule
