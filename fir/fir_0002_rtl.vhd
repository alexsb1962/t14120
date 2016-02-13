----------------------------------------------------------------------------- 
-- Altera DSP Builder Advanced Flow Tools Release Version 0.0.0 (Built: TIMESTAMP_ADDED_DURING_BUILD)
-- Quartus II development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: � 2010 Altera Corporation.  All rights reserved. Your use of 
-- Altera  Corporation's design tools, logic functions and other software and 
-- tools, and its AMPP  partner logic functions, and  any output files any of 
-- the  foregoing device programming or simulation files), and any associated 
-- documentation  or  information  are  expressly  subject  to  the terms and 
-- conditions of the  Altera  Program License  Subscription Agreement, Altera 
-- MegaCore Function License Agreement, or other applicable license agreement,
-- including, without  limitation, that  your use  is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by Altera or its 
-- authorized  distributors.  Please refer to  the  applicable  agreement for 
-- further details.
----------------------------------------------------------------------------- 

-- VHDL created from fir_0002_rtl
-- VHDL created on Sun Jul 22 23:20:41 2012


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

-- Text written from d:/SJ/nightly/11.0sp1/208/w32/p4/ip/aion/src/mip_common/hw_model.cpp:1272
entity fir_0002_rtl is
    port (
        xIn_v : in std_logic_vector(0 downto 0);
        xIn_c : in std_logic_vector(7 downto 0);
        xIn_0 : in std_logic_vector(13 downto 0);
        xOut_v : out std_logic_vector(0 downto 0);
        xOut_c : out std_logic_vector(7 downto 0);
        xOut_0 : out std_logic_vector(33 downto 0);
        clk : in std_logic;
        areset : in std_logic;
        bus_clk : in std_logic;
        h_areset : in std_logic
        );
end;

architecture normal of fir_0002_rtl is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name NOT_GATE_PUSH_BACK OFF; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410";

    signal GND_q : std_logic_vector (0 downto 0);
    signal VCC_q : std_logic_vector (0 downto 0);
    signal d_xIn_0_14_q : std_logic_vector (13 downto 0);
    signal d_xIn_0_14_v_0 : std_logic_vector (13 downto 0);
    signal d_xIn_0_14_v_1 : std_logic_vector (13 downto 0);
    signal d_xIn_0_14_v_2 : std_logic_vector (13 downto 0);
    signal d_in0_m0_wi0_wo0_assign_sel_q_13_q : std_logic_vector (0 downto 0);
    signal d_in0_m0_wi0_wo0_assign_sel_q_13_v_0 : std_logic_vector (0 downto 0);
    signal d_in0_m0_wi0_wo0_assign_sel_q_13_v_1 : std_logic_vector (0 downto 0);
    signal d_in0_m0_wi0_wo0_assign_sel_q_14_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_run_count : std_logic_vector (3 downto 0);
    signal u0_m0_wo0_run_pre_ena_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_run_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_run_out : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_run_enable_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_run_enable_eq : std_logic;
    signal u0_m0_wo0_run_ctrl : std_logic_vector(2 downto 0);
    signal u0_m0_wo0_memread_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_memread_q_13_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_compute_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_compute_v_0 : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_compute_q_14_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_compute_q_15_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_compute_q_19_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_compute_q_19_v_0 : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_compute_q_19_v_1 : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_compute_q_19_v_2 : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_compute_q_20_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_wi0_rdAddr0_count_0_q : std_logic_vector (3 downto 0);
    signal u0_m0_wo0_wi0_rdAddr0_count_0_eq : std_logic;
    signal u0_m0_wo0_wi0_rdAddr0_count_0_lut_q : std_logic_vector(3 downto 0);
    signal u0_m0_wo0_wi0_rdAddr8_count_0_q : std_logic_vector (4 downto 0);
    signal u0_m0_wo0_wi0_rdAddr8_count_0_eq : std_logic;
    signal u0_m0_wo0_wi0_rdAddr8_count_0_lut_q : std_logic_vector(4 downto 0);
    signal u0_m0_wo0_wi0_wrAddr0_q : std_logic_vector (2 downto 0);
    signal u0_m0_wo0_wi0_wrAddr0_eq : std_logic;
    signal u0_m0_wo0_wi0_we6_seq_q : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_wi0_we6_seq_eq : std_logic;
    signal u0_m0_wo0_wi0_wrAddr8_q : std_logic_vector (3 downto 0);
    signal u0_m0_wo0_wi0_wrAddr8_eq : std_logic;
    signal u0_m0_wo0_wi0_delayr0_reset0 : std_logic;
    signal u0_m0_wo0_wi0_delayr0_iq : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr0_ia : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr0_ir : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr0_aa : std_logic_vector (2 downto 0);
    signal u0_m0_wo0_wi0_delayr0_ab : std_logic_vector (2 downto 0);
    signal u0_m0_wo0_wi0_delayr0_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr6_reset0 : std_logic;
    signal u0_m0_wo0_wi0_delayr6_iq : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr6_ia : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr6_ir : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr6_aa : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_wi0_delayr6_ab : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_wi0_delayr6_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr8_reset0 : std_logic;
    signal u0_m0_wo0_wi0_delayr8_iq : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr8_ia : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr8_ir : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr8_aa : std_logic_vector (3 downto 0);
    signal u0_m0_wo0_wi0_delayr8_ab : std_logic_vector (3 downto 0);
    signal u0_m0_wo0_wi0_delayr8_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr1_q : std_logic_vector (55 downto 0);
    signal u0_m0_wo0_wi0_delayr1_v_0 : std_logic_vector (55 downto 0);
    signal u0_m0_wo0_wi0_delayr1_v_1 : std_logic_vector (55 downto 0);
    signal d_u0_m0_wo0_wi0_split5_b_16_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_split5_b_16_v_0 : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr5_q : std_logic_vector (55 downto 0);
    signal u0_m0_wo0_wi0_delayr5_v_0 : std_logic_vector (55 downto 0);
    signal u0_m0_wo0_wi0_delayr5_v_1 : std_logic_vector (55 downto 0);
    signal u0_m0_wo0_wi0_delayr12_q : std_logic_vector (27 downto 0);
    signal u0_m0_wo0_wi0_delayr12_v_0 : std_logic_vector (27 downto 0);
    signal u0_m0_wo0_wi0_delayr12_v_1 : std_logic_vector (27 downto 0);
    signal u0_m0_wo0_ca0_q : std_logic_vector (1 downto 0);
    signal u0_m0_wo0_ca0_eq : std_logic;
    signal d_u0_m0_wo0_ca0_q_15_q : std_logic_vector (1 downto 0);
    signal u0_m0_wo0_cm0_q : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_cm1_q : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_cm2_q : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_cm3_q : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_cm4_q : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_cm5_q : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_cm6_q : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_sym_add0_a : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add0_b : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add0_o : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add0_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add1_a : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add1_b : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add1_o : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add1_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add2_a : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add2_b : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add2_o : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add2_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add3_a : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add3_b : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add3_o : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add3_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add4_a : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add4_b : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add4_o : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add4_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add5_a : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add5_b : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add5_o : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_sym_add5_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_a : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_b : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_s1 : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_6_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_a : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_b : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_s1 : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_5_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_a : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_b : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_s1 : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_4_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_a : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_b : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_s1 : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_3_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_a : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_b : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_s1 : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_2_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_a : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_b : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_s1 : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_1_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_a : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_b : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_s1 : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_q : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_add0_0_a : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add0_0_b : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add0_0_o : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add0_0_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add0_1_a : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add0_1_b : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add0_1_o : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add0_1_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add0_2_a : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add0_2_b : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add0_2_o : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add0_2_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add1_0_a : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add1_0_b : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add1_0_o : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add1_0_q : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add1_1_a : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add1_1_b : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add1_1_o : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add1_1_q : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_add2_0_a : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_add2_0_b : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_add2_0_o : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_add2_0_q : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_aseq_q : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_aseq_eq : std_logic;
    signal u0_m0_wo0_accum_a : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_accum_b : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_accum_i : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_accum_o : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_accum_q : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_accum_reset : std_logic;
    COMPONENT fir_0002_rtl_AddWithSload IS
        GENERIC (
        L : INTEGER;
        SIMULATION : STRING := "FALSE";
        OPTIMIZED : STRING := "FALSE"
    );
    PORT (
        clk, reset : IN STD_LOGIC;
        ena : IN STD_LOGIC := '1';
        sreset : IN STD_LOGIC := '0';
        sload : IN STD_LOGIC;
        loadval_in : IN STD_LOGIC_VECTOR(L-1 DOWNTO 0);
        doAddnSub : IN STD_LOGIC := '1';
        addL_in : IN STD_LOGIC_VECTOR(L-1 DOWNTO 0);
        addR_in : IN STD_LOGIC_VECTOR(L-1 DOWNTO 0);
        sum_out : OUT STD_LOGIC_VECTOR(L-1 DOWNTO 0)
    );
    END COMPONENT;
    signal u0_m0_wo0_oseq_q : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_oseq_eq : std_logic;
    signal u0_m0_wo0_oseq_gated_reg_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_oseq_gated_a : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_oseq_gated_b : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_oseq_gated_q : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_wi0_split1_in : std_logic_vector (55 downto 0);
    signal u0_m0_wo0_wi0_split1_b : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_split1_c : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_split1_d : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_split1_e : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_split5_in : std_logic_vector (55 downto 0);
    signal u0_m0_wo0_wi0_split5_b : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_split5_c : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_split5_d : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_split5_e : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_split12_in : std_logic_vector (27 downto 0);
    signal u0_m0_wo0_wi0_split12_b : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_split12_c : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_join1_q : std_logic_vector (55 downto 0);
    signal u0_m0_wo0_wi0_join5_q : std_logic_vector (55 downto 0);
    signal u0_m0_wo0_wi0_join12_q : std_logic_vector (27 downto 0);
