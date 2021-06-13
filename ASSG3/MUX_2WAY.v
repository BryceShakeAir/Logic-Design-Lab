module MUX_2WAY(out,in1,in0,s0,enable);
output out;
input in0,in1,s0,enable;
wire min0,min1,s0_bar,out_temp;
not(s0_bar,s0);
and(min0,in0,s0_bar);
and(min1,in1,s0);
or(out_temp,min0,min1);
and(out,out_temp,enable);
endmodule

