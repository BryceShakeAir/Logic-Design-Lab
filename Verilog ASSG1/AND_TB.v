module AND_TB();

wire c;
reg a,b;
initial 
begin
	a = 1'b0 ; b = 1'b0;
#10	a = 1'b0 ; b = 1'b1;
#10	a = 1'b1 ; b = 1'b0;
#10	a = 1'b1 ; b = 1'b1;
end
AND and1(c,a,b);
endmodule  

