library verilog;
use verilog.vl_types.all;
entity flog_altfp_log_csa_s0e is
    port(
        aclr            : in     vl_logic;
        clken           : in     vl_logic;
        clock           : in     vl_logic;
        dataa           : in     vl_logic_vector(38 downto 0);
        datab           : in     vl_logic_vector(38 downto 0);
        result          : out    vl_logic_vector(38 downto 0)
    );
end flog_altfp_log_csa_s0e;
