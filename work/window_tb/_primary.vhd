library verilog;
use verilog.vl_types.all;
entity window_tb is
    generic(
        HALF_ADC        : real    := 4.166667;
        HALF_FFT        : real    := 12.500000;
        HALF_NIOS       : real    := 5.000000
    );
end window_tb;
