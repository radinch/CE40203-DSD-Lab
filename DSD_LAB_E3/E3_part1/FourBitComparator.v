module FourBitComparator (
    input wire [3:0] A,
    input wire [3:0] B,
    output wire lt,
    output wire gt,
    output wire eq
);
    wire [3:0] lt_internal;
    wire [3:0] gt_internal;
    wire [3:0] eq_internal;
    
    // Instantiate the 1-bit comparators
    OneBitComparator comp3 (
        .a(A[3]), .b(B[3]), .lt_in(1'b0), .gt_in(1'b0), .eq_in(1'b1), 
        .lt(lt_internal[3]), .gt(gt_internal[3]), .eq(eq_internal[3])
    );
    OneBitComparator comp2 (
        .a(A[2]), .b(B[2]), .lt_in(lt_internal[3]), .gt_in(gt_internal[3]), .eq_in(eq_internal[3]), 
        .lt(lt_internal[2]), .gt(gt_internal[2]), .eq(eq_internal[2])
    );
    OneBitComparator comp1 (
        .a(A[1]), .b(B[1]), .lt_in(lt_internal[2]), .gt_in(gt_internal[2]), .eq_in(eq_internal[2]), 
        .lt(lt_internal[1]), .gt(gt_internal[1]), .eq(eq_internal[1])
    );
    OneBitComparator comp0 (
        .a(A[0]), .b(B[0]), .lt_in(lt_internal[1]), .gt_in(gt_internal[1]), .eq_in(eq_internal[1]), 
        .lt(lt_internal[0]), .gt(gt_internal[0]), .eq(eq_internal[0])
    );

    // The final lt, gt, and eq outputs
    assign lt = lt_internal[0];
    assign gt = gt_internal[0];
    assign eq = eq_internal[0];
endmodule


