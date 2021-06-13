module OR_8WAY_TB();
wire out;
reg in0,in1,in2,in3,in4,in5,in6,in7;
integer a0,a1,a2,a3,a4,a5,a6,a7;
OR_8WAY OR_8way(out,in0,in1,in2,in3,in4,in5,in6,in7);
initial 
begin
	for(a0=0;a0<2;a0=a0+1)
	begin
		in7=a0;
		for(a1=0;a1<2;a1=a1+1)
		begin
			in6 = a1;
			for(a2=0;a2<2;a2=a2+1)
			begin
				in5 = a2;
				for(a3=0;a3<2;a3=a3+1)
				begin
					in4 =a3;
					for(a4=0;a4<2;a4=a4+1)
					begin
						in3 =a4;
						for(a5=0;a5<2;a5=a5+1)
						begin
							in2 = a5;
							for(a6=0;a6<2;a6=a6+1)
							begin
								in1 = a6;
								for(a7=0;a7<2;a7=a7+1)
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
	 end
end
endmodule
	