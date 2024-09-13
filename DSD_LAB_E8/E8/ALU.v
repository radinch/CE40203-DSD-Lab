`include "macros.v"

module ALU 
(
    input `size_spec a, b,
    input [1:0] alu_op,
    output `size_spec out
);
    wire `size_spec addsub_out, multiply_out;
    add_sub addsub(a,b, alu_op[0], addsub_out);
    multiply mul(a, b, multiply_out);

    assign out = alu_op[1] ? multiply_out : addsub_out;

endmodule
