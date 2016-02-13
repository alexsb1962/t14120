library verilog;
use verilog.vl_types.all;
entity flog_altfp_log_csa_d4b is
    port(
        dataa           : in     vl_logic_vector(11 downto 0);
        datab           : in     vl_logic_vector(11 downto 0);
        result          : out    vl_logic_vector(11 downto 0)
    );
end flog_altfp_log_csa_d4b;
