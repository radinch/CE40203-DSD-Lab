`include "macros.v"

module multiply
(
    input `size_spec a, b,
    output `size_spec out
);
    assign `Re(out) = `signedRe(a) * `signedRe(b) - `signedIm(a) * `signedIm(b);
    assign `Im(out) = `signedRe(a) * `signedIm(b) + `signedIm(a) * `signedRe(b);

endmodule
