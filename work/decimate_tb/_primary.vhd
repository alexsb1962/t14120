library verilog;
use verilog.vl_types.all;
entity decimate_tb is
    generic(
        HALF_ADC        : real    := 4.166667;
        HALF_FFT        : real    := 12.500000
    );
end decimate_tb;
