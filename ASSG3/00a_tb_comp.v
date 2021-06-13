module tb_comp;

reg A, B;
reg GT_IN, EQ_IN, LT_IN;
wire GT, EQ, LT;

mod_comp comp(
    .GT(GT), .EQ(EQ), .LT(LT),
    .A(A), .B(B),
    .GT_IN(GT_IN), .EQ_IN(EQ_IN), .LT_IN(LT_IN));

initial
begin
    $dumpfile("00a_tb_comp.vcd");
    $dumpvars(1, tb_comp);

    // reset
    GT_IN = 0; EQ_IN = 1; LT_IN = 0;
    A = 0; B = 0;
    #10;
    A = 1; B = 0;
    #10;
    A = 0; B = 1;
    #10;
    A = 1; B = 1;
    #10;

    GT_IN = 0; EQ_IN = 0; LT_IN = 1;
    A = 0; B = 0;
    #10;
    A = 1; B = 0;
    #10;
    A = 0; B = 1;
    #10;
    A = 1; B = 1;
    #10;

    GT_IN = 1; EQ_IN = 0; LT_IN = 0;
    A = 0; B = 0;
    #10;
    A = 1; B = 0;
    #10;
    A = 0; B = 1;
    #10;
    A = 1; B = 1;
    #10;

end

endmodule
