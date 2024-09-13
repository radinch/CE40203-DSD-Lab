`include "macros.v"

module add_sub
(
    input `size_spec a, b,
    input mode, // mode ? sub : add
    output `size_spec out
);

    assign `Re(out) = mode ? `signedRe(a) - `signedRe(b) : `signedRe(a) + `signedRe(b);
    assign `Im(out) = mode ? `signedIm(a) - `signedIm(b) : `signedIm(a) + `signedIm(b);    

endmodule
