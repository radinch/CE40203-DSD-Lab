module TCAM
(
    input clk, rstN, r_e, w_e,
    input [15:0] data_in, mask, // if mask[i] == 1 then data_in[i] = x
    input [3:0] addr_in,
    output reg [15:0] matched_num,
    output reg match
);

    reg [15:0] data_mem [0:15];
    reg [15:0] mask_mem [0:15];

    // Vector for checking data validation
    reg [15:0] data_flag;

    integer i;
    always @(posedge clk or negedge rstN) begin
        if(~rstN) begin
            matched_num = 16'b0;
            match = 1'b0;
            for(i = 0; i <= 15; i = i + 1) begin
                data_mem[i] = 16'b0;
                mask_mem[i] = 16'b0;
                data_flag[i] = 1'b0;
            end
        end
        else if(w_e) begin
            data_mem[addr_in] = data_in;
            mask_mem[addr_in] = mask;
            data_flag[addr_in]  =1'b1;
        end
        else if(r_e) begin
            match = 1'b0;
            matched_num = 16'b0;
            for(i = 0; i <= 15; i = i + 1) begin
                if(data_flag[i] && (data_in & ~mask_mem[i]) == (data_mem[i] & ~mask_mem[i])) begin
                    matched_num = data_mem[i];
                    match = 1'b1;
                end
            end
        end
    end

endmodule
