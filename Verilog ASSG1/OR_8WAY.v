module OR_8WAY(out,in0,in1,in2,in3,in4,in5,in6,in7);
output out;
input in0,in1,in2,in3,in4,in5,in6,in7;
wire p,q;
OR_4WAY or_4way_1(p,in0,in1,in2,in3);
OR_4WAY or_4way_2(q,in4,in5,in6,in7);
OR or_1(out,p,q);
endmodule
