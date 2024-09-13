library verilog;
use verilog.vl_types.all;
entity waitingRoom_vlg_check_tst is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        Close           : in     vl_logic;
        \Open\          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end waitingRoom_vlg_check_tst;
