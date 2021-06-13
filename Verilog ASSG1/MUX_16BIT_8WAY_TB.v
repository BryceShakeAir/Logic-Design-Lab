module MUX_16BIT_8WAY_TB();
wire [15:0] out;
reg [15:0] in0,in1,in2,in3,in4,in5,in6,in7;
reg s0,s1,s2;
MUX_16BIT_8WAY mux(out,in0,in1,in2,in3,in4,in5,in6,in7,s0,s1,s2);
integer a0,a1,a2,a3,a4,a5,a6,a7;
initial 
begin
	s0 =1'b0;
	s1 =1'b0;
	s2 =1'b0;
	/*for(a0=0;a0<65536;a0=a0+1)
	begin
		in7=a0;
		for(a1=0;a1<65536;a1=a1+1)
		begin
			in6 = a1;
			for(a2=0;a2<65536;a2=a2+1)
			begin
				in5 = a2;
				for(a3=0;a3<65536;a3=a3+1)
				begin
					in4 =a3;
					for(a4=0;a4<65536;a4=a4+1)
					begin
						in3 =a4;
						for(a5=0;a5<65536;a5=a5+1)
						begin
							in2 = a5;
							for(a6=0;a6<65536;a6=a6+1)
							begin
								in1 = a6;
								for(a7=0;a7<65536;a7=a7+1)
								begin
									in0 =a7;
									#10;
								end
							end
						end
					end
				end
			end
		end
	 end*/
in0 =1;
in1 =0;
in2 =0;
in3 =0;
in4 =0;
in5 =0;
in6 =0;
in7 =0;
#10;end
endmodule
 

