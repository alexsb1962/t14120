library verilog;
use verilog.vl_types.all;
entity fft64_tb is
    generic(
        NUM_FRAMES_c    : integer := 4;
        MAXVAL_c        : integer := -2147483648;
        OFFSET_c        : integer := 0
    );
end fft64_tb;
