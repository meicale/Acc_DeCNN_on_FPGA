-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_S2M_16_8_8_ap_int_128_ap_int_128_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    s_mem_dout : IN STD_LOGIC_VECTOR (127 downto 0);
    s_mem_empty_n : IN STD_LOGIC;
    s_mem_read : OUT STD_LOGIC;
    m_axi_gmem1_AWVALID : OUT STD_LOGIC;
    m_axi_gmem1_AWREADY : IN STD_LOGIC;
    m_axi_gmem1_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem1_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem1_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem1_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem1_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_WVALID : OUT STD_LOGIC;
    m_axi_gmem1_WREADY : IN STD_LOGIC;
    m_axi_gmem1_WDATA : OUT STD_LOGIC_VECTOR (127 downto 0);
    m_axi_gmem1_WSTRB : OUT STD_LOGIC_VECTOR (15 downto 0);
    m_axi_gmem1_WLAST : OUT STD_LOGIC;
    m_axi_gmem1_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_ARVALID : OUT STD_LOGIC;
    m_axi_gmem1_ARREADY : IN STD_LOGIC;
    m_axi_gmem1_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem1_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem1_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem1_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem1_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_RVALID : IN STD_LOGIC;
    m_axi_gmem1_RREADY : OUT STD_LOGIC;
    m_axi_gmem1_RDATA : IN STD_LOGIC_VECTOR (127 downto 0);
    m_axi_gmem1_RLAST : IN STD_LOGIC;
    m_axi_gmem1_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_BVALID : IN STD_LOGIC;
    m_axi_gmem1_BREADY : OUT STD_LOGIC;
    m_axi_gmem1_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    out_r_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    out_r_empty_n : IN STD_LOGIC;
    out_r_read : OUT STD_LOGIC;
    select_ln169_loc_dout : IN STD_LOGIC_VECTOR (28 downto 0);
    select_ln169_loc_empty_n : IN STD_LOGIC;
    select_ln169_loc_read : OUT STD_LOGIC );
end;


