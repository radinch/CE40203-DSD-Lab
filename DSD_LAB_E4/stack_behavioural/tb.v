module tb;
    reg clk;
    reg rstN;
    reg [3:0] data_in;
    reg push;
    reg pop;
    wire [3:0] data_out;
    wire full;
    wire empty;

    // Instantiate the stack
    stack_behavioural uut (
        .clk(clk),
        .rstN(rstN),
        .data_in(data_in),
        .push(push),
        .pop(pop),
        .data_out(data_out),
        .full(full),
        .empty(empty)
    );

    // Clock generation
    initial begin
        clk = 0;
    end

    always #5 clk = ~clk;

    // Test scenarios
    initial begin
        // Initialize signals
        rstN = 0;
        data_in = 0;
        push = 0;
        pop = 0;

        // Reset the stack
        #10 rstN = 1;

        // Test push operations
        $display("Testing Push Operations");
        #10 data_in = 4'b0001; push = 1; #10 push = 0;
        #10 data_in = 4'b0010; push = 1; #10 push = 0;
        #10 data_in = 4'b0011; push = 1; #10 push = 0;
        #10 data_in = 4'b0100; push = 1; #10 push = 0;
        #10 data_in = 4'b0101; push = 1; #10 push = 0;
        #10 data_in = 4'b0110; push = 1; #10 push = 0;
        #10 data_in = 4'b0111; push = 1; #10 push = 0;
        #10 data_in = 4'b1000; push = 1; #10 push = 0; // Stack should be full now

        // Test pop operations
        $display("Testing Pop Operations");
        #10 pop = 1; #10 pop = 0;
        #10 pop = 1; #10 pop = 0;
        #10 pop = 1; #10 pop = 0;
        #10 pop = 1; #10 pop = 0;
        #10 pop = 1; #10 pop = 0;
        #10 pop = 1; #10 pop = 0;
        #10 pop = 1; #10 pop = 0;
        #10 pop = 1; #10 pop = 0; // Stack should be empty now

        // Test push and pop simultaneously
        $display("Testing Push and Pop Simultaneously");
        #10 data_in = 4'b1010; push = 1; pop = 1; #10 push = 0; pop = 0;

        // Finish simulation
        #10 $stop;
    end

    // Monitor outputs
    initial begin
        $monitor("Time: %0t, clk: %b, rstN: %b, data_in: %b, push: %b, pop: %b, data_out: %b, full: %b, empty: %b", 
                 $time, clk, rstN, data_in, push, pop, data_out, full, empty);
    end
endmodule

