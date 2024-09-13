`include "macros.v"

module pipeline
(
    input clk,
    input rstN
);
    // IF_mem signals
    wire [1:0] ins_op;
    wire [4:0] ins_write_addr, ins_read_addr1, ins_read_addr2;

    // Data_mem signals
    wire `size_spec mem_read_data1, mem_read_data2; 
    reg `size_spec mem_write_data;
    reg  [4:0]  mem_read_addr1, mem_read_addr2, mem_write_addr;

    // ALU signals
    reg [1:0] alu_op;
    wire `size_spec alu_out;
    reg  `size_spec alu_read_data1, alu_read_data2;

    IF_mem IF(clk, rstN, ins_op, ins_write_addr, ins_read_addr1, ins_read_addr2);
    Data_mem MEM(mem_read_addr1, mem_read_addr2, mem_write_data, mem_write_addr, mem_read_data1, mem_read_data2);
    ALU alu(alu_read_data1, alu_read_data2, alu_op, alu_out);

    // tmp registers
    reg [1:0] tmp_op;
    reg [4:0] tmp1_write_addr, tmp2_write_addr;

    always @(posedge clk or negedge rstN) begin
        if (rstN) begin
            // IF
            tmp_op <= ins_op;
            tmp1_write_addr <= ins_write_addr;
            mem_read_addr1 <= ins_read_addr1;
            mem_read_addr2 <= ins_read_addr2;
            
            // MEM
            alu_read_data1 <= mem_read_data1;
            alu_read_data2 <= mem_read_data2;
            alu_op <= tmp_op;
            tmp2_write_addr <= tmp1_write_addr;

            // ALU
            mem_write_addr <= tmp2_write_addr;
            mem_write_data <= alu_out;
        end
end

endmodule
