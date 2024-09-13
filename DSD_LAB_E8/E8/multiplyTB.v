`include "macros.v"

module multiplyTB;
    reg `size_spec a, b;
    wire `size_spec out;

    multiply calculator(a, b, out);

    initial begin
        `Re(a) = -1;
        `Im(a) = 4;
        `Re(b) = 5;
        `Im(b) = -3;
        #10;
        $display("(%d, %d) * (%d, %d) = (%d, %d)",
                `signedRe(a), `signedIm(a), `signedRe(b), `signedIm(b), `signedRe(out), `signedIm(out));
        
        `Re(a) = 7;
        `Im(a) = 0;
        `Re(b) = 2;
        `Im(b) = -4;
        #10;
        $display("(%d, %d) * (%d, %d) = (%d, %d)",
                `signedRe(a), `signedIm(a), `signedRe(b), `signedIm(b), `signedRe(out), `signedIm(out));

        `Re(a) = 2;
        `Im(a) = 1;
        `Re(b) = 5;
        `Im(b) = -4;
        #10;
        $display("(%d, %d) * (%d, %d) = (%d, %d)",
                `signedRe(a), `signedIm(a), `signedRe(b), `signedIm(b), `signedRe(out), `signedIm(out));

        `Re(a) = 4;
        `Im(a) = 7;
        `Re(b) = -12;
        `Im(b) = -5;
        #10;
        $display("(%d, %d) * (%d, %d) = (%d, %d)",
                `signedRe(a), `signedIm(a), `signedRe(b), `signedIm(b), `signedRe(out), `signedIm(out));
        
        #10 $stop;
    end

endmodule
