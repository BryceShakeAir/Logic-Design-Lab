module MUX(out,in0,in1,s0);
output out;
input s0,in0,in1;
wire p,q,s0_bar;
NOT not_1(s0_bar,s0);
AND and_1(p,in0,s0_bar);
AND and_2(q,in1,s0);
OR or_1(out,p,q);
endmodule

