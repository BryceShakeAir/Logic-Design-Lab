module OR_16_TB();
wire [0:15]out;
reg [0:15]in0,in1;
OR_16 or_16(out,in1,in0);
integer i,j;
initial
begin
	i=0 ;
	while(i<=65535)
	begin
	in1 = i;
	j = 0;
		while(j<=65535)
		begin
			in0 = j;
			#10 j = j + 1;
		end
	i=i+1;
	end
end
endmodule 
