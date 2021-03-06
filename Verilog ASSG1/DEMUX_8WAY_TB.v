module DEMUX_8WAY_TB();
reg in0,s2,s1,s0;
wire out7,out6,out5,out4,out3,out2,out1,out0;
DEMUX_8WAY demux(out7,out6,out5,out4,out3,out2,out1,out0,in0,s2,s1,s0);
integer i ,j;
initial
begin
	for(i=0; i<2;i=i+1)
	begin
		in0 = i;
		for(j=0;j<2;j=j+1)
		begin
			s2 = j;
			s1 = 1'b0 ; s0 = 1'b0;
		#10	s1 = 1'b0 ; s0 = 1'b1;
		#10	s1 = 1'b1 ; s0 = 1'b0;
		#10	s1 = 1'b1 ; s0 = 1'b1;
		#10;	
		end
	end
end
endmodule
