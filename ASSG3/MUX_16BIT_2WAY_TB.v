module MUX_16BIT_2WAY_TB;
wire [15:0]out;
reg  [15:0]in1,in2;
reg s0;
integer i,j,k;
MUX_16BIT_2WAY mux16bit2_1(out,in1,in2,s0);
initial 
begin
for(i = 0; i<2;i=i+1)
	begin
		s0 = i; 
		for(j=0;j<65536;j=j+1)
		begin
			in2=j; 
			for(k=0;k<65536;k=k+1)
			begin
				 in1=k;
				#10; 
			end
		end
	end
end 

endmodule 
