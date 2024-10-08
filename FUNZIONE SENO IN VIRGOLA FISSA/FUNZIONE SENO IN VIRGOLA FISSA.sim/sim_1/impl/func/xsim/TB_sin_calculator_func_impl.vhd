-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Mon Sep 30 12:03:47 2024
-- Host        : DESKTOP-UAI5BR9 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/Utente/Desktop/FUNZIONE SENO IN VIRGOLA
--               FISSA/FUNZIONE SENO IN VIRGOLA FISSA.sim/sim_1/impl/func/xsim/TB_sin_calculator_func_impl.vhd}
-- Design      : sin_calculator
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sin_calculator is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    angle : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sine_value : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of sin_calculator : entity is true;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ of sin_calculator : entity is std.standard.true;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ of sin_calculator : entity is std.standard.true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of sin_calculator : entity is "7c6ffbf5";
end sin_calculator;

architecture STRUCTURE of sin_calculator is
  signal angle_IBUF : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal angle_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal \sine_value[0]_i_10_n_0\ : STD_LOGIC;
  signal \sine_value[0]_i_5_n_0\ : STD_LOGIC;
  signal \sine_value[0]_i_6_n_0\ : STD_LOGIC;
  signal \sine_value[0]_i_7_n_0\ : STD_LOGIC;
  signal \sine_value[0]_i_8_n_0\ : STD_LOGIC;
  signal \sine_value[0]_i_9_n_0\ : STD_LOGIC;
  signal \sine_value[1]_i_10_n_0\ : STD_LOGIC;
  signal \sine_value[1]_i_5_n_0\ : STD_LOGIC;
  signal \sine_value[1]_i_6_n_0\ : STD_LOGIC;
  signal \sine_value[1]_i_7_n_0\ : STD_LOGIC;
  signal \sine_value[1]_i_8_n_0\ : STD_LOGIC;
  signal \sine_value[1]_i_9_n_0\ : STD_LOGIC;
  signal \sine_value[2]_i_10_n_0\ : STD_LOGIC;
  signal \sine_value[2]_i_5_n_0\ : STD_LOGIC;
  signal \sine_value[2]_i_6_n_0\ : STD_LOGIC;
  signal \sine_value[2]_i_7_n_0\ : STD_LOGIC;
  signal \sine_value[2]_i_8_n_0\ : STD_LOGIC;
  signal \sine_value[2]_i_9_n_0\ : STD_LOGIC;
  signal \sine_value[3]_i_10_n_0\ : STD_LOGIC;
  signal \sine_value[3]_i_5_n_0\ : STD_LOGIC;
  signal \sine_value[3]_i_6_n_0\ : STD_LOGIC;
  signal \sine_value[3]_i_7_n_0\ : STD_LOGIC;
  signal \sine_value[3]_i_8_n_0\ : STD_LOGIC;
  signal \sine_value[3]_i_9_n_0\ : STD_LOGIC;
  signal \sine_value[4]_i_10_n_0\ : STD_LOGIC;
  signal \sine_value[4]_i_5_n_0\ : STD_LOGIC;
  signal \sine_value[4]_i_6_n_0\ : STD_LOGIC;
  signal \sine_value[4]_i_7_n_0\ : STD_LOGIC;
  signal \sine_value[4]_i_8_n_0\ : STD_LOGIC;
  signal \sine_value[4]_i_9_n_0\ : STD_LOGIC;
  signal \sine_value[5]_i_10_n_0\ : STD_LOGIC;
  signal \sine_value[5]_i_5_n_0\ : STD_LOGIC;
  signal \sine_value[5]_i_6_n_0\ : STD_LOGIC;
  signal \sine_value[5]_i_7_n_0\ : STD_LOGIC;
  signal \sine_value[5]_i_8_n_0\ : STD_LOGIC;
  signal \sine_value[5]_i_9_n_0\ : STD_LOGIC;
  signal \sine_value[6]_i_2_n_0\ : STD_LOGIC;
  signal \sine_value[6]_i_3_n_0\ : STD_LOGIC;
  signal \sine_value[6]_i_4_n_0\ : STD_LOGIC;
  signal \sine_value[6]_i_5_n_0\ : STD_LOGIC;
  signal \sine_value[6]_i_6_n_0\ : STD_LOGIC;
  signal \sine_value[6]_i_7_n_0\ : STD_LOGIC;
  signal \sine_value[6]_i_8_n_0\ : STD_LOGIC;
  signal \sine_value[7]_i_2_n_0\ : STD_LOGIC;
  signal \sine_value[7]_i_3_n_0\ : STD_LOGIC;
  signal \sine_value[7]_i_4_n_0\ : STD_LOGIC;
  signal \sine_value[7]_i_5_n_0\ : STD_LOGIC;
  signal \sine_value[7]_i_6_n_0\ : STD_LOGIC;
  signal \sine_value[7]_i_7_n_0\ : STD_LOGIC;
  signal \sine_value[7]_i_8_n_0\ : STD_LOGIC;
  signal \sine_value[8]_i_2_n_0\ : STD_LOGIC;
  signal \sine_value[8]_i_3_n_0\ : STD_LOGIC;
  signal \sine_value[8]_i_4_n_0\ : STD_LOGIC;
  signal \sine_value[9]_i_2_n_0\ : STD_LOGIC;
  signal \sine_value[9]_i_3_n_0\ : STD_LOGIC;
  signal sine_value_OBUF : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \sine_value_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sine_value_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \sine_value_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \sine_value_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \sine_value_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \sine_value_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \sine_value_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \sine_value_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \sine_value_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \sine_value_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \sine_value_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \sine_value_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \sine_value_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \sine_value_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \sine_value_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \sine_value_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \sine_value_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \sine_value_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal sine_value_temp : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
