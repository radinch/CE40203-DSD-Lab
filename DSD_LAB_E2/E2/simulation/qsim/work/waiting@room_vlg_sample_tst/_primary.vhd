library verilog;
use verilog.vl_types.all;
entity waitingRoom_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        Ent             : in     vl_logic;
        \IN\            : in     vl_logic;
        \OUT\           : in     vl_logic;
        set             : in     vl_logic;
        T               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end waitingRoom_vlg_sample_tst;
