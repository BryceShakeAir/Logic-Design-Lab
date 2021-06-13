module NOT_16_TB();
wire [15:0]out;
reg [15:0] in;
NOT_16 not_16_1(out,in);
integer i=0;
initial
begin
	for(i = 0; i<65535;i=i+1)
	begin
	#10 in = i;
	end
end
endmodule
