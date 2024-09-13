library verilog;
use verilog.vl_types.all;
entity waitingRoom is
    port(
        \Open\          : out    vl_logic;
        T               : in     vl_logic;
        Ent             : in     vl_logic;
        \IN\            : in     vl_logic;
        set             : in     vl_logic;
        clk             : in     vl_logic;
        \OUT\           : in     vl_logic;
        clr             : in     vl_logic;
        Close           : out    vl_logic;
        A               : out    vl_logic_vector(3 downto 0)
    );
end waitingRoom;
