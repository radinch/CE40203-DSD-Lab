module StackBasedProcessor
(
    input clk, rstN,
    input [7:0] data_in,
    output [7:0] data_out
);
    //Stack
    reg [7:0] stack [7:0];
    reg [2:0] stack_pointer;
    
    //Data memory
    reg [7:0] D_mem [255:0];

    //Instruction memory
    reg [0:11] I_mem [31:0];
    reg [4:0] program_counter;

    //flags
    reg SIGN = 0, ZERO = 0;

    //Instruction parts
    wire [3:0] opcode;
    wire [7:0] value;

    //add/sub results
    wire [7:0] add_res, sub_res;

    //Instructions
    parameter PUSHC = 0;
    parameter PUSH = 1;
    parameter POP = 2;
    parameter JUMP = 3;
    parameter JZ = 4;
    parameter JS = 5;
    parameter ADD = 6;
    parameter SUB = 7;

    assign opcode = I_mem[program_counter][0:3];
    assign value = I_mem[program_counter][4:11];
    assign add_res = stack[stack_pointer - 1] + stack[stack_pointer - 2];
    assign sub_res = stack[stack_pointer - 2] - stack[stack_pointer - 1];

    //Memory mapped I/O
    reg [7:0] addr_output = 255;
    reg [7:0] addr_input = 254;
    assign data_out = D_mem[addr_output];

    integer i;

    always @(posedge clk or negedge rstN) begin
        if (~rstN) begin
            SIGN = 0; ZERO = 0; program_counter = 0; stack_pointer  = 0;
            for (i = 0; i < 8; i = i + 1) begin
                stack[i] = 0;
            end
        end
        else begin
            program_counter = program_counter + 1;
            D_mem[addr_input]  = data_in;
            case (opcode)
                PUSHC: begin
                    stack[stack_pointer] = value;
                    stack_pointer = stack_pointer + 1;
                end
                PUSH: begin
                    stack[stack_pointer] = D_mem[value];
                    stack_pointer = stack_pointer + 1;
                end
                POP: begin
                    stack_pointer = stack_pointer - 1;
                    D_mem[value] = stack[stack_pointer]; 
                end
                JUMP: begin
                    stack_pointer = stack_pointer - 1;
                    program_counter = stack[stack_pointer];
                end
                JZ: begin
                    if(ZERO) begin
                        stack_pointer = stack_pointer - 1;
                        program_counter = stack[stack_pointer]; 
                    end
                end
                JS: begin
                    if(SIGN) begin
                        stack_pointer = stack_pointer - 1;
                        program_counter = stack[stack_pointer]; 
                    end
                end
                ADD: begin
                    stack_pointer = stack_pointer - 2;
                    stack[stack_pointer] = add_res;
                    stack_pointer = stack_pointer + 1;
                    if(add_res == 0) ZERO = 1'b1;
                    if($signed(add_res) < 0) SIGN = 1'b1;
                end
                SUB: begin
                    stack_pointer = stack_pointer - 2;
                    stack[stack_pointer] = sub_res;
                    stack_pointer = stack_pointer + 1;
                    if(sub_res == 0) ZERO = 1'b1;
                    if($signed(sub_res) < 0) SIGN = 1'b1;
                end
            endcase
        end
    end
endmodule
