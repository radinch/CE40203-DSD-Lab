`define instruction(address, opcode, value = 0)    processor.I_mem[address] = (opcode << 8) | value

module InfixCalculator
(
    input clk, rstN,
    input [7:0] data_in,
    output [7:0] data_out,
    output Exception
);
    StackBasedProcessor processor(clk, rstN, data_in, data_out);
    assign Exception = (data_in[7] == 1) || (data_out >= 128);

    // usefull parameters
    parameter temp_var = 0;
  

    initial begin 
        `instruction(0, processor.PUSH, processor.addr_input);  
        `instruction(1, processor.PUSHC,   23);          
        `instruction(2, processor.ADD);              
        `instruction(3, processor.POP, temp_var);        
        `instruction(4, processor.PUSH, temp_var);         
        `instruction(5, processor.PUSH, temp_var);        
        `instruction(6, processor.ADD);                
        `instruction(7, processor.PUSHC, 12);            
        `instruction(8, processor.SUB);                    
        `instruction(9, processor.POP, processor.addr_output);
    end
 

endmodule