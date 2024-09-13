module OneBitComparator (
    input wire a,
    input wire b,
    input wire lt_in,
    input wire gt_in,
    input wire eq_in,
    output wire lt,
    output wire gt,
    output wire eq
);
    assign lt = (eq_in & ~a & b) | lt_in;
    assign gt = (eq_in & a & ~b) | gt_in;
    assign eq = eq_in & (a == b);
endmodule


