module REGISTER_16BIT_TB;
wire [15:0]out,out_bar;
reg [15:0]inp;
reg load,clk;
REGISTER_16BIT reg_16(out,out_bar,inp,load,clk);
initial 
begin
	clk = 0;
	inp= 2 ;
	load = 1'b1;
	#20;load= 1'b0;
	#20; #20; inp = 5;inp = 5;
	#20; load = 1'b1;
end
always #5 clk = ~clk;
endmodule
