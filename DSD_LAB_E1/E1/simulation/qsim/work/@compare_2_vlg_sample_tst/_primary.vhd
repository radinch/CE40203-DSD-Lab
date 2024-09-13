library verilog;
use verilog.vl_types.all;
entity Compare_2_vlg_sample_tst is
    port(
        x               : in     vl_logic_vector(1 downto 0);
        y               : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end Compare_2_vlg_sample_tst;
