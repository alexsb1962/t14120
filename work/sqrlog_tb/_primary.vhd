library verilog;
use verilog.vl_types.all;
entity sqrlog_tb is
    generic(
        HALF_NIOS_CYCLE : integer := 5;
        HALF_FFT_CYCLE  : real    := 12.500000;
        LEN             : integer := 64
    );
end sqrlog_tb;
