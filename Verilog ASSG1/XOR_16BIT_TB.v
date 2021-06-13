module XOR_16BIT_TB;
wire [15:0] out;
reg [15:0] in0,in1;
XOR_16BIT xor_16_1 (out,in0,in1);
integer  i,j;
initial
begin
	for(i = 0 ;i<65535;i = i+1)
	begin
		in1 = i;
		for( j =0; j<65535; j=j+1)
		begin
			in0 = j;
			#10;
		end
	end
end
endmodule
	
