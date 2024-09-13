library verilog;
use verilog.vl_types.all;
entity Compare_4 is
    port(
        eq              : out    vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        Aout            : out    vl_logic;
        Bout            : out    vl_logic
    );
end Compare_4;
