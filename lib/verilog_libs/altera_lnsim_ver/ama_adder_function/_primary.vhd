library verilog;
use verilog.vl_types.all;
entity ama_adder_function is
    generic(
        width_data_in   : integer := 1;
        width_data_out  : integer := 1;
        number_of_adder_input: integer := 1;
        adder1_direction: string  := "UNUSED";
        adder3_direction: string  := "UNUSED";
        representation  : string  := "UNSIGNED"
    );
    port(
        data_in_0       : in     vl_logic_vector;
        data_in_1       : in     vl_logic_vector;
        data_in_2       : in     vl_logic_vector;
        data_in_3       : in     vl_logic_vector;
        data_out        : out    vl_logic_vector
    );
end ama_adder_function;
