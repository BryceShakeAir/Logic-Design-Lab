module OR_TB();
wire out;
reg in1,in2;
OR or_gate_1(out,in1,in2);
initial
begin
in1 = 0;in2=0;
#120 in1 = 0;in2=1;
#120 in1 = 1;in2=0;
#120 in1 = 1;in2=1;
#120 in1 = 0;in2=0;
end
endmodule 