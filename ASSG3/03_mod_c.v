module mod_c(OUT, READY, X, Y, RESET, CLK);

input [15:0] X, Y;
input CLK, RESET;
output [15:0] OUT;
output READY;

wire [15:0] PC;

// LOAD PC16 with ZERO on RESET
mod_PC16 PC16(
    .OUT(PC),
    .IN(16'b0),
    .LOAD(1'b0),
    .INC(1'b1),
    .RST(RESET),
    .CLK(CLK)
);

wire [15:0] MINUS_Y;
mod_16bit_adder adder_minus_y(MINUS_Y, , ~Y, 16'b1 , 1'b0); // -Y = ~Y + 1 (2's comp)

// READY when OUT < Y
mod_comp16 comp16(
    .GT(), .EQ(), .LT(READY),
    .A(OUT), .B(Y),

    .GT_IN(RESET),  //READY = 0 when RESET
    .EQ_IN(~RESET), //READY = OUT < Y when ~RESET
    .LT_IN(1'b0)
);

wire [15:0] R2_IN, R2_MINUS_Y;
wire R2_LOAD;
mod_16bit_reg R2(OUT, R2_IN, ~READY, CLK);

mod_16bit_adder adder(R2_MINUS_Y, , MINUS_Y, OUT, 1'b0);
// load X into R2 on RESET
mod_16bit_mux mux(R2_IN, R2_MINUS_Y, X, RESET);

endmodule
