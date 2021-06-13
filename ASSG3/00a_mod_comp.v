module mod_comp (
    output GT, EQ, LT,
    input A, B,
    input GT_IN, EQ_IN, LT_IN
);

// EQ = EQ_IN & A XNOR B
wire A_NEQ_B;
mod_xor xor1(A_NEQ_B, A, B);
mod_and and3(EQ, ~A_NEQ_B, EQ_IN);

wire A_NB, NA_B;
mod_and and1(A_NB, A, ~B);
mod_and and2(NA_B, ~A, B);

wire A_LT_B;
mod_and and4(A_LT_B, NA_B, EQ_IN);
wire A_GT_B;
mod_and and5(A_GT_B, A_NB, EQ_IN);

// GT = GT_IN | ~A.B.EQ_IN
mod_or or1(GT, A_GT_B, GT_IN);
// LT = LT_IN | A.~B.EQ_IN
mod_or or2(LT, A_LT_B, LT_IN);

endmodule
