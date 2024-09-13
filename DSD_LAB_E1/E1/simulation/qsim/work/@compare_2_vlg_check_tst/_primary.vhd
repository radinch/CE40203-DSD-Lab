library verilog;
use verilog.vl_types.all;
entity Compare_2_vlg_check_tst is
    port(
        equal           : in     vl_logic;
        x_out           : in     vl_logic;
        y_out           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Compare_2_vlg_check_tst;
