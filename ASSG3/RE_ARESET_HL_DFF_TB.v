module RE_ARESET_HL_DFF_TB;
wire q,q_bar;
reg reset,d,clk;
RE_ARESET_HL_DFF RE2(q,q_bar,reset,d,clk);
initial 
begin
	d= 1'b0;
	clk = 1'b1;
	reset = 1'b0;
	#35;d = 1'b0;
end
always 
begin
	clk = ~clk; #5;
end
endmodule
