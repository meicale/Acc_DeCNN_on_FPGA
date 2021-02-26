-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_Block_Z12conv1x1_packILi16ELi16ELi512ELi1024ELi512ELi8ELi24ELi4ELi16ELi16EEvRN3hls6streamI6ap_intIXmlT4_T_EELi0EEERNS1_IS2_IXmlT4_T0_EELi0EEEPS2_IXmlT6_T_EEPS2_IXT7_EEPS2_IXT8_EE7ap_uintILi16EESG_SG_ibb_exit_i_proc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ret_V_1_loc_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    ret_V_1_loc_empty_n : IN STD_LOGIC;
    ret_V_1_loc_read : OUT STD_LOGIC;
    ap_return : OUT STD_LOGIC_VECTOR (23 downto 0) );
end;


architecture behav of top_Block_Z12conv1x1_packILi16ELi16ELi512ELi1024ELi512ELi8ELi24ELi4ELi16ELi16EEvRN3hls6streamI6ap_intIXmlT4_T_EELi0EEERNS1_IS2_IXmlT4_T0_EELi0EEEPS2_IXmlT6_T_EEPS2_IXT7_EEPS2_IXT8_EE7ap_uintILi16EESG_SG_ibb_exit_i_proc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv24_0 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ret_V_1_loc_blk_n : STD_LOGIC;
    signal ap_block_state1 : BOOLEAN;
    signal ap_return_preg : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ce_reg : STD_LOGIC;


begin




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
                elsif ((not(((ap_start = ap_const_logic_0) or (ret_V_1_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv24_0;
            else
                if ((not(((ap_start = ap_const_logic_0) or (ret_V_1_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_return_preg <= ret_V_1_loc_dout(31 downto 8);
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ret_V_1_loc_empty_n)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, ret_V_1_loc_empty_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ret_V_1_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, ret_V_1_loc_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ret_V_1_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
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


    ap_ready_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, ret_V_1_loc_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ret_V_1_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, ret_V_1_loc_dout, ret_V_1_loc_empty_n, ap_return_preg)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ret_V_1_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_return <= ret_V_1_loc_dout(31 downto 8);
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;


    ret_V_1_loc_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, ret_V_1_loc_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ret_V_1_loc_blk_n <= ret_V_1_loc_empty_n;
        else 
            ret_V_1_loc_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    ret_V_1_loc_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, ret_V_1_loc_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ret_V_1_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ret_V_1_loc_read <= ap_const_logic_1;
        else 
            ret_V_1_loc_read <= ap_const_logic_0;
        end if; 
    end process;

end behav;