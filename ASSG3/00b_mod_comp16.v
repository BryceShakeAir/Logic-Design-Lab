module mod_comp16 (
    output GT, EQ, LT,
    input [15:0] A, B,
    input GT_IN, EQ_IN, LT_IN
);

// INT stands for Intermediate
wire [16:0] GT_INT, EQ_INT, LT_INT;
mod_comp comp [15:0] (
    GT_INT[15:0], EQ_INT[15:0], LT_INT[15:0], //out
    A, B,
    GT_INT[16:1], EQ_INT[16:1], LT_INT[16:1]  //in
);

// Connect GT_IN, EQ_IN, LT_IN to GT_INT[16], EQ_INT[16], LT_INT[16]
mod_not buf_gt_in(GT_INT[16], ~GT_IN);
mod_not buf_eq_in(EQ_INT[16], ~EQ_IN);
mod_not buf_lt_in(LT_INT[16], ~LT_IN);

// ditto for output
mod_not buf_gt(GT, ~GT_INT[0]);
mod_not buf_eq(EQ, ~EQ_INT[0]);
mod_not buf_lt(LT, ~LT_INT[0]);

endmodule
