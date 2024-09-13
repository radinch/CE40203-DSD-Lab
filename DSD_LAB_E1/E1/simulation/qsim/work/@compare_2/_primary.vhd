library verilog;
use verilog.vl_types.all;
entity Compare_2 is
    port(
        equal           : out    vl_logic;
        x               : in     vl_logic_vector(1 downto 0);
        y               : in     vl_logic_vector(1 downto 0);
        y_out           : out    vl_logic;
        x_out           : out    vl_logic
    );
end Compare_2;
