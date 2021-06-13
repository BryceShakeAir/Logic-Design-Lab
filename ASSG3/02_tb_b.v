module tb_b;

reg [15:0] X, Y;
reg RESET, CLK;
wire [15:0] OUT;
wire READY;

mod_b b(OUT, READY, X, Y, RESET, CLK);

initial begin
    $dumpfile("02_tb_b.vcd");
    $dumpvars(1, tb_b);
    X = 123; Y = 111;
    RESET = 1; #2;
    CLK = 0; #2; CLK = 1; #2; CLK = 0;
    RESET = 0; #2;
    #10;

    while(READY == 0) begin
        CLK = 0; #2; CLK = 1; #2; CLK = 0; #2;
    end

end

endmodule