begin


	--GND(CONSTANT,1)@13
    GND_q <= "0";

	--VCC(CONSTANT,2)@0
    VCC_q <= "1";

	--xIn(PORTIN,3)@10

	--d_xIn_0_14(DELAY,79)@10
    d_xIn_0_14: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_14_v_0 <= (others => '0');
            d_xIn_0_14_v_1 <= (others => '0');
            d_xIn_0_14_v_2 <= (others => '0');
            d_xIn_0_14_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            d_xIn_0_14_v_0 <= xIn_0;
            d_xIn_0_14_v_1 <= d_xIn_0_14_v_0;
            d_xIn_0_14_v_2 <= d_xIn_0_14_v_1;
            d_xIn_0_14_q <= d_xIn_0_14_v_2;
        END IF;
    END PROCESS;


	--d_in0_m0_wi0_wo0_assign_sel_q_13(DELAY,80)@10
    d_in0_m0_wi0_wo0_assign_sel_q_13: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_in0_m0_wi0_wo0_assign_sel_q_13_v_0 <= (others => '0');
            d_in0_m0_wi0_wo0_assign_sel_q_13_v_1 <= (others => '0');
            d_in0_m0_wi0_wo0_assign_sel_q_13_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            d_in0_m0_wi0_wo0_assign_sel_q_13_v_0 <= xIn_v;
            d_in0_m0_wi0_wo0_assign_sel_q_13_v_1 <= d_in0_m0_wi0_wo0_assign_sel_q_13_v_0;
            d_in0_m0_wi0_wo0_assign_sel_q_13_q <= d_in0_m0_wi0_wo0_assign_sel_q_13_v_1;
        END IF;
    END PROCESS;


	--d_in0_m0_wi0_wo0_assign_sel_q_14(DELAY,81)@13
    d_in0_m0_wi0_wo0_assign_sel_q_14: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_in0_m0_wi0_wo0_assign_sel_q_14_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            d_in0_m0_wi0_wo0_assign_sel_q_14_q <= d_in0_m0_wi0_wo0_assign_sel_q_13_q;
        END IF;
    END PROCESS;


	--u0_m0_wo0_run(ENABLEGENERATOR,6)@10
    u0_m0_wo0_run_ctrl <= u0_m0_wo0_run_out & xIn_v & u0_m0_wo0_run_enable_q;
    u0_m0_wo0_run: PROCESS (clk, areset)
        variable u0_m0_wo0_run_enable_c : signed (1 downto 0);
        variable u0_m0_wo0_run_inc : signed (3 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_run_q <= "0";
            u0_m0_wo0_run_enable_c := "01";
            u0_m0_wo0_run_enable_q <= "0";
            u0_m0_wo0_run_enable_eq <= '0';
            u0_m0_wo0_run_count <= "0000";
            u0_m0_wo0_run_inc := (OTHERS => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_run_out = "1") THEN
                IF (u0_m0_wo0_run_enable_c = "00") THEN
                    u0_m0_wo0_run_enable_eq <= '1';
                ELSE
                    u0_m0_wo0_run_enable_eq <= '0';
                END IF;
                IF (u0_m0_wo0_run_enable_eq = '1') THEN
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c + 2;
                ELSE
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c - 1;
                END IF;
                u0_m0_wo0_run_enable_q <= STD_LOGIC_VECTOR(u0_m0_wo0_run_enable_c(1 DOWNTO 1));
            ELSE
                u0_m0_wo0_run_enable_q <= "0";
            END IF;
            CASE u0_m0_wo0_run_ctrl is
                WHEN "000" | "001" =>
                    u0_m0_wo0_run_inc := "0000";
                WHEN "010" | "011" =>
                    u0_m0_wo0_run_inc := "1111";
                WHEN "100" =>
                    u0_m0_wo0_run_inc := "0000";
                WHEN "101" =>
                    u0_m0_wo0_run_inc := "0011";
                WHEN "110" =>
                    u0_m0_wo0_run_inc := "1111";
                WHEN "111" =>
                    u0_m0_wo0_run_inc := "0010";
                WHEN OTHERS =>
            END CASE;
            u0_m0_wo0_run_count <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_run_count) + SIGNED(u0_m0_wo0_run_inc));
            u0_m0_wo0_run_q <= u0_m0_wo0_run_out;
        END IF;
    END PROCESS;
    u0_m0_wo0_run_pre_ena_q <= u0_m0_wo0_run_count(3 downto 3);
    u0_m0_wo0_run_out <= u0_m0_wo0_run_pre_ena_q AND VCC_q;

	--u0_m0_wo0_memread(DELAY,7)@12
    u0_m0_wo0_memread: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_memread_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_memread_q <= u0_m0_wo0_run_q;
        END IF;
    END PROCESS;


	--d_u0_m0_wo0_memread_q_13(DELAY,82)@12
    d_u0_m0_wo0_memread_q_13: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_u0_m0_wo0_memread_q_13_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            d_u0_m0_wo0_memread_q_13_q <= u0_m0_wo0_memread_q;
        END IF;
    END PROCESS;


	--u0_m0_wo0_compute(DELAY,8)@13
    u0_m0_wo0_compute: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_compute_v_0 <= (others => '0');
            u0_m0_wo0_compute_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_compute_v_0 <= d_u0_m0_wo0_memread_q_13_q;
            u0_m0_wo0_compute_q <= u0_m0_wo0_compute_v_0;
        END IF;
    END PROCESS;


	--d_u0_m0_wo0_compute_q_14(DELAY,83)@13
    d_u0_m0_wo0_compute_q_14: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_u0_m0_wo0_compute_q_14_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            d_u0_m0_wo0_compute_q_14_q <= u0_m0_wo0_compute_q;
        END IF;
    END PROCESS;


	--d_u0_m0_wo0_compute_q_15(DELAY,84)@14
    d_u0_m0_wo0_compute_q_15: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_u0_m0_wo0_compute_q_15_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            d_u0_m0_wo0_compute_q_15_q <= d_u0_m0_wo0_compute_q_14_q;
        END IF;
    END PROCESS;


	--d_u0_m0_wo0_compute_q_19(DELAY,85)@15
    d_u0_m0_wo0_compute_q_19: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_u0_m0_wo0_compute_q_19_v_0 <= (others => '0');
            d_u0_m0_wo0_compute_q_19_v_1 <= (others => '0');
            d_u0_m0_wo0_compute_q_19_v_2 <= (others => '0');
            d_u0_m0_wo0_compute_q_19_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            d_u0_m0_wo0_compute_q_19_v_0 <= d_u0_m0_wo0_compute_q_15_q;
            d_u0_m0_wo0_compute_q_19_v_1 <= d_u0_m0_wo0_compute_q_19_v_0;
            d_u0_m0_wo0_compute_q_19_v_2 <= d_u0_m0_wo0_compute_q_19_v_1;
            d_u0_m0_wo0_compute_q_19_q <= d_u0_m0_wo0_compute_q_19_v_2;
        END IF;
    END PROCESS;


	--d_u0_m0_wo0_compute_q_20(DELAY,86)@19
    d_u0_m0_wo0_compute_q_20: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_u0_m0_wo0_compute_q_20_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            d_u0_m0_wo0_compute_q_20_q <= d_u0_m0_wo0_compute_q_19_q;
        END IF;
    END PROCESS;


	--u0_m0_wo0_wi0_rdAddr0_count_0(COUNTER,9)@12
    u0_m0_wo0_wi0_rdAddr0_count_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_rdAddr0_count_0_q <= "0101";
            u0_m0_wo0_wi0_rdAddr0_count_0_eq <= '1';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                    IF u0_m0_wo0_wi0_rdAddr0_count_0_q = "0100" THEN
                      u0_m0_wo0_wi0_rdAddr0_count_0_eq <= '1';
                    ELSE
                      u0_m0_wo0_wi0_rdAddr0_count_0_eq <= '0';
                    END IF;
                    IF (u0_m0_wo0_wi0_rdAddr0_count_0_eq = '1') THEN
                        u0_m0_wo0_wi0_rdAddr0_count_0_q <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_rdAddr0_count_0_q) - "0101");
                    ELSE
                        u0_m0_wo0_wi0_rdAddr0_count_0_q <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_rdAddr0_count_0_q) + "0001");
                    END IF;
            END IF;
        END IF;
    END PROCESS;


	--u0_m0_wo0_wi0_rdAddr0_count_0_lut(LOOKUP,10)@13
    u0_m0_wo0_wi0_rdAddr0_count_0_lut: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_rdAddr0_count_0_lut_q <= "0001";
        ELSIF(clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_wi0_rdAddr0_count_0_q) IS
                WHEN "0000" =>
                    u0_m0_wo0_wi0_rdAddr0_count_0_lut_q <= "0001";
                WHEN "0001" =>
                    u0_m0_wo0_wi0_rdAddr0_count_0_lut_q <= "0010";
                WHEN "0010" =>
                    u0_m0_wo0_wi0_rdAddr0_count_0_lut_q <= "0011";
                WHEN "0011" =>
                    u0_m0_wo0_wi0_rdAddr0_count_0_lut_q <= "0100";
                WHEN "0100" =>
                    u0_m0_wo0_wi0_rdAddr0_count_0_lut_q <= "0101";
                WHEN "0101" =>
                    u0_m0_wo0_wi0_rdAddr0_count_0_lut_q <= "0000";
                WHEN OTHERS => -- unreachable
                    u0_m0_wo0_wi0_rdAddr0_count_0_lut_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;


	--u0_m0_wo0_wi0_rdAddr8_count_0(COUNTER,13)@12
    u0_m0_wo0_wi0_rdAddr8_count_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_rdAddr8_count_0_q <= "01000";
            u0_m0_wo0_wi0_rdAddr8_count_0_eq <= '1';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                    IF u0_m0_wo0_wi0_rdAddr8_count_0_q = "00111" THEN
                      u0_m0_wo0_wi0_rdAddr8_count_0_eq <= '1';
                    ELSE
                      u0_m0_wo0_wi0_rdAddr8_count_0_eq <= '0';
                    END IF;
                    IF (u0_m0_wo0_wi0_rdAddr8_count_0_eq = '1') THEN
                        u0_m0_wo0_wi0_rdAddr8_count_0_q <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_rdAddr8_count_0_q) - "01000");
                    ELSE
                        u0_m0_wo0_wi0_rdAddr8_count_0_q <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_rdAddr8_count_0_q) + "00001");
                    END IF;
            END IF;
        END IF;
    END PROCESS;


	--u0_m0_wo0_wi0_rdAddr8_count_0_lut(LOOKUP,14)@13
    u0_m0_wo0_wi0_rdAddr8_count_0_lut: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_rdAddr8_count_0_lut_q <= "00010";
        ELSIF(clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_wi0_rdAddr8_count_0_q) IS
                WHEN "00000" =>
                    u0_m0_wo0_wi0_rdAddr8_count_0_lut_q <= "00010";
                WHEN "00001" =>
                    u0_m0_wo0_wi0_rdAddr8_count_0_lut_q <= "00001";
                WHEN "00010" =>
                    u0_m0_wo0_wi0_rdAddr8_count_0_lut_q <= "00000";
                WHEN "00011" =>
                    u0_m0_wo0_wi0_rdAddr8_count_0_lut_q <= "00101";
                WHEN "00100" =>
                    u0_m0_wo0_wi0_rdAddr8_count_0_lut_q <= "00100";
                WHEN "00101" =>
                    u0_m0_wo0_wi0_rdAddr8_count_0_lut_q <= "00011";
                WHEN "00110" =>
                    u0_m0_wo0_wi0_rdAddr8_count_0_lut_q <= "01000";
                WHEN "00111" =>
                    u0_m0_wo0_wi0_rdAddr8_count_0_lut_q <= "00111";
                WHEN "01000" =>
                    u0_m0_wo0_wi0_rdAddr8_count_0_lut_q <= "00110";
                WHEN OTHERS => -- unreachable
                    u0_m0_wo0_wi0_rdAddr8_count_0_lut_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;


	--u0_m0_wo0_wi0_wrAddr0(COUNTER,15)@13
    u0_m0_wo0_wi0_wrAddr0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_wrAddr0_q <= "010";
            u0_m0_wo0_wi0_wrAddr0_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_sel_q_13_q = "1") THEN
                    IF u0_m0_wo0_wi0_wrAddr0_q = "100" THEN
                      u0_m0_wo0_wi0_wrAddr0_eq <= '1';
                    ELSE
                      u0_m0_wo0_wi0_wrAddr0_eq <= '0';
                    END IF;
                    IF (u0_m0_wo0_wi0_wrAddr0_eq = '1') THEN
                        u0_m0_wo0_wi0_wrAddr0_q <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_wrAddr0_q) - "101");
                    ELSE
                        u0_m0_wo0_wi0_wrAddr0_q <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_wrAddr0_q) + "001");
                    END IF;
            END IF;
        END IF;
    END PROCESS;


	--u0_m0_wo0_wi0_we6_seq(SEQUENCE,16)@15
    u0_m0_wo0_wi0_we6_seq: PROCESS (clk, areset)
        variable u0_m0_wo0_wi0_we6_seq_c : signed (3 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_we6_seq_c := "1111";
            u0_m0_wo0_wi0_we6_seq_q <= "0";
            u0_m0_wo0_wi0_we6_seq_eq <= '1';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_15_q = "1") THEN
                IF (u0_m0_wo0_wi0_we6_seq_c = "0000") THEN
                    u0_m0_wo0_wi0_we6_seq_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_we6_seq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_we6_seq_eq = '1') THEN
                    u0_m0_wo0_wi0_we6_seq_c := u0_m0_wo0_wi0_we6_seq_c + 2;
                ELSE
                    u0_m0_wo0_wi0_we6_seq_c := u0_m0_wo0_wi0_we6_seq_c - 1;
                END IF;
                u0_m0_wo0_wi0_we6_seq_q <= std_logic_vector(u0_m0_wo0_wi0_we6_seq_c(3 DOWNTO 3));
            ELSE
                u0_m0_wo0_wi0_we6_seq_q <= "0";
            END IF;
        END IF;
    END PROCESS;


	--u0_m0_wo0_wi0_wrAddr8(COUNTER,17)@13
    u0_m0_wo0_wi0_wrAddr8: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_wrAddr8_q <= "0110";
            u0_m0_wo0_wi0_wrAddr8_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                    IF u0_m0_wo0_wi0_wrAddr8_q = "0111" THEN
                      u0_m0_wo0_wi0_wrAddr8_eq <= '1';
                    ELSE
                      u0_m0_wo0_wi0_wrAddr8_eq <= '0';
                    END IF;
                    IF (u0_m0_wo0_wi0_wrAddr8_eq = '1') THEN
                        u0_m0_wo0_wi0_wrAddr8_q <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_wrAddr8_q) - "1000");
                    ELSE
                        u0_m0_wo0_wi0_wrAddr8_q <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_wrAddr8_q) + "0001");
                    END IF;
            END IF;
        END IF;
    END PROCESS;


	--u0_m0_wo0_wi0_delayr0(DUALMEM,18)@14
    u0_m0_wo0_wi0_delayr0_reset0 <= areset;
    u0_m0_wo0_wi0_delayr0_ia <= d_xIn_0_14_q;
    u0_m0_wo0_wi0_delayr0_aa <= u0_m0_wo0_wi0_wrAddr0_q;
    u0_m0_wo0_wi0_delayr0_ab <= u0_m0_wo0_wi0_rdAddr0_count_0_lut_q(2 downto 0);
    u0_m0_wo0_wi0_delayr0_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 14,
        widthad_a => 3,
        numwords_a => 6,
        width_b => 14,
        widthad_b => 3,
        numwords_b => 6,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_a => "CLOCK0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        outdata_aclr_b => "CLEAR0",
        address_reg_b => "CLOCK0",
        -- indata_aclr_a => "CLEAR0",
        -- indata_aclr_b => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "OLD_DATA",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Cyclone IV E"
    )
    PORT MAP (
        clocken0 => '1',
        wren_a => d_in0_m0_wi0_wo0_assign_sel_q_14_q(0),
        aclr0 => u0_m0_wo0_wi0_delayr0_reset0,
        clock0 => clk,
        address_b => u0_m0_wo0_wi0_delayr0_ab,
        -- data_b => (others => '0'),
        q_b => u0_m0_wo0_wi0_delayr0_iq,
        address_a => u0_m0_wo0_wi0_delayr0_aa,
        data_a => u0_m0_wo0_wi0_delayr0_ia
    );
        u0_m0_wo0_wi0_delayr0_q <= u0_m0_wo0_wi0_delayr0_iq(13 downto 0);

	--u0_m0_wo0_wi0_delayr6(DUALMEM,20)@16
    u0_m0_wo0_wi0_delayr6_reset0 <= areset;
    u0_m0_wo0_wi0_delayr6_ia <= d_u0_m0_wo0_wi0_split5_b_16_q;
    u0_m0_wo0_wi0_delayr6_aa <= GND_q;
    u0_m0_wo0_wi0_delayr6_ab <= GND_q;
    u0_m0_wo0_wi0_delayr6_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 14,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 14,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_a => "CLOCK0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        outdata_aclr_b => "CLEAR0",
        address_reg_b => "CLOCK0",
        -- indata_aclr_a => "CLEAR0",
        -- indata_aclr_b => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "OLD_DATA",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Cyclone IV E"
    )
    PORT MAP (
        clocken0 => '1',
        wren_a => u0_m0_wo0_wi0_we6_seq_q(0),
        aclr0 => u0_m0_wo0_wi0_delayr6_reset0,
        clock0 => clk,
        address_b => u0_m0_wo0_wi0_delayr6_ab,
        -- data_b => (others => '0'),
        q_b => u0_m0_wo0_wi0_delayr6_iq,
        address_a => u0_m0_wo0_wi0_delayr6_aa,
        data_a => u0_m0_wo0_wi0_delayr6_ia
    );
        u0_m0_wo0_wi0_delayr6_q <= u0_m0_wo0_wi0_delayr6_iq(13 downto 0);

	--u0_m0_wo0_wi0_delayr8(DUALMEM,22)@14
    u0_m0_wo0_wi0_delayr8_reset0 <= areset;
    u0_m0_wo0_wi0_delayr8_ia <= u0_m0_wo0_wi0_split1_e;
    u0_m0_wo0_wi0_delayr8_aa <= u0_m0_wo0_wi0_wrAddr8_q;
    u0_m0_wo0_wi0_delayr8_ab <= u0_m0_wo0_wi0_rdAddr8_count_0_lut_q(3 downto 0);
    u0_m0_wo0_wi0_delayr8_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 14,
        widthad_a => 4,
        numwords_a => 9,
        width_b => 14,
        widthad_b => 4,
        numwords_b => 9,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_a => "CLOCK0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        outdata_aclr_b => "CLEAR0",
        address_reg_b => "CLOCK0",
        -- indata_aclr_a => "CLEAR0",
        -- indata_aclr_b => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "OLD_DATA",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Cyclone IV E"
    )
    PORT MAP (
        clocken0 => '1',
        wren_a => d_u0_m0_wo0_compute_q_14_q(0),
        aclr0 => u0_m0_wo0_wi0_delayr8_reset0,
        clock0 => clk,
        address_b => u0_m0_wo0_wi0_delayr8_ab,
        -- data_b => (others => '0'),
        q_b => u0_m0_wo0_wi0_delayr8_iq,
        address_a => u0_m0_wo0_wi0_delayr8_aa,
        data_a => u0_m0_wo0_wi0_delayr8_ia
    );
        u0_m0_wo0_wi0_delayr8_q <= u0_m0_wo0_wi0_delayr8_iq(13 downto 0);

	--u0_m0_wo0_wi0_delayr1(DELAY,26)@14
    u0_m0_wo0_wi0_delayr1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_delayr1_v_0 <= (others => '0');
            u0_m0_wo0_wi0_delayr1_v_1 <= (others => '0');
            u0_m0_wo0_wi0_delayr1_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_14_q = "1") THEN
                u0_m0_wo0_wi0_delayr1_v_0 <= u0_m0_wo0_wi0_join1_q;
                u0_m0_wo0_wi0_delayr1_v_1 <= u0_m0_wo0_wi0_delayr1_v_0;
                u0_m0_wo0_wi0_delayr1_q <= u0_m0_wo0_wi0_delayr1_v_1;
            END IF;
        END IF;
    END PROCESS;


	--d_u0_m0_wo0_wi0_split5_b_16(DELAY,87)@14
    d_u0_m0_wo0_wi0_split5_b_16: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_u0_m0_wo0_wi0_split5_b_16_v_0 <= (others => '0');
            d_u0_m0_wo0_wi0_split5_b_16_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            d_u0_m0_wo0_wi0_split5_b_16_v_0 <= u0_m0_wo0_wi0_split5_b;
            d_u0_m0_wo0_wi0_split5_b_16_q <= d_u0_m0_wo0_wi0_split5_b_16_v_0;
        END IF;
    END PROCESS;


	--u0_m0_wo0_wi0_delayr5(DELAY,29)@14
    u0_m0_wo0_wi0_delayr5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_delayr5_v_0 <= (others => '0');
            u0_m0_wo0_wi0_delayr5_v_1 <= (others => '0');
            u0_m0_wo0_wi0_delayr5_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_14_q = "1") THEN
                u0_m0_wo0_wi0_delayr5_v_0 <= u0_m0_wo0_wi0_join5_q;
                u0_m0_wo0_wi0_delayr5_v_1 <= u0_m0_wo0_wi0_delayr5_v_0;
                u0_m0_wo0_wi0_delayr5_q <= u0_m0_wo0_wi0_delayr5_v_1;
            END IF;
        END IF;
    END PROCESS;


	--u0_m0_wo0_wi0_delayr12(DELAY,33)@14
    u0_m0_wo0_wi0_delayr12: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_delayr12_v_0 <= (others => '0');
            u0_m0_wo0_wi0_delayr12_v_1 <= (others => '0');
            u0_m0_wo0_wi0_delayr12_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_14_q = "1") THEN
                u0_m0_wo0_wi0_delayr12_v_0 <= u0_m0_wo0_wi0_join12_q;
                u0_m0_wo0_wi0_delayr12_v_1 <= u0_m0_wo0_wi0_delayr12_v_0;
                u0_m0_wo0_wi0_delayr12_q <= u0_m0_wo0_wi0_delayr12_v_1;
            END IF;
        END IF;
    END PROCESS;


	--u0_m0_wo0_ca0(COUNTER,34)@13
    u0_m0_wo0_ca0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_ca0_q <= "10";
            u0_m0_wo0_ca0_eq <= '1';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                    IF u0_m0_wo0_ca0_q = "01" THEN
                      u0_m0_wo0_ca0_eq <= '1';
                    ELSE
                      u0_m0_wo0_ca0_eq <= '0';
                    END IF;
                    IF (u0_m0_wo0_ca0_eq = '1') THEN
                        u0_m0_wo0_ca0_q <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_ca0_q) - "10");
                    ELSE
                        u0_m0_wo0_ca0_q <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_ca0_q) + "01");
                    END IF;
            END IF;
        END IF;
    END PROCESS;


	--d_u0_m0_wo0_ca0_q_15(DELAY,88)@14
    d_u0_m0_wo0_ca0_q_15: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_u0_m0_wo0_ca0_q_15_q <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            d_u0_m0_wo0_ca0_q_15_q <= u0_m0_wo0_ca0_q;
        END IF;
    END PROCESS;


	--u0_m0_wo0_cm0(LOOKUP,41)@14
    u0_m0_wo0_cm0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm0_q <= "00000000000000";
        ELSIF(clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca0_q) IS
                WHEN "00" =>
                    u0_m0_wo0_cm0_q <= "00000000000000";
                WHEN "01" =>
                    u0_m0_wo0_cm0_q <= "00000110110001";
                WHEN "10" =>
                    u0_m0_wo0_cm0_q <= "00001001000011";
                WHEN OTHERS => -- unreachable
                    u0_m0_wo0_cm0_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;


	--u0_m0_wo0_cm1(LOOKUP,42)@14
    u0_m0_wo0_cm1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm1_q <= "11110111001001";
        ELSIF(clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca0_q) IS
                WHEN "00" =>
                    u0_m0_wo0_cm1_q <= "11110111001001";
                WHEN "01" =>
                    u0_m0_wo0_cm1_q <= "11110100011000";
                WHEN "10" =>
                    u0_m0_wo0_cm1_q <= "11111000010101";
                WHEN OTHERS => -- unreachable
                    u0_m0_wo0_cm1_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;


	--u0_m0_wo0_cm2(LOOKUP,43)@14
    u0_m0_wo0_cm2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm2_q <= "00010000010010";
        ELSIF(clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca0_q) IS
                WHEN "00" =>
                    u0_m0_wo0_cm2_q <= "00010000010010";
                WHEN "01" =>
                    u0_m0_wo0_cm2_q <= "00001010011110";
                WHEN "10" =>
                    u0_m0_wo0_cm2_q <= "00000000000000";
                WHEN OTHERS => -- unreachable
                    u0_m0_wo0_cm2_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;


	--u0_m0_wo0_cm3(LOOKUP,44)@14
    u0_m0_wo0_cm3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm3_q <= "11101111100011";
        ELSIF(clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca0_q) IS
                WHEN "00" =>
                    u0_m0_wo0_cm3_q <= "11101111100011";
                WHEN "01" =>
                    u0_m0_wo0_cm3_q <= "00000000000000";
                WHEN "10" =>
                    u0_m0_wo0_cm3_q <= "00001100110011";
                WHEN OTHERS => -- unreachable
                    u0_m0_wo0_cm3_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;


	--u0_m0_wo0_cm4(LOOKUP,45)@14
    u0_m0_wo0_cm4: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm4_q <= "00000000000000";
        ELSIF(clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca0_q) IS
                WHEN "00" =>
                    u0_m0_wo0_cm4_q <= "00000000000000";
                WHEN "01" =>
                    u0_m0_wo0_cm4_q <= "11101000111110";
                WHEN "10" =>
                    u0_m0_wo0_cm4_q <= "11100100110110";
                WHEN OTHERS => -- unreachable
                    u0_m0_wo0_cm4_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;


	--u0_m0_wo0_cm5(LOOKUP,46)@14
    u0_m0_wo0_cm5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm5_q <= "01110011001110";
        ELSIF(clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca0_q) IS
                WHEN "00" =>
                    u0_m0_wo0_cm5_q <= "01110011001110";
                WHEN "01" =>
                    u0_m0_wo0_cm5_q <= "01010001011110";
                WHEN "10" =>
                    u0_m0_wo0_cm5_q <= "00100110011010";
                WHEN OTHERS => -- unreachable
                    u0_m0_wo0_cm5_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;


	--u0_m0_wo0_cm6(LOOKUP,47)@15
    u0_m0_wo0_cm6: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm6_q <= "00000000000000";
        ELSIF(clk'EVENT AND clk = '1') THEN
            CASE (d_u0_m0_wo0_ca0_q_15_q) IS
                WHEN "00" =>
                    u0_m0_wo0_cm6_q <= "00000000000000";
                WHEN "01" =>
                    u0_m0_wo0_cm6_q <= "00000000000000";
                WHEN "10" =>
                    u0_m0_wo0_cm6_q <= "01111111111110";
                WHEN OTHERS =>
                    u0_m0_wo0_cm6_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;


	--u0_m0_wo0_sym_add0(ADD,48)@14
    u0_m0_wo0_sym_add0_a <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_wi0_delayr0_q(13 downto 0)), 15));
    u0_m0_wo0_sym_add0_b <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_wi0_split12_c(13 downto 0)), 15));
    u0_m0_wo0_sym_add0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add0_a) + SIGNED(u0_m0_wo0_sym_add0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add0_q <= u0_m0_wo0_sym_add0_o(14 downto 0);


	--u0_m0_wo0_sym_add1(ADD,49)@14
    u0_m0_wo0_sym_add1_a <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_wi0_split1_b(13 downto 0)), 15));
    u0_m0_wo0_sym_add1_b <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_wi0_split12_b(13 downto 0)), 15));
    u0_m0_wo0_sym_add1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add1_a) + SIGNED(u0_m0_wo0_sym_add1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add1_q <= u0_m0_wo0_sym_add1_o(14 downto 0);


	--u0_m0_wo0_sym_add2(ADD,50)@14
    u0_m0_wo0_sym_add2_a <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_wi0_split1_c(13 downto 0)), 15));
    u0_m0_wo0_sym_add2_b <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_wi0_split5_e(13 downto 0)), 15));
    u0_m0_wo0_sym_add2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add2_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add2_a) + SIGNED(u0_m0_wo0_sym_add2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add2_q <= u0_m0_wo0_sym_add2_o(14 downto 0);


	--u0_m0_wo0_sym_add3(ADD,51)@14
    u0_m0_wo0_sym_add3_a <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_wi0_split1_d(13 downto 0)), 15));
    u0_m0_wo0_sym_add3_b <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_wi0_split5_d(13 downto 0)), 15));
    u0_m0_wo0_sym_add3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add3_a) + SIGNED(u0_m0_wo0_sym_add3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add3_q <= u0_m0_wo0_sym_add3_o(14 downto 0);


	--u0_m0_wo0_sym_add4(ADD,52)@14
    u0_m0_wo0_sym_add4_a <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_wi0_split1_e(13 downto 0)), 15));
    u0_m0_wo0_sym_add4_b <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_wi0_split5_c(13 downto 0)), 15));
    u0_m0_wo0_sym_add4: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add4_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add4_a) + SIGNED(u0_m0_wo0_sym_add4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add4_q <= u0_m0_wo0_sym_add4_o(14 downto 0);


	--u0_m0_wo0_sym_add5(ADD,53)@14
    u0_m0_wo0_sym_add5_a <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_wi0_split5_b(13 downto 0)), 15));
    u0_m0_wo0_sym_add5_b <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_wi0_delayr8_q(13 downto 0)), 15));
    u0_m0_wo0_sym_add5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add5_a) + SIGNED(u0_m0_wo0_sym_add5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add5_q <= u0_m0_wo0_sym_add5_o(14 downto 0);


	--u0_m0_wo0_mtree_mult1_6(MULT,55)@16
    u0_m0_wo0_mtree_mult1_6_a <= u0_m0_wo0_cm6_q;
    u0_m0_wo0_mtree_mult1_6_b <= (0 to 0 => u0_m0_wo0_wi0_delayr6_q(13)) & u0_m0_wo0_wi0_delayr6_q;
    u0_m0_wo0_mtree_mult1_6_reset <= areset;

    u0_m0_wo0_mtree_mult1_6_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 14,
    lpm_widthb => 15,
    lpm_widthp => 29,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_6_a,
    datab => u0_m0_wo0_mtree_mult1_6_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_6_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_6_s1
    );
    u0_m0_wo0_mtree_mult1_6_q <= u0_m0_wo0_mtree_mult1_6_s1;

	--u0_m0_wo0_mtree_mult1_5(MULT,56)@15
    u0_m0_wo0_mtree_mult1_5_a <= u0_m0_wo0_cm5_q;
    u0_m0_wo0_mtree_mult1_5_b <= u0_m0_wo0_sym_add5_q;
    u0_m0_wo0_mtree_mult1_5_reset <= areset;

    u0_m0_wo0_mtree_mult1_5_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 14,
    lpm_widthb => 15,
    lpm_widthp => 29,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_5_a,
    datab => u0_m0_wo0_mtree_mult1_5_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_5_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_5_s1
    );
    u0_m0_wo0_mtree_mult1_5_q <= u0_m0_wo0_mtree_mult1_5_s1;

	--u0_m0_wo0_mtree_mult1_4(MULT,57)@15
    u0_m0_wo0_mtree_mult1_4_a <= u0_m0_wo0_cm4_q;
    u0_m0_wo0_mtree_mult1_4_b <= u0_m0_wo0_sym_add4_q;
    u0_m0_wo0_mtree_mult1_4_reset <= areset;

    u0_m0_wo0_mtree_mult1_4_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 14,
    lpm_widthb => 15,
    lpm_widthp => 29,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_4_a,
    datab => u0_m0_wo0_mtree_mult1_4_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_4_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_4_s1
    );
    u0_m0_wo0_mtree_mult1_4_q <= u0_m0_wo0_mtree_mult1_4_s1;

	--u0_m0_wo0_mtree_mult1_3(MULT,58)@15
    u0_m0_wo0_mtree_mult1_3_a <= u0_m0_wo0_cm3_q;
    u0_m0_wo0_mtree_mult1_3_b <= u0_m0_wo0_sym_add3_q;
    u0_m0_wo0_mtree_mult1_3_reset <= areset;

    u0_m0_wo0_mtree_mult1_3_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 14,
    lpm_widthb => 15,
    lpm_widthp => 29,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_3_a,
    datab => u0_m0_wo0_mtree_mult1_3_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_3_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_3_s1
    );
    u0_m0_wo0_mtree_mult1_3_q <= u0_m0_wo0_mtree_mult1_3_s1;

	--u0_m0_wo0_mtree_mult1_2(MULT,59)@15
    u0_m0_wo0_mtree_mult1_2_a <= u0_m0_wo0_cm2_q;
    u0_m0_wo0_mtree_mult1_2_b <= u0_m0_wo0_sym_add2_q;
    u0_m0_wo0_mtree_mult1_2_reset <= areset;

    u0_m0_wo0_mtree_mult1_2_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 14,
    lpm_widthb => 15,
    lpm_widthp => 29,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_2_a,
    datab => u0_m0_wo0_mtree_mult1_2_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_2_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_2_s1
    );
    u0_m0_wo0_mtree_mult1_2_q <= u0_m0_wo0_mtree_mult1_2_s1;

	--u0_m0_wo0_mtree_mult1_1(MULT,60)@15
    u0_m0_wo0_mtree_mult1_1_a <= u0_m0_wo0_cm1_q;
    u0_m0_wo0_mtree_mult1_1_b <= u0_m0_wo0_sym_add1_q;
    u0_m0_wo0_mtree_mult1_1_reset <= areset;

    u0_m0_wo0_mtree_mult1_1_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 14,
    lpm_widthb => 15,
    lpm_widthp => 29,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_1_a,
    datab => u0_m0_wo0_mtree_mult1_1_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_1_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_1_s1
    );
    u0_m0_wo0_mtree_mult1_1_q <= u0_m0_wo0_mtree_mult1_1_s1;

	--u0_m0_wo0_mtree_mult1_0(MULT,61)@15
    u0_m0_wo0_mtree_mult1_0_a <= u0_m0_wo0_cm0_q;
    u0_m0_wo0_mtree_mult1_0_b <= u0_m0_wo0_sym_add0_q;
    u0_m0_wo0_mtree_mult1_0_reset <= areset;

    u0_m0_wo0_mtree_mult1_0_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 14,
    lpm_widthb => 15,
    lpm_widthp => 29,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_0_a,
    datab => u0_m0_wo0_mtree_mult1_0_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_0_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_0_s1
    );
    u0_m0_wo0_mtree_mult1_0_q <= u0_m0_wo0_mtree_mult1_0_s1;

	--u0_m0_wo0_mtree_add0_0(ADD,62)@17
    u0_m0_wo0_mtree_add0_0_a <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_mtree_mult1_0_q(28 downto 0)), 30));
    u0_m0_wo0_mtree_add0_0_b <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_mtree_mult1_1_q(28 downto 0)), 30));
    u0_m0_wo0_mtree_add0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_0_a) + SIGNED(u0_m0_wo0_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_0_q <= u0_m0_wo0_mtree_add0_0_o(29 downto 0);


	--u0_m0_wo0_mtree_add0_1(ADD,63)@17
    u0_m0_wo0_mtree_add0_1_a <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_mtree_mult1_2_q(28 downto 0)), 30));
    u0_m0_wo0_mtree_add0_1_b <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_mtree_mult1_3_q(28 downto 0)), 30));
    u0_m0_wo0_mtree_add0_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_1_a) + SIGNED(u0_m0_wo0_mtree_add0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_1_q <= u0_m0_wo0_mtree_add0_1_o(29 downto 0);


	--u0_m0_wo0_mtree_add0_2(ADD,64)@17
    u0_m0_wo0_mtree_add0_2_a <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_mtree_mult1_4_q(28 downto 0)), 30));
    u0_m0_wo0_mtree_add0_2_b <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_mtree_mult1_5_q(28 downto 0)), 30));
    u0_m0_wo0_mtree_add0_2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_2_a) + SIGNED(u0_m0_wo0_mtree_add0_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_2_q <= u0_m0_wo0_mtree_add0_2_o(29 downto 0);


	--u0_m0_wo0_mtree_add1_0(ADD,65)@18
    u0_m0_wo0_mtree_add1_0_a <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_mtree_add0_0_q(29 downto 0)), 31));
    u0_m0_wo0_mtree_add1_0_b <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_mtree_add0_1_q(29 downto 0)), 31));
    u0_m0_wo0_mtree_add1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_0_a) + SIGNED(u0_m0_wo0_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_0_q <= u0_m0_wo0_mtree_add1_0_o(30 downto 0);


	--u0_m0_wo0_mtree_add1_1(ADD,66)@18
    u0_m0_wo0_mtree_add1_1_a <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_mtree_add0_2_q(29 downto 0)), 31));
    u0_m0_wo0_mtree_add1_1_b <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_mtree_mult1_6_q(28 downto 0)), 31));
    u0_m0_wo0_mtree_add1_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_1_a) + SIGNED(u0_m0_wo0_mtree_add1_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_1_q <= u0_m0_wo0_mtree_add1_1_o(30 downto 0);


	--u0_m0_wo0_mtree_add2_0(ADD,67)@19
    u0_m0_wo0_mtree_add2_0_a <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_mtree_add1_0_q(30 downto 0)), 32));
    u0_m0_wo0_mtree_add2_0_b <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_mtree_add1_1_q(30 downto 0)), 32));
    u0_m0_wo0_mtree_add2_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_0_a) + SIGNED(u0_m0_wo0_mtree_add2_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_0_q <= u0_m0_wo0_mtree_add2_0_o(31 downto 0);


	--u0_m0_wo0_aseq(SEQUENCE,68)@19
    u0_m0_wo0_aseq: PROCESS (clk, areset)
        variable u0_m0_wo0_aseq_c : signed (3 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_aseq_c := "0000";
            u0_m0_wo0_aseq_q <= "0";
            u0_m0_wo0_aseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_19_q = "1") THEN
                IF (u0_m0_wo0_aseq_c = "0000") THEN
                    u0_m0_wo0_aseq_eq <= '1';
                ELSE
                    u0_m0_wo0_aseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_aseq_eq = '1') THEN
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c + 2;
                ELSE
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c - 1;
                END IF;
                u0_m0_wo0_aseq_q <= std_logic_vector(u0_m0_wo0_aseq_c(3 DOWNTO 3));
            END IF;
        END IF;
    END PROCESS;


	--u0_m0_wo0_accum(ADD,69)@20
    u0_m0_wo0_accum_a <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_mtree_add2_0_q(31 downto 0)), 34));
    u0_m0_wo0_accum_b <= u0_m0_wo0_accum_q;
    u0_m0_wo0_accum_i <= STD_LOGIC_VECTOR(RESIZE(SIGNED(u0_m0_wo0_mtree_add2_0_q(31 downto 0)), 34));
    u0_m0_wo0_accum_reset <= areset;
    u0_m0_wo0_accum_au : fir_0002_rtl_AddWithSload 
        generic map (L => 34, OPTIMIZED => "TRUE") 
        port map (clk => clk,
            reset => u0_m0_wo0_accum_reset,
            ena => d_u0_m0_wo0_compute_q_20_q(0),
            sreset => '0',
            sload => u0_m0_wo0_aseq_q(0),
            loadval_in => u0_m0_wo0_accum_i,
            doAddnSub => '1',
            addL_in => u0_m0_wo0_accum_a,
            addR_in => u0_m0_wo0_accum_b,
            sum_out => u0_m0_wo0_accum_o);
    u0_m0_wo0_accum_q <= u0_m0_wo0_accum_o(33 downto 0);


	--u0_m0_wo0_oseq(SEQUENCE,70)@19
    u0_m0_wo0_oseq: PROCESS (clk, areset)
        variable u0_m0_wo0_oseq_c : signed (3 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_c := "0010";
            u0_m0_wo0_oseq_q <= "0";
            u0_m0_wo0_oseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_19_q = "1") THEN
                IF (u0_m0_wo0_oseq_c = "0000") THEN
                    u0_m0_wo0_oseq_eq <= '1';
                ELSE
                    u0_m0_wo0_oseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_oseq_eq = '1') THEN
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c + 2;
                ELSE
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c - 1;
                END IF;
                u0_m0_wo0_oseq_q <= std_logic_vector(u0_m0_wo0_oseq_c(3 DOWNTO 3));
            END IF;
        END IF;
    END PROCESS;


	--u0_m0_wo0_oseq_gated_reg(REG,72)@20
    u0_m0_wo0_oseq_gated_reg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_q);
        END IF;
    END PROCESS;


	--xOut(PORTOUT,75)@21
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= "0000000" & GND_q;
    xOut_0 <= u0_m0_wo0_accum_q;


	--u0_m0_wo0_oseq_gated(LOGICAL,71)@20
    u0_m0_wo0_oseq_gated_a <= u0_m0_wo0_oseq_q;
    u0_m0_wo0_oseq_gated_b <= d_u0_m0_wo0_compute_q_20_q;
    u0_m0_wo0_oseq_gated_q <= u0_m0_wo0_oseq_gated_a and u0_m0_wo0_oseq_gated_b;

	--u0_m0_wo0_wi0_split1(BITSELECT,25)@14
    u0_m0_wo0_wi0_split1_in <= u0_m0_wo0_wi0_delayr1_q;
    u0_m0_wo0_wi0_split1_b <= u0_m0_wo0_wi0_split1_in(13 downto 0);
    u0_m0_wo0_wi0_split1_c <= u0_m0_wo0_wi0_split1_in(27 downto 14);
    u0_m0_wo0_wi0_split1_d <= u0_m0_wo0_wi0_split1_in(41 downto 28);
    u0_m0_wo0_wi0_split1_e <= u0_m0_wo0_wi0_split1_in(55 downto 42);

	--u0_m0_wo0_wi0_split5(BITSELECT,28)@14
    u0_m0_wo0_wi0_split5_in <= u0_m0_wo0_wi0_delayr5_q;
    u0_m0_wo0_wi0_split5_b <= u0_m0_wo0_wi0_split5_in(13 downto 0);
    u0_m0_wo0_wi0_split5_c <= u0_m0_wo0_wi0_split5_in(27 downto 14);
    u0_m0_wo0_wi0_split5_d <= u0_m0_wo0_wi0_split5_in(41 downto 28);
    u0_m0_wo0_wi0_split5_e <= u0_m0_wo0_wi0_split5_in(55 downto 42);

	--u0_m0_wo0_wi0_split12(BITSELECT,32)@14
    u0_m0_wo0_wi0_split12_in <= u0_m0_wo0_wi0_delayr12_q;
    u0_m0_wo0_wi0_split12_b <= u0_m0_wo0_wi0_split12_in(13 downto 0);
    u0_m0_wo0_wi0_split12_c <= u0_m0_wo0_wi0_split12_in(27 downto 14);

	--u0_m0_wo0_wi0_join1(BITJOIN,24)@14
    u0_m0_wo0_wi0_join1_q <= u0_m0_wo0_wi0_split1_d & u0_m0_wo0_wi0_split1_c & u0_m0_wo0_wi0_split1_b & u0_m0_wo0_wi0_delayr0_q;

	--u0_m0_wo0_wi0_join5(BITJOIN,27)@14
    u0_m0_wo0_wi0_join5_q <= u0_m0_wo0_wi0_split5_d & u0_m0_wo0_wi0_split5_c & u0_m0_wo0_wi0_delayr8_q & u0_m0_wo0_wi0_split1_e;

	--u0_m0_wo0_wi0_join12(BITJOIN,31)@14
    u0_m0_wo0_wi0_join12_q <= u0_m0_wo0_wi0_split12_b & u0_m0_wo0_wi0_split5_e;

end normal;
