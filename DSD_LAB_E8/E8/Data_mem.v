`include "macros.v"

module Data_mem
(
    input   [4:0]       read_addr1,
    input   [4:0]       read_addr2,
    input   `size_spec  write_data,
    input   [4:0]       write_addr,
    output  `size_spec    read_data1,
    output  `size_spec    read_data2
);

reg `size_spec mem [31:0];

assign read_data1 = mem[read_addr1];
assign read_data2 = mem[read_addr2];
always @(*) begin
   mem[write_addr] <= write_data; 
end

endmodule
