library verilog;
use verilog.vl_types.all;
entity calc is
    port(
        clk             : in     vl_logic;
        fft_re          : in     vl_logic_vector(31 downto 0);
        fft_im          : in     vl_logic_vector(31 downto 0);
        result          : out    vl_logic_vector(31 downto 0);
        clk_en          : in     vl_logic
    );
end calc;