architecture behav of top_S2M_16_8_8_ap_int_128_ap_int_128_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv28_0 : STD_LOGIC_VECTOR (27 downto 0) := "0000000000000000000000000000";
    constant ap_const_lv16_FFFF : STD_LOGIC_VECTOR (15 downto 0) := "1111111111111111";
    constant ap_const_lv29_0 : STD_LOGIC_VECTOR (28 downto 0) := "00000000000000000000000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv28_1 : STD_LOGIC_VECTOR (27 downto 0) := "0000000000000000000000000001";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal s_mem_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln91_1_reg_193 : STD_LOGIC_VECTOR (0 downto 0);
    signal gmem1_blk_n_AW : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln91_reg_173 : STD_LOGIC_VECTOR (0 downto 0);
    signal gmem1_blk_n_W : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal icmp_ln91_1_reg_193_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal gmem1_blk_n_B : STD_LOGIC;
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal out_r_blk_n : STD_LOGIC;
    signal select_ln169_loc_blk_n : STD_LOGIC;
    signal rep_reg_107 : STD_LOGIC_VECTOR (27 downto 0);
    signal out_read_reg_162 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln169_loc_read_reg_167 : STD_LOGIC_VECTOR (28 downto 0);
    signal icmp_ln91_fu_118_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln91_fu_128_p1 : STD_LOGIC_VECTOR (27 downto 0);
    signal trunc_ln91_reg_177 : STD_LOGIC_VECTOR (27 downto 0);
    signal add_ln91_fu_151_p2 : STD_LOGIC_VECTOR (27 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state5_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln91_1_fu_157_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal s_read_V_reg_197 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_block_state2_io : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal sext_ln91_fu_140_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_state10 : BOOLEAN;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_block_state1 : BOOLEAN;
    signal icmp_ln91_fu_118_p0 : STD_LOGIC_VECTOR (28 downto 0);
    signal trunc_ln91_1_fu_131_p4 : STD_LOGIC_VECTOR (59 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
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
                elsif ((not(((m_axi_gmem1_BVALID = ap_const_logic_0) and (icmp_ln91_reg_173 = ap_const_lv1_1))) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln91_reg_173 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_state2_io))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln91_reg_173 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_state2_io))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    rep_reg_107_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln91_reg_173 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_state2_io))) then 
                rep_reg_107 <= ap_const_lv28_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln91_1_fu_157_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                rep_reg_107 <= add_ln91_fu_151_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln91_1_reg_193 <= icmp_ln91_1_fu_157_p2;
                icmp_ln91_1_reg_193_pp0_iter1_reg <= icmp_ln91_1_reg_193;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                icmp_ln91_reg_173 <= icmp_ln91_fu_118_p2;
                out_read_reg_162 <= out_r_dout;
                select_ln169_loc_read_reg_167 <= select_ln169_loc_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln91_1_reg_193 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                s_read_V_reg_197 <= s_mem_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln91_reg_173 = ap_const_lv1_1))) then
                trunc_ln91_reg_177 <= trunc_ln91_fu_128_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, m_axi_gmem1_BVALID, out_r_empty_n, select_ln169_loc_empty_n, ap_enable_reg_pp0_iter1, ap_CS_fsm_state2, icmp_ln91_reg_173, ap_enable_reg_pp0_iter2, ap_CS_fsm_state10, ap_enable_reg_pp0_iter0, icmp_ln91_1_fu_157_p2, ap_block_state2_io, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((select_ln169_loc_empty_n = ap_const_logic_0) or (out_r_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln91_reg_173 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_state2_io))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln91_reg_173 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_state2_io))) then
                    ap_NS_fsm <= ap_ST_fsm_state10;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((icmp_ln91_1_fu_157_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) and not(((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((icmp_ln91_1_fu_157_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                if ((not(((m_axi_gmem1_BVALID = ap_const_logic_0) and (icmp_ln91_reg_173 = ap_const_lv1_1))) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    add_ln91_fu_151_p2 <= std_logic_vector(unsigned(rep_reg_107) + unsigned(ap_const_lv28_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(7);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(s_mem_empty_n, ap_enable_reg_pp0_iter1, icmp_ln91_1_reg_193)
    begin
                ap_block_pp0_stage0_01001 <= ((s_mem_empty_n = ap_const_logic_0) and (icmp_ln91_1_reg_193 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(s_mem_empty_n, ap_enable_reg_pp0_iter1, icmp_ln91_1_reg_193, ap_enable_reg_pp0_iter2, ap_block_state5_io)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_const_boolean_1 = ap_block_state5_io) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((s_mem_empty_n = ap_const_logic_0) and (icmp_ln91_1_reg_193 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(s_mem_empty_n, ap_enable_reg_pp0_iter1, icmp_ln91_1_reg_193, ap_enable_reg_pp0_iter2, ap_block_state5_io)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_const_boolean_1 = ap_block_state5_io) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((s_mem_empty_n = ap_const_logic_0) and (icmp_ln91_1_reg_193 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, out_r_empty_n, select_ln169_loc_empty_n)
    begin
                ap_block_state1 <= ((select_ln169_loc_empty_n = ap_const_logic_0) or (out_r_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;


    ap_block_state10_assign_proc : process(m_axi_gmem1_BVALID, icmp_ln91_reg_173)
    begin
                ap_block_state10 <= ((m_axi_gmem1_BVALID = ap_const_logic_0) and (icmp_ln91_reg_173 = ap_const_lv1_1));
    end process;


    ap_block_state2_io_assign_proc : process(m_axi_gmem1_AWREADY, icmp_ln91_reg_173)
    begin
                ap_block_state2_io <= ((m_axi_gmem1_AWREADY = ap_const_logic_0) and (icmp_ln91_reg_173 = ap_const_lv1_1));
    end process;

        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_pp0_stage0_iter1_assign_proc : process(s_mem_empty_n, icmp_ln91_1_reg_193)
    begin
                ap_block_state4_pp0_stage0_iter1 <= ((s_mem_empty_n = ap_const_logic_0) and (icmp_ln91_1_reg_193 = ap_const_lv1_0));
    end process;


    ap_block_state5_io_assign_proc : process(m_axi_gmem1_WREADY, icmp_ln91_1_reg_193_pp0_iter1_reg)
    begin
                ap_block_state5_io <= ((m_axi_gmem1_WREADY = ap_const_logic_0) and (icmp_ln91_1_reg_193_pp0_iter1_reg = ap_const_lv1_0));
    end process;

        ap_block_state5_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state3_assign_proc : process(icmp_ln91_1_fu_157_p2)
    begin
        if ((icmp_ln91_1_fu_157_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, m_axi_gmem1_BVALID, icmp_ln91_reg_173, ap_CS_fsm_state10)
    begin
        if ((not(((m_axi_gmem1_BVALID = ap_const_logic_0) and (icmp_ln91_reg_173 = ap_const_lv1_1))) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(m_axi_gmem1_BVALID, icmp_ln91_reg_173, ap_CS_fsm_state10)
    begin
        if ((not(((m_axi_gmem1_BVALID = ap_const_logic_0) and (icmp_ln91_reg_173 = ap_const_lv1_1))) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    gmem1_blk_n_AW_assign_proc : process(m_axi_gmem1_AWREADY, ap_CS_fsm_state2, icmp_ln91_reg_173)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln91_reg_173 = ap_const_lv1_1))) then 
            gmem1_blk_n_AW <= m_axi_gmem1_AWREADY;
        else 
            gmem1_blk_n_AW <= ap_const_logic_1;
        end if; 
    end process;


    gmem1_blk_n_B_assign_proc : process(m_axi_gmem1_BVALID, icmp_ln91_reg_173, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) and (icmp_ln91_reg_173 = ap_const_lv1_1))) then 
            gmem1_blk_n_B <= m_axi_gmem1_BVALID;
        else 
            gmem1_blk_n_B <= ap_const_logic_1;
        end if; 
    end process;


    gmem1_blk_n_W_assign_proc : process(m_axi_gmem1_WREADY, ap_block_pp0_stage0, ap_enable_reg_pp0_iter2, icmp_ln91_1_reg_193_pp0_iter1_reg)
    begin
        if (((icmp_ln91_1_reg_193_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            gmem1_blk_n_W <= m_axi_gmem1_WREADY;
        else 
            gmem1_blk_n_W <= ap_const_logic_1;
        end if; 
    end process;

    icmp_ln91_1_fu_157_p2 <= "1" when (rep_reg_107 = trunc_ln91_reg_177) else "0";
    icmp_ln91_fu_118_p0 <= select_ln169_loc_dout;
    icmp_ln91_fu_118_p2 <= "1" when (signed(icmp_ln91_fu_118_p0) > signed(ap_const_lv29_0)) else "0";
    m_axi_gmem1_ARADDR <= ap_const_lv64_0;
    m_axi_gmem1_ARBURST <= ap_const_lv2_0;
    m_axi_gmem1_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem1_ARID <= ap_const_lv1_0;
    m_axi_gmem1_ARLEN <= ap_const_lv32_0;
    m_axi_gmem1_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem1_ARPROT <= ap_const_lv3_0;
    m_axi_gmem1_ARQOS <= ap_const_lv4_0;
    m_axi_gmem1_ARREGION <= ap_const_lv4_0;
    m_axi_gmem1_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem1_ARUSER <= ap_const_lv1_0;
    m_axi_gmem1_ARVALID <= ap_const_logic_0;
    m_axi_gmem1_AWADDR <= sext_ln91_fu_140_p1;
    m_axi_gmem1_AWBURST <= ap_const_lv2_0;
    m_axi_gmem1_AWCACHE <= ap_const_lv4_0;
    m_axi_gmem1_AWID <= ap_const_lv1_0;
        m_axi_gmem1_AWLEN <= std_logic_vector(IEEE.numeric_std.resize(signed(select_ln169_loc_read_reg_167),32));

    m_axi_gmem1_AWLOCK <= ap_const_lv2_0;
    m_axi_gmem1_AWPROT <= ap_const_lv3_0;
    m_axi_gmem1_AWQOS <= ap_const_lv4_0;
    m_axi_gmem1_AWREGION <= ap_const_lv4_0;
    m_axi_gmem1_AWSIZE <= ap_const_lv3_0;
    m_axi_gmem1_AWUSER <= ap_const_lv1_0;

    m_axi_gmem1_AWVALID_assign_proc : process(ap_CS_fsm_state2, icmp_ln91_reg_173, ap_block_state2_io)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln91_reg_173 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_state2_io))) then 
            m_axi_gmem1_AWVALID <= ap_const_logic_1;
        else 
            m_axi_gmem1_AWVALID <= ap_const_logic_0;
        end if; 
    end process;


    m_axi_gmem1_BREADY_assign_proc : process(m_axi_gmem1_BVALID, icmp_ln91_reg_173, ap_CS_fsm_state10)
    begin
        if ((not(((m_axi_gmem1_BVALID = ap_const_logic_0) and (icmp_ln91_reg_173 = ap_const_lv1_1))) and (ap_const_logic_1 = ap_CS_fsm_state10) and (icmp_ln91_reg_173 = ap_const_lv1_1))) then 
            m_axi_gmem1_BREADY <= ap_const_logic_1;
        else 
            m_axi_gmem1_BREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem1_RREADY <= ap_const_logic_0;
    m_axi_gmem1_WDATA <= s_read_V_reg_197;
    m_axi_gmem1_WID <= ap_const_lv1_0;
    m_axi_gmem1_WLAST <= ap_const_logic_0;
    m_axi_gmem1_WSTRB <= ap_const_lv16_FFFF;
    m_axi_gmem1_WUSER <= ap_const_lv1_0;

    m_axi_gmem1_WVALID_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln91_1_reg_193_pp0_iter1_reg, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln91_1_reg_193_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            m_axi_gmem1_WVALID <= ap_const_logic_1;
        else 
            m_axi_gmem1_WVALID <= ap_const_logic_0;
        end if; 
    end process;


    out_r_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, out_r_empty_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            out_r_blk_n <= out_r_empty_n;
        else 
            out_r_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    out_r_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, out_r_empty_n, select_ln169_loc_empty_n)
    begin
        if ((not(((select_ln169_loc_empty_n = ap_const_logic_0) or (out_r_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            out_r_read <= ap_const_logic_1;
        else 
            out_r_read <= ap_const_logic_0;
        end if; 
    end process;


    s_mem_blk_n_assign_proc : process(s_mem_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln91_1_reg_193)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln91_1_reg_193 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            s_mem_blk_n <= s_mem_empty_n;
        else 
            s_mem_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    s_mem_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln91_1_reg_193, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln91_1_reg_193 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            s_mem_read <= ap_const_logic_1;
        else 
            s_mem_read <= ap_const_logic_0;
        end if; 
    end process;


    select_ln169_loc_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, select_ln169_loc_empty_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            select_ln169_loc_blk_n <= select_ln169_loc_empty_n;
        else 
            select_ln169_loc_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    select_ln169_loc_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, out_r_empty_n, select_ln169_loc_empty_n)
    begin
        if ((not(((select_ln169_loc_empty_n = ap_const_logic_0) or (out_r_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            select_ln169_loc_read <= ap_const_logic_1;
        else 
            select_ln169_loc_read <= ap_const_logic_0;
        end if; 
    end process;

        sext_ln91_fu_140_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln91_1_fu_131_p4),64));

    trunc_ln91_1_fu_131_p4 <= out_read_reg_162(63 downto 4);
    trunc_ln91_fu_128_p1 <= select_ln169_loc_read_reg_167(28 - 1 downto 0);
end behav;
