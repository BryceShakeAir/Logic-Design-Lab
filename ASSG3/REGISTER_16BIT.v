module REGISTER_16BIT(out,out_bar,inp,load,clk);
output [15:0]out,out_bar;
input [15:0]inp;
input load,clk;
BINARY_CELL BC_1[15:0](out,out_bar,inp,load,clk);
endmodule
