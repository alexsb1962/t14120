library verilog;
use verilog.vl_types.all;
entity flog_altpriority_encoder_r08 is
    port(
        data            : in     vl_logic_vector(15 downto 0);
        q               : out    vl_logic_vector(3 downto 0)
    );
end flog_altpriority_encoder_r08;
