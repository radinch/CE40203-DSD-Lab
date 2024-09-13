`include "macros.v"

module addsub_TB;
    
    reg `size_spec a, b;
    reg mode; // mode ? sub : add
    wire `size_spec out;

    add_sub calculator(a, b, mode, out);

    initial begin
        `Re(a) = -9;
        `Im(a) = 24;
        `Re(b) = 54;
        `Im(b) = -1;
        mode = 1;
        #10;
        $display("(%d, %d) - (%d, %d) = (%d, %d)",
                `signedRe(a), `signedIm(a), `signedRe(b), `signedIm(b), `signedRe(out), `signedIm(out));
        
        `Re(a) = 10;
        `Im(a) = 36;
        `Re(b) = 22;
        `Im(b) = -4;
        mode = 0;
        #10;
        $display("(%d, %d) + (%d, %d) = (%d, %d)",
                `signedRe(a), `signedIm(a), `signedRe(b), `signedIm(b), `signedRe(out), `signedIm(out));

        `Re(a) = 2;
        `Im(a) = 81;
        `Re(b) = 0;
        `Im(b) = 2;
        mode = 0;
        #10;
        $display("(%d, %d) + (%d, %d) = (%d, %d)",
                `signedRe(a), `signedIm(a), `signedRe(b), `signedIm(b), `signedRe(out), `signedIm(out));

        `Re(a) = 43;
        `Im(a) = 30;
        `Re(b) = -12;
        `Im(b) = -7;
        mode = 1;
        #10;
        $display("(%d, %d) - (%d, %d) = (%d, %d)",
                `signedRe(a), `signedIm(a), `signedRe(b), `signedIm(b), `signedRe(out), `signedIm(out));
        
        #10 $stop;
end

endmodule
