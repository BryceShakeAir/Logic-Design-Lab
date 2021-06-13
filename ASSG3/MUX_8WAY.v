module MUX_8WAY(out,in0,in1,in2,in3,in4,in5,in6,in7,s0,s1,s2);
output out;
input in0,in1,in2,in3,in4,in5,in6,in7,s0,s1,s2;
wire s0_bar,s1_bar,s2_bar,min0,min1,min2,min3,min4,min5,min6,min7;
NOT not1(s0_bar,s0) , not2(s1_bar,s1) , not3(s2_bar,s1);
AND_4WAY and_4way_0 (min0,s0_bar,s1_bar,s2_bar,in0);
AND_4WAY and_4way_1 (min1,s0,s1_bar,s2_bar,in1);
AND_4WAY and_4way_2 (min2,s0_bar,s1,s2_bar,in2);
AND_4WAY and_4way_3 (min3,s0,s1,s2_bar,in3);
AND_4WAY and_4way_4 (min4,s0_bar,s1_bar,s2,in4);
AND_4WAY and_4way_5 (min5,s0,s1_bar,s2,in5);
AND_4WAY and_4way_6 (min6,s0_bar,s1,s2,in6);
AND_4WAY and_4way_7 (min7,s0,s1,s2,in7);
OR_8WAY or_8way_1(out,min0,min1,min2,min3,min4,min5,min6,min7);
endmodule
