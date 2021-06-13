module RAM8_TB();
wire [15:0]out;
reg [15:0] inp;
reg load,clk;
reg [3:0] addr;
integer i;
RAM8 RAM8_1(out,inp,load,addr,clk);
initial
begin
	clk = 1'b1;
	load = 1'b1;
	for(i =0;i<8;i=i+1)
	begin
		addr = i;
		inp = i