\angle_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => angle(0),
      O => angle_IBUF(0)
    );
\angle_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => angle(1),
      O => angle_IBUF(1)
    );
\angle_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => angle(2),
      O => angle_IBUF(2)
    );
\angle_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => angle(3),
      O => angle_IBUF(3)
    );
\angle_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => angle(4),
      O => angle_IBUF(4)
    );
\angle_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => angle(5),
      O => angle_IBUF(5)
    );
\angle_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => angle(6),
      O => angle_IBUF(6)
    );
\angle_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => angle(7),
      O => angle_IBUF(7)
    );
\angle_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => angle(8),
      O => angle_IBUF(8)
    );
\angle_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => angle_IBUF(0),
      Q => angle_reg(0)
    );
\angle_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => angle_IBUF(1),
      Q => angle_reg(1)
    );
\angle_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => angle_IBUF(2),
      Q => angle_reg(2)
    );
\angle_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => angle_IBUF(3),
      Q => angle_reg(3)
    );
\angle_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => angle_IBUF(4),
      Q => angle_reg(4)
    );
\angle_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => angle_IBUF(5),
      Q => angle_reg(5)
    );
\angle_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => angle_IBUF(6),
      Q => angle_reg(6)
    );
\angle_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => angle_IBUF(7),
      Q => angle_reg(7)
    );
\angle_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => angle_IBUF(8),
      Q => angle_reg(8)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
\sine_value[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \sine_value_reg[0]_i_2_n_0\,
      I1 => angle_reg(8),
      I2 => \sine_value_reg[0]_i_3_n_0\,
      I3 => angle_reg(7),
      I4 => \sine_value_reg[0]_i_4_n_0\,
      O => sine_value_temp(0)
    );
\sine_value[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C433A47F9CBFC342"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(0),
      I4 => angle_reg(1),
      I5 => angle_reg(3),
      O => \sine_value[0]_i_10_n_0\
    );
\sine_value[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"924E93F13CF34AC7"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(0),
      I4 => angle_reg(1),
      I5 => angle_reg(3),
      O => \sine_value[0]_i_5_n_0\
    );
\sine_value[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5151511543344432"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(1),
      I4 => angle_reg(0),
      I5 => angle_reg(3),
      O => \sine_value[0]_i_6_n_0\
    );
