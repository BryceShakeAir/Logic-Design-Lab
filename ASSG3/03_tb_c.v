module tb_c;

reg [15:0] X, Y;
reg RESET, CLK;
wire [15:0] OUT;
wire READY;

mod_c c(OUT, READY, X, Y, RESET, CLK);

initial begin
    $dumpfile("03_tb_c.vcd");
    $dumpvars(1, tb_c);
    X = 123; Y = 456;
    RESET = 1; #2;
    CLK = 0; #2; CLK = 1; #2; CLK = 0;
    RESET = 0; #2;
    #10;

    while(READY == 0) begin
        CLK = 0; #2; CLK = 1; #2; CLK = 0; #2;
    end
    #100;

    X = 456; Y = 123;
    RESET = 1; #2;
    CLK = 0; #2; CLK = 1; #2; CLK = 0;
    RESET = 0; #2;
    #10;

    while(READY == 0) begin
        CLK = 0; #2; CLK = 1; #2; CLK = 0; #2;
    end
    #100;

    X = 456; Y = 456;
    RESET = 1; #2;
    CLK = 0; #2; CLK = 1; #2; CLK = 0;
    RESET = 0; #2;
    #10;

    while(READY == 0) begin
        CLK = 0; #2; CLK = 1; #2; CLK = 0; #2;
    end
    #100;
end

endmodule
