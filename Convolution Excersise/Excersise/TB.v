module TB();
    reg clk;
    reg rst;
    reg [31:0] data_in;
    reg [7:0] input_size;
    reg [7:0] filter_size;
    wire [31:0] data_out;
    wire done;
    wire [7:0] output_size;
    // Instantiate the convolution module
    ConvCalculator uut (
        .clk(clk),
        .rst(rst),
        .data_in(data_in),
        .input_size(input_size),
        .filter_size(filter_size),
        .data_out(data_out),
        .done(done),
        .output_size(output_size)
    );
    // Clock generation
    initial begin
        clk = 0;
    end
    always begin
        #5 clk = ~clk;
    end
    // Testbench variables
    integer i, j;
    reg [31:0] input_matrix [7:0][7:0];
    reg [31:0] filter_matrix [5:0][5:0];
    reg [31:0] output_matrix [2:0][2:0];

    initial begin
        // Initialize testbench
        rst = 1;
        data_in = 0;
        input_size = 8; // 4x4 input matrix
        filter_size = 6; // 2x2 filter matrix

        // Initialize input matrix with IEEE 754 representations
        input_matrix[0][0] = 32'h3f800000; // 1
        input_matrix[0][1] = 32'h3f800000; // 1
        input_matrix[0][2] = 32'h3f800000; // 1
        input_matrix[0][3] = 32'h3f800000; // 1
        input_matrix[0][4] = 32'h3f800000; // 1
        input_matrix[0][5] = 32'h3f800000; // 1
        input_matrix[0][6] = 32'h3f800000; // 1
        input_matrix[0][7] = 32'h3f800000; // 1
        
        input_matrix[1][0] = 32'h3fa00000; // 1.25
        input_matrix[1][1] = 32'h3fa00000; // 1.25
        input_matrix[1][2] = 32'h3fa00000; // 1.25
        input_matrix[1][3] = 32'h3fa00000; // 1.25
        input_matrix[1][4] = 32'h3fa00000; // 1.25
        input_matrix[1][5] = 32'h3fa00000; // 1.25
        input_matrix[1][6] = 32'h3fa00000; // 1.25
        input_matrix[1][7] = 32'h3fa00000; // 1.25

        input_matrix[2][0] = 32'h3fc00000; // 1.5
        input_matrix[2][1] = 32'h3fc00000; // 1.5
        input_matrix[2][2] = 32'h3fc00000; // 1.5
        input_matrix[2][3] = 32'h3fc00000; // 1.5
        input_matrix[2][4] = 32'h3fc00000; // 1.5
        input_matrix[2][5] = 32'h3fc00000; // 1.5
        input_matrix[2][6] = 32'h3fc00000; // 1.5
        input_matrix[2][7] = 32'h3fc00000; // 1.5

        input_matrix[3][0] = 32'h3fe00000; // 1.75
        input_matrix[3][1] = 32'h3fe00000; // 1.75
        input_matrix[3][2] = 32'h3fe00000; // 1.75
        input_matrix[3][3] = 32'h3fe00000; // 1.75
        input_matrix[3][4] = 32'h3fe00000; // 1.75
        input_matrix[3][5] = 32'h3fe00000; // 1.75
        input_matrix[3][6] = 32'h3fe00000; // 1.75
        input_matrix[3][7] = 32'h3fe00000; // 1.75

        input_matrix[4][0] = 32'h40000000; // 2
        input_matrix[4][1] = 32'h40000000; // 2
        input_matrix[4][2] = 32'h40000000; // 2
        input_matrix[4][3] = 32'h40000000; // 2
        input_matrix[4][4] = 32'h40000000; // 2
        input_matrix[4][5] = 32'h40000000; // 2
        input_matrix[4][6] = 32'h40000000; // 2
        input_matrix[4][7] = 32'h40000000; // 2
        
        input_matrix[5][0] = 32'h40100000; // 2.25
        input_matrix[5][1] = 32'h40100000; // 2.25
        input_matrix[5][2] = 32'h40100000; // 2.25
        input_matrix[5][3] = 32'h40100000; // 2.25
        input_matrix[5][4] = 32'h40100000; // 2.25
        input_matrix[5][5] = 32'h40100000; // 2.25
        input_matrix[5][6] = 32'h40100000; // 2.25
        input_matrix[5][7] = 32'h40100000; // 2.25

        input_matrix[6][0] = 32'h40200000; // 2.5
        input_matrix[6][1] = 32'h40200000; // 2.5
        input_matrix[6][2] = 32'h40200000; // 2.5
        input_matrix[6][3] = 32'h40200000; // 2.5
        input_matrix[6][4] = 32'h40200000; // 2.5
        input_matrix[6][5] = 32'h40200000; // 2.5
        input_matrix[6][6] = 32'h40200000; // 2.5
        input_matrix[6][7] = 32'h40200000; // 2.5

        input_matrix[7][0] = 32'h40300000; // 2.75
        input_matrix[7][1] = 32'h40300000; // 2.75
        input_matrix[7][2] = 32'h40300000; // 2.75
        input_matrix[7][3] = 32'h40300000; // 2.75
        input_matrix[7][4] = 32'h40300000; // 2.75
        input_matrix[7][5] = 32'h40300000; // 2.75
        input_matrix[7][6] = 32'h40300000; // 2.75
        input_matrix[7][7] = 32'h40300000; // 2.75

        // Initialize filter matrix with IEEE 754 representations
        filter_matrix[0][0] = 32'h3f800000; // 1.0
        filter_matrix[0][1] = 32'h00000000; // 0.0
        filter_matrix[0][2] = 32'h00000000; // 0.0
        filter_matrix[0][3] = 32'h00000000; // 0.0
        filter_matrix[0][4] = 32'h00000000; // 0.0
        filter_matrix[0][5] = 32'h00000000; // 0.0

        filter_matrix[1][0] = 32'h00000000; // 0.0
        filter_matrix[1][1] = 32'h3f800000; // 1.0
        filter_matrix[1][2] = 32'h00000000; // 0.0
        filter_matrix[1][3] = 32'h00000000; // 0.0
        filter_matrix[1][4] = 32'h00000000; // 0.0
        filter_matrix[1][5] = 32'h00000000; // 0.0

        filter_matrix[2][0] = 32'h00000000; // 0.0
        filter_matrix[2][1] = 32'h00000000; // 0.0
        filter_matrix[2][2] = 32'h3f800000; // 1.0
        filter_matrix[2][3] = 32'h00000000; // 0.0
        filter_matrix[2][4] = 32'h00000000; // 0.0
        filter_matrix[2][5] = 32'h00000000; // 0.0

        filter_matrix[3][0] = 32'h00000000; // 0.0
        filter_matrix[3][1] = 32'h00000000; // 0.0
        filter_matrix[3][2] = 32'h00000000; // 0.0
        filter_matrix[3][3] = 32'h3f800000; // 1.0
        filter_matrix[3][4] = 32'h00000000; // 0.0
        filter_matrix[3][5] = 32'h00000000; // 0.0

        filter_matrix[4][0] = 32'h00000000; // 0.0
        filter_matrix[4][1] = 32'h00000000; // 0.0
        filter_matrix[4][2] = 32'h00000000; // 0.0
        filter_matrix[4][3] = 32'h00000000; // 0.0
        filter_matrix[4][4] = 32'h3f800000; // 1.0
        filter_matrix[4][5] = 32'h00000000; // 0.0

        filter_matrix[5][0] = 32'h00000000; // 0.0
        filter_matrix[5][1] = 32'h00000000; // 0.0
        filter_matrix[5][2] = 32'h00000000; // 0.0
        filter_matrix[5][3] = 32'h00000000; // 0.0
        filter_matrix[5][4] = 32'h00000000; // 0.0
        filter_matrix[5][5] = 32'h3f800000; // 1.0
    

        // Deassert reset
        #10 rst = 0;

        // Load input matrix into the module
        for (i = 0; i < input_size; i = i + 1) begin
            for (j = 0; j < input_size; j = j + 1) begin
                @(posedge clk);
                data_in = input_matrix[i][j];
            end
        end
        
        #10
        // Load filter matrix into the module
        for (i = 0; i < filter_size; i = i + 1) begin
            for (j = 0; j < filter_size; j = j + 1) begin
                @(posedge clk);
                data_in = filter_matrix[i][j];
            end
        end

        // Wait for computation to finish
        wait(done);
        @(posedge clk)
        for (i = 0; i < input_size - filter_size + 1; i = i + 1) begin
            for (j = 0; j < input_size - filter_size + 1; j = j + 1) begin
                @(posedge clk);
                output_matrix[i][j] = data_out;
            end
        end


        // Print the output matrix
        $display("Output matrix:");
        for (i = 0; i < input_size - filter_size + 1; i = i + 1) begin
            for (j = 0; j < input_size - filter_size + 1; j = j + 1) begin
                $write("%h ", output_matrix[i][j]); // Print in hexadecimal format
            end
            $display("");
        end

        $write("output size: %d\n", output_size);

        $stop;
    end
endmodule