\sine_value[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B7C6CFADC2534C6D"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(0),
      I4 => angle_reg(1),
      I5 => angle_reg(3),
      O => \sine_value[0]_i_7_n_0\
    );
\sine_value[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59B94BCE586695CE"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(0),
      I3 => angle_reg(2),
      I4 => angle_reg(3),
      I5 => angle_reg(1),
      O => \sine_value[0]_i_8_n_0\
    );
\sine_value[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C7C7E5E1C3B44CB6"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(1),
      I4 => angle_reg(0),
      I5 => angle_reg(3),
      O => \sine_value[0]_i_9_n_0\
    );
\sine_value[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \sine_value_reg[1]_i_2_n_0\,
      I1 => angle_reg(8),
      I2 => \sine_value_reg[1]_i_3_n_0\,
      I3 => angle_reg(7),
      I4 => \sine_value_reg[1]_i_4_n_0\,
      O => sine_value_temp(1)
    );
\sine_value[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BDC9E0504EB97781"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(3),
      I4 => angle_reg(0),
      I5 => angle_reg(1),
      O => \sine_value[1]_i_10_n_0\
    );
\sine_value[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3817177DEAE7F8C8"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(0),
      I2 => angle_reg(4),
      I3 => angle_reg(2),
      I4 => angle_reg(3),
      I5 => angle_reg(1),
      O => \sine_value[1]_i_5_n_0\
    );
\sine_value[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0057007200520470"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(3),
      I4 => angle_reg(1),
      I5 => angle_reg(0),
      O => \sine_value[1]_i_6_n_0\
    );
\sine_value[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FC46F556E532C52"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(3),
      I4 => angle_reg(0),
      I5 => angle_reg(1),
      O => \sine_value[1]_i_7_n_0\
    );
\sine_value[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F88AFD2808D76722"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(0),
      I2 => angle_reg(4),
      I3 => angle_reg(2),
      I4 => angle_reg(3),
      I5 => angle_reg(1),
      O => \sine_value[1]_i_8_n_0\
    );
\sine_value[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DAD0D7CD75D0E22A"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(0),
      I2 => angle_reg(4),
      I3 => angle_reg(1),
      I4 => angle_reg(2),
      I5 => angle_reg(3),
      O => \sine_value[1]_i_9_n_0\
    );
\sine_value[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \sine_value_reg[2]_i_2_n_0\,
      I1 => angle_reg(8),
      I2 => \sine_value_reg[2]_i_3_n_0\,
      I3 => angle_reg(7),
      I4 => \sine_value_reg[2]_i_4_n_0\,
      O => sine_value_temp(2)
    );
\sine_value[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FE347DECE5657FF"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(0),
      I4 => angle_reg(1),
      I5 => angle_reg(3),
      O => \sine_value[2]_i_10_n_0\
    );
\sine_value[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"609228D862852FAA"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(0),
      I2 => angle_reg(4),
      I3 => angle_reg(2),
      I4 => angle_reg(1),
      I5 => angle_reg(3),
      O => \sine_value[2]_i_5_n_0\
    );
\sine_value[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111444075540323"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(1),
      I4 => angle_reg(0),
      I5 => angle_reg(3),
      O => \sine_value[2]_i_6_n_0\
    );
\sine_value[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"23231889DC9E7676"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(1),
      I4 => angle_reg(3),
      I5 => angle_reg(0),
      O => \sine_value[2]_i_7_n_0\
    );
\sine_value[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D9F7262D5DA8887"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(1),
      I2 => angle_reg(4),
      I3 => angle_reg(2),
      I4 => angle_reg(0),
      I5 => angle_reg(3),
      O => \sine_value[2]_i_8_n_0\
    );
\sine_value[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22052F857DDA627A"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(1),
      I2 => angle_reg(4),
      I3 => angle_reg(3),
      I4 => angle_reg(2),
      I5 => angle_reg(0),
      O => \sine_value[2]_i_9_n_0\
    );
