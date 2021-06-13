module OR(out,i1,i2);
output out;
input i1,i2;
wire i1_bar,i2_bar;
nand(i1_bar,i1,i1);
nand(i2_bar,i2,i2);
nand(out,i1_bar,i2_bar);
endmodule 