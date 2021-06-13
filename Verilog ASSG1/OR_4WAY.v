module OR_4WAY(out,in0,in1,in2,in3);
output out;
input in0,in1,in2,in3;
wire in01,in23;
OR or_1(in01,in0,in1);
OR or_2(in23,in2,in3);
OR or_3(out,in01,in23);
endmodule
