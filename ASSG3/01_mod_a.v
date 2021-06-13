module mod_a(OUT, READY, X, Y, RESET, CLK);

input [15:0] X, Y;
input CLK, RESET;
output [15:0] OUT;
output READY;

wire [15:0] PC;
//wire PC_INC;

// LOAD PC16 with ZERO on RESET
mod_PC16 PC16(
    .OUT(PC),
    .IN(16'b0),
    .LOAD(1'b0),
    .INC(1'b1),
    .RST(RESET),
    .CLK(CLK)
);

// READY when PC = Y
mod_comp16 comp16(
    .GT(), .EQ(READY), .LT(),
    .A(PC), .B(Y),
    .GT_IN(1'b0), .EQ_IN(~RESET), .LT_IN(RESET)
);

wire [15:0] R2_IN, R2_PLUS_X;
wire R2_LOAD;
mod_16bit_reg R2(OUT, R2_IN, ~READY, CLK);

mod_16bit_adder adder(R2_PLUS_X, , X, OUT, 1'b0);
mod_16bit_mux mux(R2_IN, R2_PLUS_X, 16'b0, RESET);

endmodule
