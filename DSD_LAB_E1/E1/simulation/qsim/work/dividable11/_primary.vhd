library verilog;
use verilog.vl_types.all;
entity dividable11 is
    port(
        ans             : out    vl_logic;
        A3              : in     vl_logic_vector(3 downto 0);
        A1              : in     vl_logic_vector(3 downto 0);
        A2              : in     vl_logic_vector(3 downto 0);
        A0              : in     vl_logic_vector(3 downto 0)
    );
end dividable11;
