module AND_16_TB();
wire [0:15]r;
reg [0:15]p,q;
AND_16 And_16(r,p,q);
integer i,j;
initial
begin
	i=0 ;
	while(i<=65535)
	begin
	p = i;
	j = 0;
		while(j<=65535)
		begin
			q = j;
			#10 j = j + 1;
		end
	#10 i=i+1;
	end
end
endmodule 
