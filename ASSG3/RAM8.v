module RAM8(out,inp,load,addr,clk);
output [15:0]out;
input [15:0] inp;
input load,clk;
input [3:0] addr;
wire [15:0]min0,min1,min2,min3,min4,min6,min7;
wire [15:0] min0_bar,min1_bar,min2_bar,min3_bar,min4_bar,min5_bar,min6_bar,min7_bar;
//REGISTER_16BIT rg_16bit_0(min0,min0_bar,inp,load,clk);
//REGISTER_16BIT rg_16bit_1(min1,min1_bar,inp,load,clk);
//REGISTER_16BIT rg_16bit_2(min2,min2_bar,inp,load,clk);
//REGISTER_16BIT rg_16bit_3(min3,min3_bar,inp,load,clk);
//REGISTER_16BIT rg_16bit_4(min4,min4_bar,inp,load,clk);
//REGISTER_16BIT rg_16bit_5(min5,min5_bar,inp,load,clk);
//REGISTER_16BIT rg_16bit_6(min6,min6_bar,inp,load,clk);
//REGISTER_16BIT rg_16bit_7(min7,min7_bar,inp,load,clk);

//MUX_16BIT_8WAY mux8_16(out,min0,min1,min2,min3,min4,min6,min7,addr[0],addr[1],addr[2]);
endmodule

