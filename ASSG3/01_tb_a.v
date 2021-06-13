module tb_a;

reg [15:0] X, Y;
reg RESET, CLK;
wire [15:0] OUT;
wire READY;

mod_a a(OUT, READY, X, Y, RESET, CLK);

initial begin
    $dumpfile("01_tb_a.vcd");
    $dumpvars(1, tb_a);
    X = 123; Y = 456;
    RESET = 1; #2;
    CLK = 0; #2; CLK = 1; #2; CLK = 0;
    RESET = 0; #2;
    #10;

    while(READY == 0) begin
        CLK = 0; #2; CLK = 1; #2; CLK = 0; #2;
    end

end

endmodule
