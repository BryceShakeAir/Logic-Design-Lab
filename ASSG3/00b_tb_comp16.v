module tb_comp16;

reg [15:0] A, B;
reg GT_IN, EQ_IN, LT_IN;
wire GT, EQ, LT;

mod_comp16 comp(
    .GT(GT), .EQ(EQ), .LT(LT),
    .A(A), .B(B),
    .GT_IN(GT_IN), .EQ_IN(EQ_IN), .LT_IN(LT_IN));

initial
begin
    $dumpfile("00b_tb_comp.vcd");
    $dumpvars(1, tb_comp16);

    // reset
    GT_IN = 0; EQ_IN = 1; LT_IN = 0;
    A = 42356; B = 42356;
    #10;
    A = 56321; B = 5123;
    #10;
    A = 34212; B = 65535;
    #10;
    A = 0; B = 0;
    #10;

    GT_IN = 0; EQ_IN = 0; LT_IN = 1;
    A = 42356; B = 42356;
    #10;
    A = 56321; B = 5123;
    #10;
    A = 34212; B = 65535;
    #10;
    A = 0; B = 0;
    #10;

    GT_IN = 1; EQ_IN = 0; LT_IN = 0;
    A = 42356; B = 42356;
    #10;
    A = 56321; B = 5123;
    #10;
    A = 34212; B = 1;
    #10;
    A = 0; B = 0;
    #10;

end

endmodule
