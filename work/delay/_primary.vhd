library verilog;
use verilog.vl_types.all;
entity delay is
    generic(
        LEN             : integer := 42
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        bit             : in     vl_logic;
        delay_bit       : out    vl_logic
    );
end delay;
