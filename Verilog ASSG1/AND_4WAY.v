module AND_4WAY(out,in0,in1,in2,in3);
output out;
input in0,in1,in2,in3;
wire p;
AND_3WAY and_3_1(p,in0,in1,in2);
AND and_2(out,p,in3);
endmodule
