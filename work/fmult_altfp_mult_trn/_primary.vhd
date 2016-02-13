library verilog;
use verilog.vl_types.all;
entity fmult_altfp_mult_trn is
    port(
        clock           : in     vl_logic;
        dataa           : in     vl_logic_vector(31 downto 0);
        datab           : in     vl_logic_vector(31 downto 0);
        result          : out    vl_logic_vector(31 downto 0)
    );
end fmult_altfp_mult_trn;
