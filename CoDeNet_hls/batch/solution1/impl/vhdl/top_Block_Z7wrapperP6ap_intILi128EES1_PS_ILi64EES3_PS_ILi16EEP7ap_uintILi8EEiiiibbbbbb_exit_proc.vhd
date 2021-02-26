-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit_proc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    D_V_loc_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    D_V_loc_empty_n : IN STD_LOGIC;
    D_V_loc_read : OUT STD_LOGIC;
    STRIDE_2_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    STRIDE_2_empty_n : IN STD_LOGIC;
    STRIDE_2_read : OUT STD_LOGIC;
    batch_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    batch_empty_n : IN STD_LOGIC;
    batch_read : OUT STD_LOGIC;
    mul_ln93_1_loc_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    mul_ln93_1_loc_out_full_n : IN STD_LOGIC;
    mul_ln93_1_loc_out_write : OUT STD_LOGIC;
    mul_ln93_1_loc_out1_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    mul_ln93_1_loc_out1_full_n : IN STD_LOGIC;
    mul_ln93_1_loc_out1_write : OUT STD_LOGIC;
    mul_ln93_1_loc_out2_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    mul_ln93_1_loc_out2_full_n : IN STD_LOGIC;
    mul_ln93_1_loc_out2_write : OUT STD_LOGIC;
    mul_ln93_1_loc_out3_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    mul_ln93_1_loc_out3_full_n : IN STD_LOGIC;
    mul_ln93_1_loc_out3_write : OUT STD_LOGIC );
end;


