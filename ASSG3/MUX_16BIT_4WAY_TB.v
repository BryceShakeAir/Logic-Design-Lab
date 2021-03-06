module MUX_16BIT_4WAY_TB();
wire [15:0] out;
reg [15:0] in1,in2,in3,in4;
reg s0,s1;
MUX_16BIT_4WAY mux_16_4 (out,in1,in2,in3,in4,s0,s1);
integer i1,i2,i3,i4,i5,i6;
initial
begin
/*	for( i1= 0; i1<2;i1=i1+1)
	begin
		s1=i1;
		for( i2 =0; i2<2; i2 = i2+1 )
		begin
			s0 = i2;
			for(i3=0;i3<65536;i3=i3+1)
			begin
				in4 = i3;
				for(i4=0;i4<65536;i4=i4+1)
				begin
					in3 = i4;
					for(i5=0;i5<65536;i5=i5+1)
					begin
						in2 = i5;
						for(i6=0;i6<65536;i6=i6+1)
						begin 
							in1 = i6;
							#10;
						end
					end
				end
			end
		end
	end
*/
s0 =1'b1;
s1=1'b0;
in1 = 16'b1111111111111111;
in2 = 16'b1111111111111110;
in3 = 16'b0111111111111111;
in4 = 16'b1111111111111101;
#120;
end
endmodule	
	

