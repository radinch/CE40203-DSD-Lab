module UART #(
    parameter START_STOPN = 1
) (
    input rstN, clk, send,
    input [6:0]   sending_data,
    output s_out, sent, received,
    output [6:0] received_data,
    output parity_correctness
);
Sender #(START_STOPN) sender (rstN, clk, send, sending_data, s_out, sent);
Receiver #(START_STOPN) receiver (rstN, clk, s_out, received, parity_correctness, received_data);
    
endmodule
