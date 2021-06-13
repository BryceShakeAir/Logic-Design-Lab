module XOR(out,in1,in2);
output out;
input in1,in2;
wire in1bar,in2bar,w1,w2;
nand(in1bar,in1,in1);
nand(in2bar,in2,in2);
nand(w1,in1bar,in2);
nand(w2,in2bar,in1);
nand(out,w1,w2);
endmodule 