library verilog;
use verilog.vl_types.all;
entity flog_altfp_log_csa_umc is
    port(
        dataa           : in     vl_logic_vector(5 downto 0);
        datab           : in     vl_logic_vector(5 downto 0);
        result          : out    vl_logic_vector(5 downto 0)
    );
end flog_altfp_log_csa_umc;
