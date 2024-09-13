module tb;
    reg clk;
    reg reset;
    reg a;
    reg b;
    wire lt, gt, eq;

    // Instantiate the serial comparator
    SerialComparator uut (
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .lt(lt),
        .gt(gt),
        .eq(eq)
    );

    // initial clk = 0;
    // alwabs #5 clk = ~clk;
    initial begin
        // Monitor the changes in A, B, lt, gt, eq
        $monitor("Time: %0t, a = %b, b = %b, lt = %b, gt = %b, eq = %b", $time, a, b, lt, gt, eq);
        
        // Test1: a = 110 b = 101
        reset = 1;
        clk = 1;
        a = 1;
        b = 1;
        #5 
        clk = 0;
        #5
        reset = 0;
        clk = 1;
        #5
        clk = 0;
        #5
        a = 1;
        b = 0;
        clk = 1;
        #5
        clk = 0;
        #5
        a = 0;
        b = 1;
        clk = 1;
        #5
        clk = 0;
        #5

        // Test2: a = 111 b = 111
        reset = 1;
        clk = 1;
        a = 1;
        b = 1;
        #5 
        clk = 0;
        #5
        reset = 0;
        clk = 1;
        #5
        clk = 0;
        #5
        a = 1;
        b = 1;
        clk = 1;
        #5
        clk = 0;
        #5
        a = 1;
        b = 1;
        clk = 1;
        #5
        clk = 0;
        #5 

        // Test3: a = 000 b = 001
        reset = 1;
        clk = 1;
        a = 0;
        b = 0;
        #5 
        clk = 0;
        #5
        reset = 0;
        clk = 1;
        #5
        clk = 0;
        #5
        a = 0;
        b = 0;
        clk = 1;
        #5
        clk = 0;
        #5
        a = 0;
        b = 1;
        clk = 1;
        #5
        clk = 0;
        #5   

        $stop;
    end
endmodule