\sine_value[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \sine_value_reg[3]_i_2_n_0\,
      I1 => angle_reg(8),
      I2 => \sine_value_reg[3]_i_3_n_0\,
      I3 => angle_reg(7),
      I4 => \sine_value_reg[3]_i_4_n_0\,
      O => sine_value_temp(3)
    );
\sine_value[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4854CCE77F77EE"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(0),
      I3 => angle_reg(2),
      I4 => angle_reg(1),
      I5 => angle_reg(3),
      O => \sine_value[3]_i_10_n_0\
    );
\sine_value[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DA287080E2000AAF"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(0),
      I2 => angle_reg(4),
      I3 => angle_reg(3),
      I4 => angle_reg(1),
      I5 => angle_reg(2),
      O => \sine_value[3]_i_5_n_0\
    );
\sine_value[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4422002011545577"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(3),
      I4 => angle_reg(0),
      I5 => angle_reg(1),
      O => \sine_value[3]_i_6_n_0\
    );
\sine_value[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5477ABC866EE9811"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(0),
      I4 => angle_reg(1),
      I5 => angle_reg(3),
      O => \sine_value[3]_i_7_n_0\
    );
\sine_value[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B7CA02AE083F5D7"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(3),
      I4 => angle_reg(0),
      I5 => angle_reg(1),
      O => \sine_value[3]_i_8_n_0\
    );
\sine_value[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"215FB1F7DE884648"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(3),
      I3 => angle_reg(0),
      I4 => angle_reg(2),
      I5 => angle_reg(1),
      O => \sine_value[3]_i_9_n_0\
    );
\sine_value[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \sine_value_reg[4]_i_2_n_0\,
      I1 => angle_reg(8),
      I2 => \sine_value_reg[4]_i_3_n_0\,
      I3 => angle_reg(7),
      I4 => \sine_value_reg[4]_i_4_n_0\,
      O => sine_value_temp(4)
    );
\sine_value[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5FFFBFF6666666"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(1),
      I3 => angle_reg(0),
      I4 => angle_reg(2),
      I5 => angle_reg(3),
      O => \sine_value[4]_i_10_n_0\
    );
\sine_value[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DB22336E00000000"
    )
        port map (
      I0 => angle_reg(1),
      I1 => angle_reg(3),
      I2 => angle_reg(0),
      I3 => angle_reg(2),
      I4 => angle_reg(4),
      I5 => angle_reg(5),
      O => \sine_value[4]_i_5_n_0\
    );
\sine_value[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5070507041240507"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(3),
      I4 => angle_reg(0),
      I5 => angle_reg(1),
      O => \sine_value[4]_i_6_n_0\
    );
\sine_value[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0A4F096F087F01E"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(1),
      I4 => angle_reg(3),
      I5 => angle_reg(0),
      O => \sine_value[4]_i_7_n_0\
    );
\sine_value[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"415AACD05A5AF8D0"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(1),
      I4 => angle_reg(3),
      I5 => angle_reg(0),
      O => \sine_value[4]_i_8_n_0\
    );
\sine_value[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27FF9777C8886008"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(0),
      I3 => angle_reg(1),
      I4 => angle_reg(3),
      I5 => angle_reg(2),
      O => \sine_value[4]_i_9_n_0\
    );
\sine_value[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \sine_value_reg[5]_i_2_n_0\,
      I1 => angle_reg(8),
      I2 => \sine_value_reg[5]_i_3_n_0\,
      I3 => angle_reg(7),
      I4 => \sine_value_reg[5]_i_4_n_0\,
      O => sine_value_temp(5)
    );
\sine_value[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575F4F5FFFFFFFFF"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(2),
      I2 => angle_reg(3),
      I3 => angle_reg(1),
      I4 => angle_reg(0),
      I5 => angle_reg(4),
      O => \sine_value[5]_i_10_n_0\
    );
\sine_value[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1333CC8000000000"
    )
        port map (
      I0 => angle_reg(0),
      I1 => angle_reg(3),
      I2 => angle_reg(1),
      I3 => angle_reg(2),
      I4 => angle_reg(4),
      I5 => angle_reg(5),
      O => \sine_value[5]_i_5_n_0\
    );
