library verilog;
use verilog.vl_types.all;
entity decimate is
    port(
        reset           : in     vl_logic;
        adc_clk         : in     vl_logic;
        fft_clk         : in     vl_logic;
        adc_data        : in     vl_logic_vector(13 downto 0);
        sg_tune         : in     vl_logic_vector(19 downto 0);
        sin_data        : out    vl_logic_vector(23 downto 0);
        cos_data        : out    vl_logic_vector(23 downto 0)
    );
end decimate;
