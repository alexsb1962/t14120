library verilog;
use verilog.vl_types.all;
entity flog_altpriority_encoder_6e8 is
    port(
        data            : in     vl_logic_vector(3 downto 0);
        q               : out    vl_logic_vector(1 downto 0);
        zero            : out    vl_logic
    );
end flog_altpriority_encoder_6e8;