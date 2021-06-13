module mod_b(OUT, READY, X, Y, RESET, CLK);

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

wire [15:0] X_PLUS_Y, X_MINUS_Y;
wire [15:0] MINUS_Y;
mod_16bit_adder adder_x_plus_y(X_PLUS_Y, , X, Y, 1'b0);
mod_16bit_adder adder_minus_y(MINUS_Y, , ~Y, 16'b1, 1'b0); // -Y = ~Y + 1 (2's comp)
mod_16bit_adder adder_x_minus_y(X_MINUS_Y, , X, MINUS_Y, 1'b0);


// READY when PC = Y
mod_comp16 comp16(
    .GT(), .EQ(READY), .LT(),
    .A(PC), .B(X_PLUS_Y),
    .GT_IN(1'b0), .EQ_IN(~RESET), .LT_IN(RESET)
);

wire [15:0] R2_IN, R2_PLUS_X_MINUS_Y;
wire R2_LOAD;
mod_16bit_reg R2(OUT, R2_IN, ~READY, CLK);

mod_16bit_adder adder(R2_PLUS_X_MINUS_Y, , X_MINUS_Y, OUT, 1'b0);
mod_16bit_mux mux(R2_IN, R2_PLUS_X_MINUS_Y, 16'b0, RESET);

endmodule
