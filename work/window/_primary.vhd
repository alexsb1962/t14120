library verilog;
use verilog.vl_types.all;
entity window is
    generic(
        LEN             : integer := 8192;
        DFI             : integer := 128;
        LATENCY         : integer := 16
    );
    port(
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        sin_data        : in     vl_logic_vector(23 downto 0);
        cos_data        : in     vl_logic_vector(23 downto 0);
        source_ready    : in     vl_logic;
        source_sop      : out    vl_logic;
        source_eop      : out    vl_logic;
        source_valid    : out    vl_logic;
        sn              : out    vl_logic_vector(31 downto 0);
        cs              : out    vl_logic_vector(31 downto 0)
    );
end window;