architecture behav of top_Block_Z7wrapperP6ap_intILi128EES1_PS_ILi64EES3_PS_ILi16EEP7ap_uintILi8EEiiiibbbbbb_exit_proc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (10 downto 0) := "00000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (10 downto 0) := "00000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (10 downto 0) := "00000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (10 downto 0) := "00000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (10 downto 0) := "00000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (10 downto 0) := "00001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (10 downto 0) := "00010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (10 downto 0) := "00100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (10 downto 0) := "01000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal D_V_loc_blk_n : STD_LOGIC;
    signal STRIDE_2_blk_n : STD_LOGIC;
    signal batch_blk_n : STD_LOGIC;
    signal mul_ln93_1_loc_out_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal mul_ln93_1_loc_out1_blk_n : STD_LOGIC;
    signal mul_ln93_1_loc_out2_blk_n : STD_LOGIC;
    signal mul_ln93_1_loc_out3_blk_n : STD_LOGIC;
    signal batch_read_reg_123 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln71_fu_102_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal select_ln71_reg_128 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln71_fu_110_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_fu_117_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln93_reg_139 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal grp_fu_113_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln93_1_reg_144 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_state11 : BOOLEAN;
    signal lshr_ln_fu_88_p4 : STD_LOGIC_VECTOR (14 downto 0);
    signal zext_ln1497_fu_98_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal grp_fu_117_p0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_117_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (10 downto 0);
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


    component top_mul_mul_16ns_16ns_32_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    mul_32s_32s_32_5_1_U568 : component top_mul_32s_32s_32_5_1
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => mul_ln93_reg_139,
        din1 => batch_read_reg_123,
        ce => ap_const_logic_1,
        dout => grp_fu_113_p2);

    mul_mul_16ns_16ns_32_4_1_U569 : component top_mul_mul_16ns_16ns_32_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_117_p0,
        din1 => grp_fu_117_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_117_p2);





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
                elsif ((not(((mul_ln93_1_loc_out3_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out2_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out1_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                batch_read_reg_123 <= batch_dout;
                select_ln71_reg_128 <= select_ln71_fu_102_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                mul_ln93_1_reg_144 <= grp_fu_113_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                mul_ln93_reg_139 <= grp_fu_117_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, D_V_loc_empty_n, STRIDE_2_empty_n, batch_empty_n, mul_ln93_1_loc_out_full_n, mul_ln93_1_loc_out1_full_n, mul_ln93_1_loc_out2_full_n, mul_ln93_1_loc_out3_full_n, ap_CS_fsm_state11)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((batch_empty_n = ap_const_logic_0) or (ap_const_logic_0 = STRIDE_2_empty_n) or (ap_const_logic_0 = D_V_loc_empty_n) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
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
                if ((not(((mul_ln93_1_loc_out3_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out2_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out1_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state11))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state11;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXX";
        end case;
    end process;

    D_V_loc_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, D_V_loc_empty_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            D_V_loc_blk_n <= D_V_loc_empty_n;
        else 
            D_V_loc_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    D_V_loc_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, D_V_loc_empty_n, STRIDE_2_empty_n, batch_empty_n)
    begin
        if ((not(((batch_empty_n = ap_const_logic_0) or (ap_const_logic_0 = STRIDE_2_empty_n) or (ap_const_logic_0 = D_V_loc_empty_n) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            D_V_loc_read <= ap_const_logic_1;
        else 
            D_V_loc_read <= ap_const_logic_0;
        end if; 
    end process;


    STRIDE_2_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, STRIDE_2_empty_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            STRIDE_2_blk_n <= STRIDE_2_empty_n;
        else 
            STRIDE_2_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    STRIDE_2_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, D_V_loc_empty_n, STRIDE_2_empty_n, batch_empty_n)
    begin
        if ((not(((batch_empty_n = ap_const_logic_0) or (ap_const_logic_0 = STRIDE_2_empty_n) or (ap_const_logic_0 = D_V_loc_empty_n) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            STRIDE_2_read <= ap_const_logic_1;
        else 
            STRIDE_2_read <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, D_V_loc_empty_n, STRIDE_2_empty_n, batch_empty_n)
    begin
                ap_block_state1 <= ((batch_empty_n = ap_const_logic_0) or (ap_const_logic_0 = STRIDE_2_empty_n) or (ap_const_logic_0 = D_V_loc_empty_n) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;


    ap_block_state11_assign_proc : process(mul_ln93_1_loc_out_full_n, mul_ln93_1_loc_out1_full_n, mul_ln93_1_loc_out2_full_n, mul_ln93_1_loc_out3_full_n)
    begin
                ap_block_state11 <= ((mul_ln93_1_loc_out3_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out2_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out1_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out_full_n = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, mul_ln93_1_loc_out_full_n, mul_ln93_1_loc_out1_full_n, mul_ln93_1_loc_out2_full_n, mul_ln93_1_loc_out3_full_n, ap_CS_fsm_state11)
    begin
        if ((not(((mul_ln93_1_loc_out3_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out2_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out1_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
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


    ap_ready_assign_proc : process(mul_ln93_1_loc_out_full_n, mul_ln93_1_loc_out1_full_n, mul_ln93_1_loc_out2_full_n, mul_ln93_1_loc_out3_full_n, ap_CS_fsm_state11)
    begin
        if ((not(((mul_ln93_1_loc_out3_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out2_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out1_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
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


    batch_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, D_V_loc_empty_n, STRIDE_2_empty_n, batch_empty_n)
    begin
        if ((not(((batch_empty_n = ap_const_logic_0) or (ap_const_logic_0 = STRIDE_2_empty_n) or (ap_const_logic_0 = D_V_loc_empty_n) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            batch_read <= ap_const_logic_1;
        else 
            batch_read <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_117_p0 <= zext_ln71_fu_110_p1(16 - 1 downto 0);
    grp_fu_117_p1 <= zext_ln71_fu_110_p1(16 - 1 downto 0);
    lshr_ln_fu_88_p4 <= D_V_loc_dout(15 downto 1);

    mul_ln93_1_loc_out1_blk_n_assign_proc : process(mul_ln93_1_loc_out1_full_n, ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            mul_ln93_1_loc_out1_blk_n <= mul_ln93_1_loc_out1_full_n;
        else 
            mul_ln93_1_loc_out1_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    mul_ln93_1_loc_out1_din <= mul_ln93_1_reg_144;

    mul_ln93_1_loc_out1_write_assign_proc : process(mul_ln93_1_loc_out_full_n, mul_ln93_1_loc_out1_full_n, mul_ln93_1_loc_out2_full_n, mul_ln93_1_loc_out3_full_n, ap_CS_fsm_state11)
    begin
        if ((not(((mul_ln93_1_loc_out3_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out2_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out1_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            mul_ln93_1_loc_out1_write <= ap_const_logic_1;
        else 
            mul_ln93_1_loc_out1_write <= ap_const_logic_0;
        end if; 
    end process;


    mul_ln93_1_loc_out2_blk_n_assign_proc : process(mul_ln93_1_loc_out2_full_n, ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            mul_ln93_1_loc_out2_blk_n <= mul_ln93_1_loc_out2_full_n;
        else 
            mul_ln93_1_loc_out2_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    mul_ln93_1_loc_out2_din <= mul_ln93_1_reg_144;

    mul_ln93_1_loc_out2_write_assign_proc : process(mul_ln93_1_loc_out_full_n, mul_ln93_1_loc_out1_full_n, mul_ln93_1_loc_out2_full_n, mul_ln93_1_loc_out3_full_n, ap_CS_fsm_state11)
    begin
        if ((not(((mul_ln93_1_loc_out3_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out2_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out1_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            mul_ln93_1_loc_out2_write <= ap_const_logic_1;
        else 
            mul_ln93_1_loc_out2_write <= ap_const_logic_0;
        end if; 
    end process;


    mul_ln93_1_loc_out3_blk_n_assign_proc : process(mul_ln93_1_loc_out3_full_n, ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            mul_ln93_1_loc_out3_blk_n <= mul_ln93_1_loc_out3_full_n;
        else 
            mul_ln93_1_loc_out3_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    mul_ln93_1_loc_out3_din <= mul_ln93_1_reg_144;

    mul_ln93_1_loc_out3_write_assign_proc : process(mul_ln93_1_loc_out_full_n, mul_ln93_1_loc_out1_full_n, mul_ln93_1_loc_out2_full_n, mul_ln93_1_loc_out3_full_n, ap_CS_fsm_state11)
    begin
        if ((not(((mul_ln93_1_loc_out3_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out2_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out1_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            mul_ln93_1_loc_out3_write <= ap_const_logic_1;
        else 
            mul_ln93_1_loc_out3_write <= ap_const_logic_0;
        end if; 
    end process;


    mul_ln93_1_loc_out_blk_n_assign_proc : process(mul_ln93_1_loc_out_full_n, ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            mul_ln93_1_loc_out_blk_n <= mul_ln93_1_loc_out_full_n;
        else 
            mul_ln93_1_loc_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    mul_ln93_1_loc_out_din <= mul_ln93_1_reg_144;

    mul_ln93_1_loc_out_write_assign_proc : process(mul_ln93_1_loc_out_full_n, mul_ln93_1_loc_out1_full_n, mul_ln93_1_loc_out2_full_n, mul_ln93_1_loc_out3_full_n, ap_CS_fsm_state11)
    begin
        if ((not(((mul_ln93_1_loc_out3_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out2_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out1_full_n = ap_const_logic_0) or (mul_ln93_1_loc_out_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            mul_ln93_1_loc_out_write <= ap_const_logic_1;
        else 
            mul_ln93_1_loc_out_write <= ap_const_logic_0;
        end if; 
    end process;

    select_ln71_fu_102_p3 <= 
        zext_ln1497_fu_98_p1 when (STRIDE_2_dout(0) = '1') else 
        D_V_loc_dout;
    zext_ln1497_fu_98_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(lshr_ln_fu_88_p4),16));
    zext_ln71_fu_110_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln71_reg_128),32));
end behav;