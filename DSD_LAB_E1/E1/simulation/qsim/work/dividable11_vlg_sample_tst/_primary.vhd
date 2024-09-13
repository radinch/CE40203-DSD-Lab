library verilog;
use verilog.vl_types.all;
entity dividable11_vlg_sample_tst is
    port(
        A0              : in     vl_logic_vector(3 downto 0);
        A1              : in     vl_logic_vector(3 downto 0);
        A2              : in     vl_logic_vector(3 downto 0);
        A3              : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end dividable11_vlg_sample_tst;