\sine_value[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010577777370"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(0),
      I4 => angle_reg(1),
      I5 => angle_reg(3),
      O => \sine_value[5]_i_6_n_0\
    );
\sine_value[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0037FFFFFF830000"
    )
        port map (
      I0 => angle_reg(0),
      I1 => angle_reg(5),
      I2 => angle_reg(4),
      I3 => angle_reg(1),
      I4 => angle_reg(2),
      I5 => angle_reg(3),
      O => \sine_value[5]_i_7_n_0\
    );
\sine_value[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2627272774587058"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(2),
      I3 => angle_reg(1),
      I4 => angle_reg(0),
      I5 => angle_reg(3),
      O => \sine_value[5]_i_8_n_0\
    );
\sine_value[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A7F7777760000008"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(1),
      I3 => angle_reg(0),
      I4 => angle_reg(2),
      I5 => angle_reg(3),
      O => \sine_value[5]_i_9_n_0\
    );
\sine_value[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_value[6]_i_4_n_0\,
      I1 => \sine_value[6]_i_5_n_0\,
      I2 => angle_reg(7),
      I3 => \sine_value[7]_i_6_n_0\,
      I4 => angle_reg(6),
      I5 => \sine_value[6]_i_6_n_0\,
      O => \sine_value[6]_i_2_n_0\
    );
\sine_value[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF800080"
    )
        port map (
      I0 => angle_reg(5),
      I1 => \sine_value[6]_i_7_n_0\,
      I2 => angle_reg(4),
      I3 => angle_reg(6),
      I4 => \sine_value[6]_i_8_n_0\,
      I5 => angle_reg(7),
      O => \sine_value[6]_i_3_n_0\
    );
\sine_value[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5500550A550040FF"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(0),
      I2 => angle_reg(1),
      I3 => angle_reg(4),
      I4 => angle_reg(3),
      I5 => angle_reg(2),
      O => \sine_value[6]_i_4_n_0\
    );
\sine_value[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F80CFF0000FF"
    )
        port map (
      I0 => angle_reg(0),
      I1 => angle_reg(5),
      I2 => angle_reg(1),
      I3 => angle_reg(4),
      I4 => angle_reg(3),
      I5 => angle_reg(2),
      O => \sine_value[6]_i_5_n_0\
    );
\sine_value[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9CCCCCCCCCCCCCC4"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(4),
      I2 => angle_reg(0),
      I3 => angle_reg(3),
      I4 => angle_reg(1),
      I5 => angle_reg(2),
      O => \sine_value[6]_i_6_n_0\
    );
\sine_value[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => angle_reg(1),
      I1 => angle_reg(0),
      I2 => angle_reg(2),
      I3 => angle_reg(3),
      O => \sine_value[6]_i_7_n_0\
    );
\sine_value[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505050450F0F0F0F"
    )
        port map (
      I0 => angle_reg(5),
      I1 => angle_reg(0),
      I2 => angle_reg(4),
      I3 => angle_reg(2),
      I4 => angle_reg(1),
      I5 => angle_reg(3),
      O => \sine_value[6]_i_8_n_0\
    );
\sine_value[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_value[7]_i_4_n_0\,
      I1 => \sine_value[7]_i_5_n_0\,
      I2 => angle_reg(7),
      I3 => \sine_value[7]_i_6_n_0\,
      I4 => angle_reg(6),
      I5 => \sine_value[7]_i_7_n_0\,
      O => \sine_value[7]_i_2_n_0\
    );
\sine_value[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sine_value[7]_i_8_n_0\,
      I1 => angle_reg(7),
      O => \sine_value[7]_i_3_n_0\
    );
\sine_value[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555777"
    )
        port map (
      I0 => angle_reg(4),
      I1 => angle_reg(3),
      I2 => angle_reg(0),
      I3 => angle_reg(1),
      I4 => angle_reg(2),
      I5 => angle_reg(5),
      O => \sine_value[7]_i_4_n_0\
    );
