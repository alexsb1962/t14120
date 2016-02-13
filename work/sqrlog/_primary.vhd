library verilog;
use verilog.vl_types.all;
entity sqrlog is
    generic(
        LEN             : integer := 8192
    );
    port(
        data            : out    vl_logic_vector(31 downto 0);
        nios_ready      : in     vl_logic;
        nios_valid      : out    vl_logic;
        nios_sop        : out    vl_logic;
        nios_eop        : out    vl_logic;
        nios_empty      : out    vl_logic_vector(1 downto 0);
        nios_clk        : in     vl_logic;
        fft_clk         : in     vl_logic;
        reset           : in     vl_logic;
        fft_re          : in     vl_logic_vector(31 downto 0);
        fft_im          : in     vl_logic_vector(31 downto 0);
        fft_valid       : in     vl_logic;
        fft_sop         : in     vl_logic;
        fft_eop         : in     vl_logic;
        fft_ready       : out    vl_logic
    );
end sqrlog;
