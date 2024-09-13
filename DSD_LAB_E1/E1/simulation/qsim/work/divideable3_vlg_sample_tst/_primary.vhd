library verilog;
use verilog.vl_types.all;
entity divideable3_vlg_sample_tst is
    port(
        in0             : in     vl_logic_vector(3 downto 0);
        in1             : in     vl_logic_vector(3 downto 0);
        in2             : in     vl_logic_vector(3 downto 0);
        in3             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end divideable3_vlg_sample_tst;
