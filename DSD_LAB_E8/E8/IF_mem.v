module IF_mem
(
    input           clk,
    input           rstN,
    output  [1:0]   opcode,
    output  [4:0]   write_addr,
    output  [4:0]   read_addr1,    
    output  [4:0]   read_addr2 
);
    reg [0:16] mem [31:0]; // opcode: 2 bit, write_addr: 5 bit, read_addr1: 5 bit, read_addr2: 5 bit
    reg [4:0] pc;

    assign opcode = mem[pc][0:1];
    assign write_addr = mem[pc][2:6];
    assign read_addr1 = mem[pc][7:11];
    assign read_addr2 = mem[pc][12:16];

    always @(posedge clk or negedge rstN)
        if(!rstN) pc <= 0;
        else pc <= pc + 1;


endmodule
