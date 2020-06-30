-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity knuth_yao2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    a_ce0 : OUT STD_LOGIC;
    a_we0 : OUT STD_LOGIC;
    a_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of knuth_yao2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_B4BCD35C : STD_LOGIC_VECTOR (31 downto 0) := "10110100101111001101001101011100";
    constant ap_const_lv31_7A5BC2E3 : STD_LOGIC_VECTOR (30 downto 0) := "1111010010110111100001011100011";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv32_80000000 : STD_LOGIC_VECTOR (31 downto 0) := "10000000000000000000000000000000";
    constant ap_const_lv8_80 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal lfsr32 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000010101011110011011110";
    signal lfsr31 : STD_LOGIC_VECTOR (31 downto 0) := "00100011010001010110011110001001";
    signal rnd_1_fu_236_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_2_fu_248_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_2_reg_293 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal rnd_2_reg_298 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal grp_knuth_yao_single_num_fu_86_ap_done : STD_LOGIC;
    signal tmp_56_fu_259_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_56_reg_303 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal grp_knuth_yao_single_num_fu_86_ap_start : STD_LOGIC;
    signal grp_knuth_yao_single_num_fu_86_ap_idle : STD_LOGIC;
    signal grp_knuth_yao_single_num_fu_86_ap_ready : STD_LOGIC;
    signal grp_knuth_yao_single_num_fu_86_rnd_read : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_knuth_yao_single_num_fu_86_lfsr32_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_knuth_yao_single_num_fu_86_lfsr32_o_ap_vld : STD_LOGIC;
    signal grp_knuth_yao_single_num_fu_86_lfsr31_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_knuth_yao_single_num_fu_86_lfsr31_o_ap_vld : STD_LOGIC;
    signal grp_knuth_yao_single_num_fu_86_ap_return_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_knuth_yao_single_num_fu_86_ap_return_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal rnd1_reg_64 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_74 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_reg_grp_knuth_yao_single_num_fu_86_ap_start : STD_LOGIC := '0';
    signal exitcond_fu_242_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_s_fu_265_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_59_fu_280_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal lfsr_write_assign_fu_176_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal lfsr_write_assign_1_s_fu_220_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_55_fu_254_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_57_fu_270_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_i_i_i_fu_118_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal feedback_fu_114_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_i_i_i_fu_132_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_128_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal lfsr_write_assign_3_fu_148_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_i8_i_i_fu_154_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal feedback_1_fu_140_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_i10_i_i_fu_168_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_17_fu_164_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal feedback_2_fu_192_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_i17_i_i_cast_c_fu_206_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_i15_i_i_cast_fu_196_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal lfsr_write_assign_1_fu_214_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal rnd_fu_230_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_58_fu_275_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);

    component knuth_yao_single_num IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        rnd_read : IN STD_LOGIC_VECTOR (31 downto 0);
        lfsr32_i : IN STD_LOGIC_VECTOR (31 downto 0);
        lfsr32_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        lfsr32_o_ap_vld : OUT STD_LOGIC;
        lfsr31_i : IN STD_LOGIC_VECTOR (31 downto 0);
        lfsr31_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        lfsr31_o_ap_vld : OUT STD_LOGIC;
        ap_return_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    grp_knuth_yao_single_num_fu_86 : component knuth_yao_single_num
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_knuth_yao_single_num_fu_86_ap_start,
        ap_done => grp_knuth_yao_single_num_fu_86_ap_done,
        ap_idle => grp_knuth_yao_single_num_fu_86_ap_idle,
        ap_ready => grp_knuth_yao_single_num_fu_86_ap_ready,
        rnd_read => grp_knuth_yao_single_num_fu_86_rnd_read,
        lfsr32_i => lfsr32,
        lfsr32_o => grp_knuth_yao_single_num_fu_86_lfsr32_o,
        lfsr32_o_ap_vld => grp_knuth_yao_single_num_fu_86_lfsr32_o_ap_vld,
        lfsr31_i => lfsr31,
        lfsr31_o => grp_knuth_yao_single_num_fu_86_lfsr31_o,
        lfsr31_o_ap_vld => grp_knuth_yao_single_num_fu_86_lfsr31_o_ap_vld,
        ap_return_0 => grp_knuth_yao_single_num_fu_86_ap_return_0,
        ap_return_1 => grp_knuth_yao_single_num_fu_86_ap_return_1);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_reg_grp_knuth_yao_single_num_fu_86_ap_start_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_grp_knuth_yao_single_num_fu_86_ap_start <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state4) or ((exitcond_fu_242_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
                    ap_reg_grp_knuth_yao_single_num_fu_86_ap_start <= ap_const_logic_1;
                elsif ((grp_knuth_yao_single_num_fu_86_ap_ready = ap_const_logic_1)) then 
                    ap_reg_grp_knuth_yao_single_num_fu_86_ap_start <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_knuth_yao_single_num_fu_86_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                i_reg_74 <= i_2_reg_293;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_74 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;

    lfsr31_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                lfsr31 <= lfsr_write_assign_1_s_fu_220_p1;
            elsif ((((grp_knuth_yao_single_num_fu_86_lfsr31_o_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((grp_knuth_yao_single_num_fu_86_lfsr31_o_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
                lfsr31 <= grp_knuth_yao_single_num_fu_86_lfsr31_o;
            end if; 
        end if;
    end process;

    lfsr32_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                lfsr32 <= lfsr_write_assign_fu_176_p2;
            elsif ((((grp_knuth_yao_single_num_fu_86_lfsr32_o_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((grp_knuth_yao_single_num_fu_86_lfsr32_o_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
                lfsr32 <= grp_knuth_yao_single_num_fu_86_lfsr32_o;
            end if; 
        end if;
    end process;

    rnd1_reg_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_knuth_yao_single_num_fu_86_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                rnd1_reg_64 <= grp_knuth_yao_single_num_fu_86_ap_return_1;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                rnd1_reg_64 <= rnd_1_fu_236_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_2_reg_293 <= i_2_fu_248_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_knuth_yao_single_num_fu_86_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                rnd_2_reg_298 <= grp_knuth_yao_single_num_fu_86_ap_return_1;
                    tmp_56_reg_303(7 downto 1) <= tmp_56_fu_259_p2(7 downto 1);
            end if;
        end if;
    end process;
    tmp_56_reg_303(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, grp_knuth_yao_single_num_fu_86_ap_done, ap_CS_fsm_state5, exitcond_fu_242_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond_fu_242_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((grp_knuth_yao_single_num_fu_86_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((grp_knuth_yao_single_num_fu_86_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;

    a_address0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state5, tmp_s_fu_265_p1, tmp_59_fu_280_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            a_address0 <= tmp_59_fu_280_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            a_address0 <= tmp_s_fu_265_p1(8 - 1 downto 0);
        else 
            a_address0 <= "XXXXXXXX";
        end if; 
    end process;


    a_ce0_assign_proc : process(ap_CS_fsm_state3, grp_knuth_yao_single_num_fu_86_ap_done, ap_CS_fsm_state5)
    begin
        if ((((grp_knuth_yao_single_num_fu_86_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((grp_knuth_yao_single_num_fu_86_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
            a_ce0 <= ap_const_logic_1;
        else 
            a_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    a_d0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state5, tmp_55_fu_254_p1, tmp_57_fu_270_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            a_d0 <= tmp_57_fu_270_p1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            a_d0 <= tmp_55_fu_254_p1;
        else 
            a_d0 <= "XXXXXXXXXXXXXXXX";
        end if; 
    end process;


    a_we0_assign_proc : process(ap_CS_fsm_state3, grp_knuth_yao_single_num_fu_86_ap_done, ap_CS_fsm_state5)
    begin
        if ((((grp_knuth_yao_single_num_fu_86_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((grp_knuth_yao_single_num_fu_86_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
            a_we0 <= ap_const_logic_1;
        else 
            a_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond_fu_242_p2)
    begin
        if ((((exitcond_fu_242_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond_fu_242_p2)
    begin
        if (((exitcond_fu_242_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_fu_242_p2 <= "1" when (i_reg_74 = ap_const_lv8_80) else "0";
    feedback_1_fu_140_p3 <= lfsr32(1 downto 1);
    feedback_2_fu_192_p1 <= lfsr31(1 - 1 downto 0);
    feedback_fu_114_p1 <= lfsr32(1 - 1 downto 0);
    grp_knuth_yao_single_num_fu_86_ap_start <= ap_reg_grp_knuth_yao_single_num_fu_86_ap_start;

    grp_knuth_yao_single_num_fu_86_rnd_read_assign_proc : process(rnd_2_reg_298, ap_CS_fsm_state3, ap_CS_fsm_state5, rnd1_reg_64)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            grp_knuth_yao_single_num_fu_86_rnd_read <= rnd_2_reg_298;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_knuth_yao_single_num_fu_86_rnd_read <= rnd1_reg_64;
        else 
            grp_knuth_yao_single_num_fu_86_rnd_read <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    i_2_fu_248_p2 <= std_logic_vector(unsigned(i_reg_74) + unsigned(ap_const_lv8_1));
    lfsr_write_assign_1_fu_214_p2 <= (tmp_i15_i_i_cast_fu_196_p4 xor tmp_2_i17_i_i_cast_c_fu_206_p3);
    lfsr_write_assign_1_s_fu_220_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(lfsr_write_assign_1_fu_214_p2),32));
    lfsr_write_assign_3_fu_148_p2 <= (tmp_fu_128_p1 xor tmp_2_i_i_i_fu_132_p3);
    lfsr_write_assign_fu_176_p2 <= (tmp_2_i10_i_i_fu_168_p3 xor tmp_17_fu_164_p1);
    rnd_1_fu_236_p2 <= (rnd_fu_230_p2 or ap_const_lv32_80000000);
    rnd_fu_230_p2 <= (lfsr_write_assign_fu_176_p2 xor lfsr_write_assign_1_s_fu_220_p1);
    tmp_17_fu_164_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_i8_i_i_fu_154_p4),32));
    tmp_2_i10_i_i_fu_168_p3 <= 
        ap_const_lv32_B4BCD35C when (feedback_1_fu_140_p3(0) = '1') else 
        ap_const_lv32_0;
    tmp_2_i17_i_i_cast_c_fu_206_p3 <= 
        ap_const_lv31_7A5BC2E3 when (feedback_2_fu_192_p1(0) = '1') else 
        ap_const_lv31_0;
    tmp_2_i_i_i_fu_132_p3 <= 
        ap_const_lv32_B4BCD35C when (feedback_fu_114_p1(0) = '1') else 
        ap_const_lv32_0;
    tmp_55_fu_254_p1 <= grp_knuth_yao_single_num_fu_86_ap_return_0(16 - 1 downto 0);
    tmp_56_fu_259_p2 <= std_logic_vector(shift_left(unsigned(i_reg_74),to_integer(unsigned('0' & ap_const_lv8_1(8-1 downto 0)))));
    tmp_57_fu_270_p1 <= grp_knuth_yao_single_num_fu_86_ap_return_0(16 - 1 downto 0);
    tmp_58_fu_275_p2 <= (tmp_56_reg_303 or ap_const_lv8_1);
    tmp_59_fu_280_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_58_fu_275_p2),64));
    tmp_fu_128_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_i_i_i_fu_118_p4),32));
    tmp_i15_i_i_cast_fu_196_p4 <= lfsr31(31 downto 1);
    tmp_i8_i_i_fu_154_p4 <= lfsr_write_assign_3_fu_148_p2(31 downto 1);
    tmp_i_i_i_fu_118_p4 <= lfsr32(31 downto 1);
    tmp_s_fu_265_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_56_fu_259_p2),64));
end behav;