\sine_value[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC3CBC333333333"
    )
        port map (
      I0 => angle_reg(0),
      I1 => angle_reg(5),
      I2 => angle_reg(3),
      I3 => angle_reg(2),
      I4 => angle_reg(1),
      I5 => angle_reg(4),
      O => \sine_value[7]_i_5_n_0\
    );
\sine_value[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => angle_reg(4),
      I1 => angle_reg(0),
      I2 => angle_reg(1),
      I3 => angle_reg(3),
      I4 => angle_reg(2),
      I5 => angle_reg(5),
      O => \sine_value[7]_i_6_n_0\
    );
\sine_value[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => angle_reg(4),
      I1 => angle_reg(0),
      I2 => angle_reg(3),
      I3 => angle_reg(1),
      I4 => angle_reg(2),
      I5 => angle_reg(5),
      O => \sine_value[7]_i_7_n_0\
    );
\sine_value[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0505FAEA00000000"
    )
        port map (
      I0 => angle_reg(4),
      I1 => angle_reg(2),
      I2 => angle_reg(3),
      I3 => angle_reg(1),
      I4 => angle_reg(5),
      I5 => angle_reg(6),
      O => \sine_value[7]_i_8_n_0\
    );
\sine_value[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBB88B888B888"
    )
        port map (
      I0 => \sine_value[8]_i_2_n_0\,
      I1 => angle_reg(8),
      I2 => \sine_value[8]_i_3_n_0\,
      I3 => angle_reg(7),
      I4 => \sine_value[8]_i_4_n_0\,
      I5 => angle_reg(6),
      O => sine_value_temp(8)
    );
\sine_value[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000057FF"
    )
        port map (
      I0 => angle_reg(6),
      I1 => angle_reg(4),
      I2 => angle_reg(3),
      I3 => angle_reg(5),
      I4 => angle_reg(7),
      O => \sine_value[8]_i_2_n_0\
    );
\sine_value[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA80000000000"
    )
        port map (
      I0 => angle_reg(4),
      I1 => angle_reg(1),
      I2 => angle_reg(0),
      I3 => angle_reg(2),
      I4 => angle_reg(3),
      I5 => angle_reg(5),
      O => \sine_value[8]_i_3_n_0\
    );
\sine_value[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => angle_reg(4),
      I1 => angle_reg(0),
      I2 => angle_reg(3),
      I3 => angle_reg(1),
      I4 => angle_reg(2),
      I5 => angle_reg(5),
      O => \sine_value[8]_i_4_n_0\
    );
\sine_value[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030308C8CCCCC"
    )
        port map (
      I0 => \sine_value[9]_i_2_n_0\,
      I1 => angle_reg(8),
      I2 => angle_reg(6),
      I3 => \sine_value[9]_i_3_n_0\,
      I4 => angle_reg(5),
      I5 => angle_reg(7),
      O => sine_value_temp(9)
    );
\sine_value[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => angle_reg(3),
      I1 => angle_reg(4),
      O => \sine_value[9]_i_2_n_0\
    );
\sine_value[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA0000"
    )
        port map (
      I0 => angle_reg(3),
      I1 => angle_reg(2),
      I2 => angle_reg(0),
      I3 => angle_reg(1),
      I4 => angle_reg(4),
      O => \sine_value[9]_i_3_n_0\
    );
\sine_value_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sine_value_OBUF(0),
      O => sine_value(0)
    );
\sine_value_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sine_value_OBUF(1),
      O => sine_value(1)
    );
\sine_value_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sine_value_OBUF(2),
      O => sine_value(2)
    );
\sine_value_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sine_value_OBUF(3),
      O => sine_value(3)
    );
\sine_value_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sine_value_OBUF(4),
      O => sine_value(4)
    );
\sine_value_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sine_value_OBUF(5),
      O => sine_value(5)
    );
\sine_value_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sine_value_OBUF(6),
      O => sine_value(6)
    );
\sine_value_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sine_value_OBUF(7),
      O => sine_value(7)
    );
\sine_value_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sine_value_OBUF(8),
      O => sine_value(8)
    );
\sine_value_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => sine_value_OBUF(9),
      O => sine_value(9)
    );
\sine_value_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => sine_value_temp(0),
      Q => sine_value_OBUF(0)
    );
