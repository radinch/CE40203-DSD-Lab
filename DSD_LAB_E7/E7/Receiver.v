module Receiver # (parameter START_STOPN = 0) (
    input rstN, clk, serial_in,
    output reg received,
    output parity_correctness,
    output reg [6:0] data
);

wire        correct_parity;
reg [1:0]   current_state;
reg [2:0]   index_of_data;
reg         received_parity;

localparam REST = 0;
localparam PARITY = 1;
localparam RECEIVE = 2;
localparam STOP = 3;

assign correct_parity = ^data;
assign parity_correctness = received_parity == correct_parity;

always @(posedge clk or negedge rstN) begin
    if (~rstN) begin
        index_of_data <= 0; received <= 0;
        data <= 0;
        current_state <= REST;
    end
    else begin
        case (current_state)
            REST: begin
                if (serial_in == START_STOPN) begin
                    index_of_data <= 0; data <= 0;
                    current_state <= PARITY;
                    received <= 0;
                end
            end
            PARITY: begin
                received_parity <= serial_in;
                current_state <= RECEIVE;
            end
            RECEIVE: begin
                data[index_of_data] <= serial_in;
                index_of_data <= index_of_data + 1;
                if (index_of_data >= 6) begin
                    current_state <= STOP;
                end
            end
            STOP: begin
                current_state <= REST;
                received <= 1;
            end
            default: current_state <= REST;
        endcase
    end
end

endmodule
