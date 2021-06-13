module RE_SRESET_DFF_TB;
wire q,q_bar;
reg reset,d,clk;
RE_SRESET_DFF RE1(q,q_bar,reset,d,clk);
initial 
begin
	clk = 1;
	d=0;
	reset = 1'b0;
	#35;
	d=1 ;
end

always 
begin
      	clk = ~clk;#5;
end
endmodule