\sine_value_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[0]_i_5_n_0\,
      I1 => \sine_value[0]_i_6_n_0\,
      O => \sine_value_reg[0]_i_2_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[0]_i_7_n_0\,
      I1 => \sine_value[0]_i_8_n_0\,
      O => \sine_value_reg[0]_i_3_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[0]_i_9_n_0\,
      I1 => \sine_value[0]_i_10_n_0\,
      O => \sine_value_reg[0]_i_4_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => sine_value_temp(1),
      Q => sine_value_OBUF(1)
    );
\sine_value_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[1]_i_5_n_0\,
      I1 => \sine_value[1]_i_6_n_0\,
      O => \sine_value_reg[1]_i_2_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[1]_i_7_n_0\,
      I1 => \sine_value[1]_i_8_n_0\,
      O => \sine_value_reg[1]_i_3_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[1]_i_9_n_0\,
      I1 => \sine_value[1]_i_10_n_0\,
      O => \sine_value_reg[1]_i_4_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => sine_value_temp(2),
      Q => sine_value_OBUF(2)
    );
\sine_value_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[2]_i_5_n_0\,
      I1 => \sine_value[2]_i_6_n_0\,
      O => \sine_value_reg[2]_i_2_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[2]_i_7_n_0\,
      I1 => \sine_value[2]_i_8_n_0\,
      O => \sine_value_reg[2]_i_3_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[2]_i_9_n_0\,
      I1 => \sine_value[2]_i_10_n_0\,
      O => \sine_value_reg[2]_i_4_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => sine_value_temp(3),
      Q => sine_value_OBUF(3)
    );
\sine_value_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[3]_i_5_n_0\,
      I1 => \sine_value[3]_i_6_n_0\,
      O => \sine_value_reg[3]_i_2_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[3]_i_7_n_0\,
      I1 => \sine_value[3]_i_8_n_0\,
      O => \sine_value_reg[3]_i_3_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[3]_i_9_n_0\,
      I1 => \sine_value[3]_i_10_n_0\,
      O => \sine_value_reg[3]_i_4_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => sine_value_temp(4),
      Q => sine_value_OBUF(4)
    );
\sine_value_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[4]_i_5_n_0\,
      I1 => \sine_value[4]_i_6_n_0\,
      O => \sine_value_reg[4]_i_2_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[4]_i_7_n_0\,
      I1 => \sine_value[4]_i_8_n_0\,
      O => \sine_value_reg[4]_i_3_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[4]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[4]_i_9_n_0\,
      I1 => \sine_value[4]_i_10_n_0\,
      O => \sine_value_reg[4]_i_4_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => sine_value_temp(5),
      Q => sine_value_OBUF(5)
    );
\sine_value_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[5]_i_5_n_0\,
      I1 => \sine_value[5]_i_6_n_0\,
      O => \sine_value_reg[5]_i_2_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[5]_i_7_n_0\,
      I1 => \sine_value[5]_i_8_n_0\,
      O => \sine_value_reg[5]_i_3_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[5]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[5]_i_9_n_0\,
      I1 => \sine_value[5]_i_10_n_0\,
      O => \sine_value_reg[5]_i_4_n_0\,
      S => angle_reg(6)
    );
\sine_value_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => sine_value_temp(6),
      Q => sine_value_OBUF(6)
    );
\sine_value_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[6]_i_2_n_0\,
      I1 => \sine_value[6]_i_3_n_0\,
      O => sine_value_temp(6),
      S => angle_reg(8)
    );
\sine_value_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => sine_value_temp(7),
      Q => sine_value_OBUF(7)
    );
\sine_value_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_value[7]_i_2_n_0\,
      I1 => \sine_value[7]_i_3_n_0\,
      O => sine_value_temp(7),
      S => angle_reg(8)
    );
\sine_value_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => sine_value_temp(8),
      Q => sine_value_OBUF(8)
    );
\sine_value_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => sine_value_temp(9),
      Q => sine_value_OBUF(9)
    );
end STRUCTURE;
