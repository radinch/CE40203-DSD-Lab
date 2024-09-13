module stack_behavioural (
    input clk,
    input rstN,
    input [3:0] data_in,
    input push,
    input pop,
    output reg [3:0] data_out,
    output reg full,
    output reg empty
);

    reg [3:0] stack_mem [7:0];
    reg [3:0] stack_pointer = 0;

    integer i;

    always @(posedge clk or negedge rstN) begin
        if (!rstN) begin
            for (i = 0; i < 8; i = i + 1) begin
                stack_mem[i] <= 0;
            end
            stack_pointer <= 0;
            full <= 0;
            empty <= 1;
            data_out <= 0;
        end else begin
            if (push && !pop && !full) begin
                // Push operation
                stack_mem[stack_pointer] <= data_in;
                stack_pointer <= stack_pointer + 1;
            end else if (pop && !push && !empty) begin
                // Pop operation
                stack_pointer <= stack_pointer - 1;
                data_out <= stack_mem[stack_pointer];
            end

            // Update full and empty signals
            full <= (stack_pointer == 8);
            empty <= (stack_pointer == 0);
        end
    end

endmodule

