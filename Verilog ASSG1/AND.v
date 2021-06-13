module AND(c,a,b);
output c;
input a,b;
wire d;
nand(d,a,b);
nand(c,d,d);
endmodule
