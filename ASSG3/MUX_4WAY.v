module MUX_4WAY(out,in0,in1,in2,in3,s0,s1);
output out;
input in0 ,in1 ,in2 ,in3 ,s0 ,s1;
wire s0_bar , s1_bar , min0 , min1 , min2 , min3 ;
NOT not1 (s0_bar , s0) ;
NOT not2(s1_bar,s1);
AND_3WAY and1(min0,s1_bar,s0_bar,in0);
AND_3WAY and2(min1,s1_bar,s0,in1);
AND_3WAY and3(min2,s1,s0_bar,in2);
AND_3WAY and4(min3,s1,s0,in3);
OR_4WAY or1(out,min0,min1,min2,min3);
endmodule


