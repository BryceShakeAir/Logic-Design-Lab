module AND_4WAY_TB();
wire out;
reg in0,in1,in2,in3;
AND_4WAY and_4way(out,in0,in1,in2,in3);
initial 
begin
	in0 =1;
	in1 =1;
	in2 =1;
	in3 =1;
end
endmodule
