module DEMUX_4WAY_TB();
reg in0,s0,s1;
wire out3,out2,out1,out0;
integer i;
DEMUX_4WAY demux(out3,out2,out1,out0,in0,s0,s1);
initial 
begin
	for(i=0;i<2;i=i+1)
	begin
		in0 = i;
			s1 = 1'b0 ; s0 = 1'b0;
		#10	s1 = 1'b0 ; s0 = 1'b1;
		#10	s1 = 1'b1 ; s0 = 1'b0;
		#10	s1 = 1'b1 ; s0 = 1'b1;
	end
end
endmodule
