-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit89_proc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    batch_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    batch_empty_n : IN STD_LOGIC;
    batch_read : OUT STD_LOGIC;
    OC_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    OC_empty_n : IN STD_LOGIC;
    OC_read : OUT STD_LOGIC;
    CONV_D_loc_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    CONV_D_loc_empty_n : IN STD_LOGIC;
    CONV_D_loc_read : OUT STD_LOGIC;
    select_ln169_loc_out_din : OUT STD_LOGIC_VECTOR (28 downto 0);
    select_ln169_loc_out_full_n : IN STD_LOGIC;
    select_ln169_loc_out_write : OUT STD_LOGIC );
end;


architecture behav of top_Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit89_proc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (13 downto 0) := "00000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (13 downto 0) := "00000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (13 downto 0) := "00000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (13 downto 0) := "00000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (13 downto 0) := "00000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (13 downto 0) := "00000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (13 downto 0) := "00001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (13 downto 0) := "00010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (13 downto 0) := "00100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (13 downto 0) := "01000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (13 downto 0) := "10000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv29_0 : STD_LOGIC_VECTOR (28 downto 0) := "00000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (13 downto 0) := "00000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal batch_blk_n : STD_LOGIC;
    signal OC_blk_n : STD_LOGIC;
    signal CONV_D_loc_blk_n : STD_LOGIC;
    signal select_ln169_loc_out_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal batch_read_reg_125 : STD_LOGIC_VECTOR (31 downto 0);
    signal OC_read_reg_130 : STD_LOGIC_VECTOR (31 downto 0);
    signal CONV_D_loc_read_reg_135 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_61_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln169_reg_141 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal grp_fu_65_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln169_1_reg_146 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_69_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln169_2_reg_151 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal tmp_reg_156 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln169_2_reg_161 : STD_LOGIC_VECTOR (27 downto 0);
    signal trunc_ln169_1_reg_166 : STD_LOGIC_VECTOR (27 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal select_ln169_fu_118_p3 : STD_LOGIC_VECTOR (28 downto 0);
    signal select_ln169_reg_171 : STD_LOGIC_VECTOR (28 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal ap_block_state1 : BOOLEAN;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal sub_ln169_fu_91_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln169_fu_106_p1 : STD_LOGIC_VECTOR (28 downto 0);
    signal sub_ln169_1_fu_109_p2 : STD_LOGIC_VECTOR (28 downto 0);
    signal zext_ln169_1_fu_115_p1 : STD_LOGIC_VECTOR (28 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component top_mul_32s_32s_32_5_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    mul_32s_32s_32_5_1_U896 : component top_mul_32s_32s_32_5_1
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => OC_read_reg_130,
        din1 => CONV_D_loc_read_reg_135,
        ce => ap_const_logic_1,
        dout => grp_fu_61_p2);

    mul_32s_32s_32_5_1_U897 : component top_mul_32s_32s_32_5_1
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => batch_read_reg_125,
        din1 => CONV_D_loc_read_reg_135,
        ce => ap_const_logic_1,
        dout => grp_fu_65_p2);

    mul_32s_32s_32_5_1_U898 : component top_mul_32s_32s_32_5_1
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => mul_ln169_1_reg_146,
        din1 => mul_ln169_reg_141,
        ce => ap_const_logic_1,
        dout => grp_fu_69_p2);





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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((select_ln169_loc_out_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state14))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                CONV_D_loc_read_reg_135 <= CONV_D_loc_dout;
                OC_read_reg_130 <= OC_dout;
                batch_read_reg_125 <= batch_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                mul_ln169_1_reg_146 <= grp_fu_65_p2;
                mul_ln169_reg_141 <= grp_fu_61_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state11)) then
                mul_ln169_2_reg_151 <= grp_fu_69_p2;
                tmp_reg_156 <= grp_fu_69_p2(31 downto 31);
                trunc_ln169_2_reg_161 <= grp_fu_69_p2(31 downto 4);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state13)) then
                select_ln169_reg_171 <= select_ln169_fu_118_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_reg_156 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state12))) then
                trunc_ln169_1_reg_166 <= sub_ln169_fu_91_p2(31 downto 4);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, batch_empty_n, OC_empty_n, CONV_D_loc_empty_n, select_ln169_loc_out_full_n, ap_CS_fsm_state14)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((batch_empty_n = ap_const_logic_0) or (ap_const_logic_0 = CONV_D_loc_empty_n) or (ap_const_logic_0 = OC_empty_n) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                if (((select_ln169_loc_out_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state14))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state14;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXX";
        end case;
    end process;

    CONV_D_loc_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, CONV_D_loc_empty_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            CONV_D_loc_blk_n <= CONV_D_loc_empty_n;
        else 
            CONV_D_loc_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    CONV_D_loc_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, batch_empty_n, OC_empty_n, CONV_D_loc_empty_n)
    begin
        if ((not(((batch_empty_n = ap_const_logic_0) or (ap_const_logic_0 = CONV_D_loc_empty_n) or (ap_const_logic_0 = OC_empty_n) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            CONV_D_loc_read <= ap_const_logic_1;
        else 
            CONV_D_loc_read <= ap_const_logic_0;
        end if; 
    end process;


    OC_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, OC_empty_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            OC_blk_n <= OC_empty_n;
        else 
            OC_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    OC_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, batch_empty_n, OC_empty_n, CONV_D_loc_empty_n)
    begin
        if ((not(((batch_empty_n = ap_const_logic_0) or (ap_const_logic_0 = CONV_D_loc_empty_n) or (ap_const_logic_0 = OC_empty_n) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            OC_read <= ap_const_logic_1;
        else 
            OC_read <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state14 <= ap_CS_fsm(13);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, batch_empty_n, OC_empty_n, CONV_D_loc_empty_n)
    begin
                ap_block_state1 <= ((batch_empty_n = ap_const_logic_0) or (ap_const_logic_0 = CONV_D_loc_empty_n) or (ap_const_logic_0 = OC_empty_n) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, select_ln169_loc_out_full_n, ap_CS_fsm_state14)
    begin
        if (((select_ln169_loc_out_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state14))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(select_ln169_loc_out_full_n, ap_CS_fsm_state14)
    begin
        if (((select_ln169_loc_out_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state14))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    batch_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, batch_empty_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            batch_blk_n <= batch_empty_n;
        else 
            batch_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    batch_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, batch_empty_n, OC_empty_n, CONV_D_loc_empty_n)
    begin
        if ((not(((batch_empty_n = ap_const_logic_0) or (ap_const_logic_0 = CONV_D_loc_empty_n) or (ap_const_logic_0 = OC_empty_n) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            batch_read <= ap_const_logic_1;
        else 
            batch_read <= ap_const_logic_0;
        end if; 
    end process;

    select_ln169_fu_118_p3 <= 
        sub_ln169_1_fu_109_p2 when (tmp_reg_156(0) = '1') else 
        zext_ln169_1_fu_115_p1;

    select_ln169_loc_out_blk_n_assign_proc : process(select_ln169_loc_out_full_n, ap_CS_fsm_state14)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
            select_ln169_loc_out_blk_n <= select_ln169_loc_out_full_n;
        else 
            select_ln169_loc_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    select_ln169_loc_out_din <= select_ln169_reg_171;

    select_ln169_loc_out_write_assign_proc : process(select_ln169_loc_out_full_n, ap_CS_fsm_state14)
    begin
        if (((select_ln169_loc_out_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state14))) then 
            select_ln169_loc_out_write <= ap_const_logic_1;
        else 
            select_ln169_loc_out_write <= ap_const_logic_0;
        end if; 
    end process;

    sub_ln169_1_fu_109_p2 <= std_logic_vector(unsigned(ap_const_lv29_0) - unsigned(zext_ln169_fu_106_p1));
    sub_ln169_fu_91_p2 <= std_logic_vector(unsigned(ap_const_lv32_0) - unsigned(mul_ln169_2_reg_151));
    zext_ln169_1_fu_115_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln169_2_reg_161),29));
    zext_ln169_fu_106_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln169_1_reg_166),29));
end behav;