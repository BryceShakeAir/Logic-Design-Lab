module AND_3WAY(out,in0,in1,in2);
output out;
input in0,in1,in2;
wire p;
AND and1(p,in0,in1);
AND and2(out,p,in2);
endmodule


