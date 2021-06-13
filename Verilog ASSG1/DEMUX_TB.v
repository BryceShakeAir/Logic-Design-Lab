module DEMUX_TB();
reg a,b;
wire out0, out1;
DEMUX demux(out1,out0,a,b);
initial 
begin
	a = 1'b0 ; b = 1'b0;
#10	a = 1'b0 ; b = 1'b1;
#10	a = 1'b1 ; b = 1'b0;
#10	a = 1'b1 ; b = 1'b1;
end
endmodule  