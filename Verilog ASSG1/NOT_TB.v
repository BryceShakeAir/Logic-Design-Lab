module NOT_TB;
wire out;
reg in;
NOT not_gate_1(out,in);
initial
begin
in = 0;
#10 in = 1;
end
endmodule
