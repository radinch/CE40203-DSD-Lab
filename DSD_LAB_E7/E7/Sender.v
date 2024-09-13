module Sender # (parameter START_STOPN = 0) (
    input rstN, clk, start,
    input [6:0] dataIn,
    output reg signalOut, sent
);

// HELP REGISTERS
reg prev_start = 0;
reg [2:0] current_state;
reg [6:0] data;
reg [2:0] index_of_data; // number of bits have been transmitted minus one

// STATE SPECIFIER PARAMETERS
localparam REST = 0;
localparam START = 1;
localparam PARITY = 2;
localparam TRANSMIT = 3;
localparam STOP = 4;

// PARITY BIT : XOR OF DATA BITS
wire partiy_bit;
assign partiy_bit = ^data;

always @(posedge clk or negedge rstN) begin
    if (~rstN) begin // reset stage
        signalOut <= 0;
        sent <= 0;
        current_state <= REST;
        index_of_data <= 0;
        prev_start = 0;
    end
    else begin
		prev_start <= start;
        case (current_state)
            REST: begin
                if (start && prev_start == 0) begin
                    index_of_data <= 0; sent <= 0;
                    data <= dataIn;
                    current_state <= START;
                end
            end
            START: begin
                signalOut <= START_STOPN;
                current_state <= PARITY;
            end
            PARITY: begin
                signalOut <= partiy_bit;
                current_state <= TRANSMIT;
            end
            TRANSMIT: begin
                signalOut <= data[index_of_data];
                index_of_data <= index_of_data + 1;
                if (index_of_data >= 6)
                    current_state <= STOP;
            end
            STOP: begin
                signalOut <= ~START_STOPN;
                current_state <= REST;
                sent <= 1;
            end
            default: current_state <= REST;
        endcase
    end
end
    
endmodule
