module pipelineTB;

reg rstN = 0;
reg clk = 0;
pipeline pl(clk, rstN);

always #5 clk = ~clk;

initial begin
    $readmemb("IF_INIT.txt", pl.IF.mem, 0, 14);
    $readmemb("DATA_INIT.txt", pl.MEM.mem, 0, 31);
    
    #40 rstN = 1;
    wait(pl.IF.pc == 15);
    $writememb("new_mem.txt", pl.MEM.mem);
    $stop;
end

endmodule
