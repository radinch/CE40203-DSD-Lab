module SerialComparator (
    input wire clk,
    input wire reset,
    input wire a,
    input wire b,
    output wire lt, // less than
    output wire gt, // greater than
    output wire eq  // equal
);
    // Internal signals
    wire gt_in, lt_in, eq_in;

    //output inverted signals
    wire not_gt, not_eq, not_lt;

    assign lt_in = ((eq & ~a & b) | lt) & (~reset);
    assign gt_in = ((eq & a & ~b) | gt) & (~reset);
    assign eq_in = ((eq & (a == b)) & (~reset)) | (reset);

    assign lt = ~(not_lt & ~(clk & lt_in));
    assign not_lt = ~(lt & ~(clk & ~(lt_in)));

    assign gt = ~(not_gt & ~(clk & gt_in));
    assign not_gt = ~(gt & ~(clk & ~(gt_in)));

    assign eq = ~(not_eq & ~(clk & eq_in));
    assign not_eq = ~(eq & ~(clk & ~(eq_in)));
    
endmodule


