module GATED_DLATCH_TB;
wire q,q_bar;
reg d,clk;
GATED_DLATCH GD3(q,q_bar,clk,d);
initial 
begin
	clk = 0;
	d=0;
	#10;d=1 ;
end

always 
begin
      	clk = ~clk;#5;
end
endmodule
