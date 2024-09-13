module TB;

    reg clk, rstN;
    reg [7:0] data_in;
    wire [7:0] data_out;
    wire Exception;

    InfixCalculator cal(clk, rstN, data_in, data_out, Exception);

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        rstN = 0;
        #10 
        rstN = 1;
        data_in = 10;
        wait(cal.processor.program_counter == 10);
        $display("((%d + 23) * 2) - 12 = %d, error = %b", $signed(data_in), $signed(data_out), Exception);

        #10
        rstN = 0;
        #10 
        rstN = 1;
        data_in = 41;
        wait(cal.processor.program_counter == 10);
        $display("((%d + 23) * 2) - 12 = %d, error = %b", $signed(data_in), $signed(data_out), Exception);

        #10
        rstN = 0;
        #10 
        rstN = 1;
        data_in = -13;
        wait(cal.processor.program_counter == 10);
        $display("((%d + 23) * 2) - 12 = %d, error = %b", $signed(data_in), $signed(data_out), Exception);

        #10
        rstN = 0;
        #10 
        rstN = 1;
        data_in = 140;
        wait(cal.processor.program_counter == 10);
        $display("((%d + 23) * 2) - 12 = %d, error = %b", $signed(data_in), $signed(data_out), Exception);
        
        $stop;
    end

endmodule
