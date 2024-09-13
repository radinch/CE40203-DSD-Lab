module TB;
    reg clk, rstN, r_e, w_e;
    reg [15:0] data_in, mask;
    reg [3:0] addr_in;
    wire [15:0] matched_num;
    wire match;

    TCAM tc(clk, rstN, r_e, w_e, data_in, mask, addr_in, matched_num, match);

    initial clk = 1'b0;
    always #5 clk = ~clk;

    initial begin
        rstN = 1'b0;
        r_e = 1'b0; w_e = 1'b0; data_in = 16'h0000; mask = 16'h0000; addr_in = 4'h0;

        #10 rstN = 1'b1;

        #10 r_e = 1'b0; w_e = 1'b1; data_in = 16'hABCD; mask = 16'h0F0F; addr_in = 4'h0;
        #10 w_e = 1'b0;
        
        #10 r_e = 1'b0; w_e = 1'b1; data_in = 16'hCDEF; mask = 16'hFF00; addr_in = 4'h1;
        #10 w_e = 1'b0;

        #10 r_e = 1'b0; w_e = 1'b1; data_in = 16'h50C9; mask = 16'hC32C; addr_in = 4'h2;
        #10 w_e = 1'b0;

        #10 r_e = 1'b1; w_e = 1'b0; data_in = 16'hAFC2;
        #10 r_e = 1'b0;

        if (match) begin
            $display("Matched: %h", matched_num);
        end else begin
            $display("Not matched!");
        end

        #10 r_e = 1'b1; w_e = 1'b0; data_in = 16'hD3C9;
        #10 r_e = 1'b0;

        if (match) begin
            $display("Matched: %h", matched_num);
        end else begin
            $display("Not matched!");
        end

        #10 r_e = 1'b1; w_e = 1'b0; data_in = 16'hCDFE;
        #10 r_e = 1'b0;

        if (match) begin
            $display("Matched: %h", matched_num);
        end else begin
            $display("Not matched!");
        end

        #10 $stop;

    end
endmodule
