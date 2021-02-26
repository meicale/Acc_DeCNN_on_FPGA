-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_am_addmul_16ns_5ns_16ns_33_4_1_DSP48_4 is
port (
    clk: in  std_logic;
    rst: in  std_logic;
    ce:  in  std_logic;
    in0:  in  std_logic_vector(16 - 1 downto 0);
    in1:  in  std_logic_vector(5 - 1 downto 0);
    in2:  in  std_logic_vector(16 - 1 downto 0);
    dout: out std_logic_vector(33 - 1 downto 0));

end entity;

architecture behav of top_am_addmul_16ns_5ns_16ns_33_4_1_DSP48_4 is
    signal b       : signed(18-1 downto 0);
    signal a       : signed(27-1 downto 0);
    signal d       : signed(27-1 downto 0);
    signal m       : signed(45-1 downto 0);
    signal ad      : signed(27-1 downto 0);
    signal m_reg   : signed(45-1 downto 0);
    signal ad_reg  : signed(27-1 downto 0);
    signal b_reg   : signed(18-1 downto 0);
    signal p_reg   : signed(48-1 downto 0);
begin
a <= signed(resize(unsigned(in0), 27));
d <= signed(resize(unsigned(in1), 27));
b <= signed(resize(unsigned(in2), 18));

ad <= a + d;
m  <= ad_reg * b_reg;

process (clk) begin
    if (clk'event and clk = '1') then
        if (ce = '1') then
            m_reg <= m;
            ad_reg <= ad;
            b_reg  <= b;
            p_reg  <= resize(m_reg, 48);
        end if;
    end if;
end process;

dout <= std_logic_vector(resize(unsigned(p_reg), 33));

end architecture;
Library IEEE;
use IEEE.std_logic_1164.all;

entity top_am_addmul_16ns_5ns_16ns_33_4_1 is
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER);
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        ce : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR(din0_WIDTH - 1 DOWNTO 0);
        din1 : IN STD_LOGIC_VECTOR(din1_WIDTH - 1 DOWNTO 0);
        din2 : IN STD_LOGIC_VECTOR(din2_WIDTH - 1 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(dout_WIDTH - 1 DOWNTO 0));
end entity;

architecture arch of top_am_addmul_16ns_5ns_16ns_33_4_1 is
    component top_am_addmul_16ns_5ns_16ns_33_4_1_DSP48_4 is
        port (
            clk : IN STD_LOGIC;
            rst : IN STD_LOGIC;
            ce : IN STD_LOGIC;
            in0 : IN STD_LOGIC_VECTOR;
            in1 : IN STD_LOGIC_VECTOR;
            in2 : IN STD_LOGIC_VECTOR;
            dout : OUT STD_LOGIC_VECTOR);
    end component;



begin
    top_am_addmul_16ns_5ns_16ns_33_4_1_DSP48_4_U :  component top_am_addmul_16ns_5ns_16ns_33_4_1_DSP48_4
    port map (
        clk => clk,
        rst => reset,
        ce => ce,
        in0 => din0,
        in1 => din1,
        in2 => din2,
        dout => dout);

end architecture;


