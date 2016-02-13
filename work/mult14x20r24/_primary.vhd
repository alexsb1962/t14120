library verilog;
use verilog.vl_types.all;
entity mult14x20r24 is
    port(
        dataa           : in     vl_logic_vector(13 downto 0);
        datab           : in     vl_logic_vector(19 downto 0);
        result          : out    vl_logic_vector(23 downto 0)
    );
end mult14x20r24;
