library verilog;
use verilog.vl_types.all;
entity flog_altbarrel_shift_j8e is
    port(
        aclr            : in     vl_logic;
        clk_en          : in     vl_logic;
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(31 downto 0);
        distance        : in     vl_logic_vector(4 downto 0);
        result          : out    vl_logic_vector(31 downto 0)
    );
end flog_altbarrel_shift_j8e;
