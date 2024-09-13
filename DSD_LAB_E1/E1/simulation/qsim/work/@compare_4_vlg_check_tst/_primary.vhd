library verilog;
use verilog.vl_types.all;
entity Compare_4_vlg_check_tst is
    port(
        Aout            : in     vl_logic;
        Bout            : in     vl_logic;
        eq              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Compare_4_vlg_check_tst;
