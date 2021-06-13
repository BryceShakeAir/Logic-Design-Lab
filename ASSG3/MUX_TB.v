module MUX_TB();
wire out;
reg in0, in1, s0;
MUX  MUX_1(out,in0,in1,s0);
integer i=0,j=0,k=0;
initial
begin
	for(i = 0; i<2;i=i+1)
	begin
		s0 = i; 
		for(j=0;j<2;j=j+1)
		begin
			in0=j; 
			for(k=0;k<2;k=k+1)
			begin
				 in1=k; 
				#10;
			end
		end
	end
end
endmodule			

