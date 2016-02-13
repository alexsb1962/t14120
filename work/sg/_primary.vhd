library verilog;
use verilog.vl_types.all;
entity sg is
    port(
        clk             : in     vl_logic;
        clken           : in     vl_logic;
        fcos_o          : out    vl_logic_vector(19 downto 0);
        fsin_o          : out    vl_logic_vector(19 downto 0);
        out_valid       : out    vl_logic;
        phi_inc_i       : in     vl_logic_vector(19 downto 0);
        reset_n         : in     vl_logic
    );
end sg;
