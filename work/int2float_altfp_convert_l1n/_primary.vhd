library verilog;
use verilog.vl_types.all;
entity int2float_altfp_convert_l1n is
    port(
        clock           : in     vl_logic;
        dataa           : in     vl_logic_vector(31 downto 0);
        result          : out    vl_logic_vector(31 downto 0)
    );
end int2float_altfp_convert_l1n;
