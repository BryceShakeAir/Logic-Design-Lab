module BINARY_CELL_TB();
wire out,out_bar;
reg inp,load,clk;
BINARY_CELL bc1 (out,out_bar,inp,load,clk);
initial
begin
	clk = 0;
	inp=1'b0;
	load = 1'b1;
	#20;inp = 1'b1;
	
	
end
always #5 clk = ~clk;
endmodule
