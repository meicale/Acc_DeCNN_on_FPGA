-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_Loop_VITIS_LOOP_88_1_proc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    OC_V_loc_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    OC_V_loc_empty_n : IN STD_LOGIC;
    OC_V_loc_read : OUT STD_LOGIC;
    k3_buffer_V_0_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    k3_buffer_V_0_ce0 : OUT STD_LOGIC;
    k3_buffer_V_0_we0 : OUT STD_LOGIC;
    k3_buffer_V_0_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    k3_buffer_V_1_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    k3_buffer_V_1_ce0 : OUT STD_LOGIC;
    k3_buffer_V_1_we0 : OUT STD_LOGIC;
    k3_buffer_V_1_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    k3_buffer_V_2_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    k3_buffer_V_2_ce0 : OUT STD_LOGIC;
    k3_buffer_V_2_we0 : OUT STD_LOGIC;
    k3_buffer_V_2_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    k3_buffer_V_3_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    k3_buffer_V_3_ce0 : OUT STD_LOGIC;
    k3_buffer_V_3_we0 : OUT STD_LOGIC;
    k3_buffer_V_3_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    k3_buffer_V_4_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    k3_buffer_V_4_ce0 : OUT STD_LOGIC;
    k3_buffer_V_4_we0 : OUT STD_LOGIC;
    k3_buffer_V_4_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    k3_buffer_V_5_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    k3_buffer_V_5_ce0 : OUT STD_LOGIC;
    k3_buffer_V_5_we0 : OUT STD_LOGIC;
    k3_buffer_V_5_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    k3_buffer_V_6_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    k3_buffer_V_6_ce0 : OUT STD_LOGIC;
    k3_buffer_V_6_we0 : OUT STD_LOGIC;
    k3_buffer_V_6_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    k3_buffer_V_7_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    k3_buffer_V_7_ce0 : OUT STD_LOGIC;
    k3_buffer_V_7_we0 : OUT STD_LOGIC;
    k3_buffer_V_7_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    k3_buffer_V_8_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    k3_buffer_V_8_ce0 : OUT STD_LOGIC;
    k3_buffer_V_8_we0 : OUT STD_LOGIC;
    k3_buffer_V_8_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    k0_3_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    k0_3_empty_n : IN STD_LOGIC;
    k0_3_read : OUT STD_LOGIC;
    m_axi_gmem3_AWVALID : OUT STD_LOGIC;
    m_axi_gmem3_AWREADY : IN STD_LOGIC;
    m_axi_gmem3_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem3_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem3_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem3_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem3_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem3_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem3_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem3_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem3_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem3_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_WVALID : OUT STD_LOGIC;
    m_axi_gmem3_WREADY : IN STD_LOGIC;
    m_axi_gmem3_WDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem3_WSTRB : OUT STD_LOGIC_VECTOR (7 downto 0);
    m_axi_gmem3_WLAST : OUT STD_LOGIC;
    m_axi_gmem3_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_ARVALID : OUT STD_LOGIC;
    m_axi_gmem3_ARREADY : IN STD_LOGIC;
    m_axi_gmem3_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem3_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem3_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem3_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem3_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem3_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem3_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem3_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem3_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem3_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_RVALID : IN STD_LOGIC;
    m_axi_gmem3_RREADY : OUT STD_LOGIC;
    m_axi_gmem3_RDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem3_RLAST : IN STD_LOGIC;
    m_axi_gmem3_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem3_BVALID : IN STD_LOGIC;
    m_axi_gmem3_BREADY : OUT STD_LOGIC;
    m_axi_gmem3_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem3_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem3_BUSER : IN STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of top_Loop_VITIS_LOOP_88_1_proc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv33_0 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000000000000000000";
    constant ap_const_lv4_7 : STD_LOGIC_VECTOR (3 downto 0) := "0111";
    constant ap_const_lv4_6 : STD_LOGIC_VECTOR (3 downto 0) := "0110";
    constant ap_const_lv4_5 : STD_LOGIC_VECTOR (3 downto 0) := "0101";
    constant ap_const_lv4_4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv16_9 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000001001";
    constant ap_const_lv33_1C71D : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000011100011100011101";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal OC_V_loc_blk_n : STD_LOGIC;
    signal k0_3_blk_n : STD_LOGIC;
    signal gmem3_blk_n_AR : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal gmem3_blk_n_R : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln88_reg_432 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reg_254 : STD_LOGIC_VECTOR (15 downto 0);
    signal phi_urem_reg_265 : STD_LOGIC_VECTOR (15 downto 0);
    signal phi_mul_reg_277 : STD_LOGIC_VECTOR (32 downto 0);
    signal trunc_ln_reg_405 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln89_2_reg_411 : STD_LOGIC_VECTOR (60 downto 0);
    signal add_ln88_1_fu_344_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_state9_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state10_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state11_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln88_fu_350_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln88_2_fu_355_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln88_2_reg_436 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln88_1_fu_361_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln88_1_reg_441 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln89_fu_367_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln89_reg_446 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln89_fu_371_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal tmp_reg_455 : STD_LOGIC_VECTOR (12 downto 0);
    signal gmem3_addr_read_reg_460 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln88_fu_387_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_flush_enable : STD_LOGIC;
    signal ap_condition_pp0_exit_iter1_state10 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_phi_mux_phi_urem_phi_fu_269_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln89_fu_393_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln89_3_fu_330_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal shl_ln_fu_288_p3 : STD_LOGIC_VECTOR (18 downto 0);
    signal zext_ln88_fu_296_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal zext_ln88_1_fu_300_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal add_ln88_fu_304_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);
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
                elsif ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
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
                if ((ap_const_logic_1 = ap_condition_pp0_flush_enable)) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
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
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state8) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter1_state10) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
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
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter1_state10) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_254_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                i_reg_254 <= ap_const_lv16_0;
            elsif (((icmp_ln88_fu_350_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                i_reg_254 <= add_ln88_1_fu_344_p2;
            end if; 
        end if;
    end process;

    phi_mul_reg_277_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                phi_mul_reg_277 <= ap_const_lv33_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln88_reg_432 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                phi_mul_reg_277 <= add_ln89_fu_371_p2;
            end if; 
        end if;
    end process;

    phi_urem_reg_265_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                phi_urem_reg_265 <= ap_const_lv16_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln88_reg_432 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                phi_urem_reg_265 <= select_ln88_fu_387_p3;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln88_fu_350_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                add_ln88_2_reg_436 <= add_ln88_2_fu_355_p2;
                icmp_ln88_1_reg_441 <= icmp_ln88_1_fu_361_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln88_reg_432 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                gmem3_addr_read_reg_460 <= m_axi_gmem3_RDATA;
                tmp_reg_455 <= phi_mul_reg_277(32 downto 20);
                trunc_ln89_reg_446 <= trunc_ln89_fu_367_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln88_reg_432 <= icmp_ln88_fu_350_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                trunc_ln89_2_reg_411 <= k0_3_dout(63 downto 3);
                trunc_ln_reg_405 <= add_ln88_fu_304_p2(19 downto 4);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, OC_V_loc_empty_n, k0_3_empty_n, m_axi_gmem3_ARREADY, ap_CS_fsm_state2, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_const_logic_0 = OC_V_loc_empty_n) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0) or (k0_3_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (m_axi_gmem3_ARREADY = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
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
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state12;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;

    OC_V_loc_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, OC_V_loc_empty_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            OC_V_loc_blk_n <= OC_V_loc_empty_n;
        else 
            OC_V_loc_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    OC_V_loc_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, OC_V_loc_empty_n, k0_3_empty_n)
    begin
        if ((not(((ap_const_logic_0 = OC_V_loc_empty_n) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0) or (k0_3_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            OC_V_loc_read <= ap_const_logic_1;
        else 
            OC_V_loc_read <= ap_const_logic_0;
        end if; 
    end process;

    add_ln88_1_fu_344_p2 <= std_logic_vector(unsigned(i_reg_254) + unsigned(ap_const_lv16_1));
    add_ln88_2_fu_355_p2 <= std_logic_vector(unsigned(ap_phi_mux_phi_urem_phi_fu_269_p4) + unsigned(ap_const_lv16_1));
    add_ln88_fu_304_p2 <= std_logic_vector(unsigned(zext_ln88_fu_296_p1) + unsigned(zext_ln88_1_fu_300_p1));
    add_ln89_fu_371_p2 <= std_logic_vector(unsigned(phi_mul_reg_277) + unsigned(ap_const_lv33_1C71D));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(8);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state12 <= ap_CS_fsm(9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(m_axi_gmem3_RVALID, ap_enable_reg_pp0_iter1, icmp_ln88_reg_432)
    begin
                ap_block_pp0_stage0_11001 <= ((icmp_ln88_reg_432 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (m_axi_gmem3_RVALID = ap_const_logic_0));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(m_axi_gmem3_RVALID, ap_enable_reg_pp0_iter1, icmp_ln88_reg_432)
    begin
                ap_block_pp0_stage0_subdone <= ((icmp_ln88_reg_432 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (m_axi_gmem3_RVALID = ap_const_logic_0));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, OC_V_loc_empty_n, k0_3_empty_n)
    begin
                ap_block_state1 <= ((ap_const_logic_0 = OC_V_loc_empty_n) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0) or (k0_3_empty_n = ap_const_logic_0));
    end process;


    ap_block_state10_pp0_stage0_iter1_assign_proc : process(m_axi_gmem3_RVALID, icmp_ln88_reg_432)
    begin
                ap_block_state10_pp0_stage0_iter1 <= ((icmp_ln88_reg_432 = ap_const_lv1_0) and (m_axi_gmem3_RVALID = ap_const_logic_0));
    end process;

        ap_block_state11_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state9_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter1_state10_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            ap_condition_pp0_exit_iter1_state10 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter1_state10 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_pp0_flush_enable_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln88_fu_350_p2, ap_block_pp0_stage0_subdone)
    begin
        if (((icmp_ln88_fu_350_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_condition_pp0_flush_enable <= ap_const_logic_1;
        else 
            ap_condition_pp0_flush_enable <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_phi_urem_phi_fu_269_p4_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln88_reg_432, phi_urem_reg_265, select_ln88_fu_387_p3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln88_reg_432 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            ap_phi_mux_phi_urem_phi_fu_269_p4 <= select_ln88_fu_387_p3;
        else 
            ap_phi_mux_phi_urem_phi_fu_269_p4 <= phi_urem_reg_265;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    gmem3_blk_n_AR_assign_proc : process(m_axi_gmem3_ARREADY, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            gmem3_blk_n_AR <= m_axi_gmem3_ARREADY;
        else 
            gmem3_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;


    gmem3_blk_n_R_assign_proc : process(m_axi_gmem3_RVALID, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln88_reg_432)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln88_reg_432 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            gmem3_blk_n_R <= m_axi_gmem3_RVALID;
        else 
            gmem3_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    icmp_ln88_1_fu_361_p2 <= "1" when (unsigned(add_ln88_2_fu_355_p2) < unsigned(ap_const_lv16_9)) else "0";
    icmp_ln88_fu_350_p2 <= "1" when (i_reg_254 = trunc_ln_reg_405) else "0";

    k0_3_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, k0_3_empty_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            k0_3_blk_n <= k0_3_empty_n;
        else 
            k0_3_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    k0_3_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, OC_V_loc_empty_n, k0_3_empty_n)
    begin
        if ((not(((ap_const_logic_0 = OC_V_loc_empty_n) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0) or (k0_3_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            k0_3_read <= ap_const_logic_1;
        else 
            k0_3_read <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_0_address0 <= zext_ln89_fu_393_p1(6 - 1 downto 0);

    k3_buffer_V_0_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_0_ce0 <= ap_const_logic_1;
        else 
            k3_buffer_V_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_0_d0 <= gmem3_addr_read_reg_460;

    k3_buffer_V_0_we0_assign_proc : process(ap_block_pp0_stage0_11001, trunc_ln89_reg_446, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (trunc_ln89_reg_446 = ap_const_lv4_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_0_we0 <= ap_const_logic_1;
        else 
            k3_buffer_V_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_1_address0 <= zext_ln89_fu_393_p1(6 - 1 downto 0);

    k3_buffer_V_1_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_1_ce0 <= ap_const_logic_1;
        else 
            k3_buffer_V_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_1_d0 <= gmem3_addr_read_reg_460;

    k3_buffer_V_1_we0_assign_proc : process(ap_block_pp0_stage0_11001, trunc_ln89_reg_446, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (trunc_ln89_reg_446 = ap_const_lv4_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_1_we0 <= ap_const_logic_1;
        else 
            k3_buffer_V_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_2_address0 <= zext_ln89_fu_393_p1(6 - 1 downto 0);

    k3_buffer_V_2_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_2_ce0 <= ap_const_logic_1;
        else 
            k3_buffer_V_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_2_d0 <= gmem3_addr_read_reg_460;

    k3_buffer_V_2_we0_assign_proc : process(ap_block_pp0_stage0_11001, trunc_ln89_reg_446, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (trunc_ln89_reg_446 = ap_const_lv4_2) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_2_we0 <= ap_const_logic_1;
        else 
            k3_buffer_V_2_we0 <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_3_address0 <= zext_ln89_fu_393_p1(6 - 1 downto 0);

    k3_buffer_V_3_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_3_ce0 <= ap_const_logic_1;
        else 
            k3_buffer_V_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_3_d0 <= gmem3_addr_read_reg_460;

    k3_buffer_V_3_we0_assign_proc : process(ap_block_pp0_stage0_11001, trunc_ln89_reg_446, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (trunc_ln89_reg_446 = ap_const_lv4_3) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_3_we0 <= ap_const_logic_1;
        else 
            k3_buffer_V_3_we0 <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_4_address0 <= zext_ln89_fu_393_p1(6 - 1 downto 0);

    k3_buffer_V_4_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_4_ce0 <= ap_const_logic_1;
        else 
            k3_buffer_V_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_4_d0 <= gmem3_addr_read_reg_460;

    k3_buffer_V_4_we0_assign_proc : process(ap_block_pp0_stage0_11001, trunc_ln89_reg_446, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (trunc_ln89_reg_446 = ap_const_lv4_4) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_4_we0 <= ap_const_logic_1;
        else 
            k3_buffer_V_4_we0 <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_5_address0 <= zext_ln89_fu_393_p1(6 - 1 downto 0);

    k3_buffer_V_5_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_5_ce0 <= ap_const_logic_1;
        else 
            k3_buffer_V_5_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_5_d0 <= gmem3_addr_read_reg_460;

    k3_buffer_V_5_we0_assign_proc : process(ap_block_pp0_stage0_11001, trunc_ln89_reg_446, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (trunc_ln89_reg_446 = ap_const_lv4_5) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_5_we0 <= ap_const_logic_1;
        else 
            k3_buffer_V_5_we0 <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_6_address0 <= zext_ln89_fu_393_p1(6 - 1 downto 0);

    k3_buffer_V_6_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_6_ce0 <= ap_const_logic_1;
        else 
            k3_buffer_V_6_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_6_d0 <= gmem3_addr_read_reg_460;

    k3_buffer_V_6_we0_assign_proc : process(ap_block_pp0_stage0_11001, trunc_ln89_reg_446, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (trunc_ln89_reg_446 = ap_const_lv4_6) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_6_we0 <= ap_const_logic_1;
        else 
            k3_buffer_V_6_we0 <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_7_address0 <= zext_ln89_fu_393_p1(6 - 1 downto 0);

    k3_buffer_V_7_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_7_ce0 <= ap_const_logic_1;
        else 
            k3_buffer_V_7_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_7_d0 <= gmem3_addr_read_reg_460;

    k3_buffer_V_7_we0_assign_proc : process(ap_block_pp0_stage0_11001, trunc_ln89_reg_446, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (trunc_ln89_reg_446 = ap_const_lv4_7) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_7_we0 <= ap_const_logic_1;
        else 
            k3_buffer_V_7_we0 <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_8_address0 <= zext_ln89_fu_393_p1(6 - 1 downto 0);

    k3_buffer_V_8_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_8_ce0 <= ap_const_logic_1;
        else 
            k3_buffer_V_8_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    k3_buffer_V_8_d0 <= gmem3_addr_read_reg_460;

    k3_buffer_V_8_we0_assign_proc : process(ap_block_pp0_stage0_11001, trunc_ln89_reg_446, ap_enable_reg_pp0_iter2)
    begin
        if ((not((trunc_ln89_reg_446 = ap_const_lv4_0)) and not((trunc_ln89_reg_446 = ap_const_lv4_1)) and not((trunc_ln89_reg_446 = ap_const_lv4_2)) and not((trunc_ln89_reg_446 = ap_const_lv4_3)) and not((trunc_ln89_reg_446 = ap_const_lv4_4)) and not((trunc_ln89_reg_446 = ap_const_lv4_5)) and not((trunc_ln89_reg_446 = ap_const_lv4_6)) and not((trunc_ln89_reg_446 = ap_const_lv4_7)) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k3_buffer_V_8_we0 <= ap_const_logic_1;
        else 
            k3_buffer_V_8_we0 <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem3_ARADDR <= sext_ln89_3_fu_330_p1;
    m_axi_gmem3_ARBURST <= ap_const_lv2_0;
    m_axi_gmem3_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem3_ARID <= ap_const_lv1_0;
    m_axi_gmem3_ARLEN <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln_reg_405),32));
    m_axi_gmem3_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem3_ARPROT <= ap_const_lv3_0;
    m_axi_gmem3_ARQOS <= ap_const_lv4_0;
    m_axi_gmem3_ARREGION <= ap_const_lv4_0;
    m_axi_gmem3_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem3_ARUSER <= ap_const_lv1_0;

    m_axi_gmem3_ARVALID_assign_proc : process(m_axi_gmem3_ARREADY, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (m_axi_gmem3_ARREADY = ap_const_logic_1))) then 
            m_axi_gmem3_ARVALID <= ap_const_logic_1;
        else 
            m_axi_gmem3_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem3_AWADDR <= ap_const_lv64_0;
    m_axi_gmem3_AWBURST <= ap_const_lv2_0;
    m_axi_gmem3_AWCACHE <= ap_const_lv4_0;
    m_axi_gmem3_AWID <= ap_const_lv1_0;
    m_axi_gmem3_AWLEN <= ap_const_lv32_0;
    m_axi_gmem3_AWLOCK <= ap_const_lv2_0;
    m_axi_gmem3_AWPROT <= ap_const_lv3_0;
    m_axi_gmem3_AWQOS <= ap_const_lv4_0;
    m_axi_gmem3_AWREGION <= ap_const_lv4_0;
    m_axi_gmem3_AWSIZE <= ap_const_lv3_0;
    m_axi_gmem3_AWUSER <= ap_const_lv1_0;
    m_axi_gmem3_AWVALID <= ap_const_logic_0;
    m_axi_gmem3_BREADY <= ap_const_logic_0;

    m_axi_gmem3_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln88_reg_432, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln88_reg_432 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            m_axi_gmem3_RREADY <= ap_const_logic_1;
        else 
            m_axi_gmem3_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem3_WDATA <= ap_const_lv64_0;
    m_axi_gmem3_WID <= ap_const_lv1_0;
    m_axi_gmem3_WLAST <= ap_const_logic_0;
    m_axi_gmem3_WSTRB <= ap_const_lv8_0;
    m_axi_gmem3_WUSER <= ap_const_lv1_0;
    m_axi_gmem3_WVALID <= ap_const_logic_0;
    select_ln88_fu_387_p3 <= 
        add_ln88_2_reg_436 when (icmp_ln88_1_reg_441(0) = '1') else 
        ap_const_lv16_0;
        sext_ln89_3_fu_330_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln89_2_reg_411),64));

    shl_ln_fu_288_p3 <= (OC_V_loc_dout & ap_const_lv3_0);
    trunc_ln89_fu_367_p1 <= phi_urem_reg_265(4 - 1 downto 0);
    zext_ln88_1_fu_300_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(OC_V_loc_dout),20));
    zext_ln88_fu_296_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_288_p3),20));
    zext_ln89_fu_393_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_reg_455),64));
end behav;