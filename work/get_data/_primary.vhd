library verilog;
use verilog.vl_types.all;
entity get_data is
    port(
        adc_clk         : in     vl_logic;
        fft_clk         : in     vl_logic;
        nios_clk        : in     vl_logic;
        ctrl            : in     vl_logic_vector(7 downto 0);
        tune0           : in     vl_logic_vector(31 downto 0);
        tune1           : in     vl_logic_vector(31 downto 0);
        nios_data       : out    vl_logic_vector(31 downto 0);
        nios_ready      : in     vl_logic;
        nios_valid      : out    vl_logic;
        nios_sop        : out    vl_logic;
        nios_eop        : out    vl_logic
    );
end get_data;
