module RISINGEDGE_DFF_TB;
reg clk,d;
wire q,q_bar;
RISINGEDGE_DFF REDFF(q,q_bar,d,clk);
initial 
begin
	clk <= 1'b0;
end
initial
begin
	d <= 1'b0;
end
always#5 clk <= ~clk;
always
begin
 	d <=1'b0;#10;
	d <=1'b1;#10;
end	
endmodule
