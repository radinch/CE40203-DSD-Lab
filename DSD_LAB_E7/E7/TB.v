module TB;
    localparam START_STOPN = 1;

    reg rstN, clk;
    reg send_1;
    reg [6:0] send_data_1;

    wire sent_1, sent_2;
    wire received_1, received_2;
    wire [6:0] received_data_1, received_data_2;
    wire check_1, check_2;
    wire s_out1, s_out2;
    
    UART #(START_STOPN) U1 (rstN, clk, send_1, send_data_1,s_out1, sent_1, received_1, received_data_1, check_1);
    UART #(START_STOPN) U2 (rstN, clk, received_1, received_data_1, s_out2, sent_2, received_2, received_data_2, check_2);

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        rstN = 0;
        #220
        rstN = 1;
        send_data_1 = "H";
        send_1 = 1;
        #220
        send_1 = 0;
        #220
        send_data_1 = "E";
        send_1 = 1;
        #220
        send_1 = 0;
        #220
        send_data_1 = "L";
        send_1 = 1;
        #220
        send_1 = 0;
        #220
        send_data_1 = "L";
        send_1 = 1;
        #220
        send_1 = 0;
        #220
        send_data_1 = "O";
        send_1 = 1;
        #220
        send_1 = 0;
        #320
        $stop;
    end
    


endmodule
