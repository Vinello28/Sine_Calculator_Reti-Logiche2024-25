// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  2 16:33:14 2024
// Host        : DESKTOP-UAI5BR9 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/Utente/Desktop/FUNZIONE SENO IN
//               VIRGOLA FISSA/FUNZIONE SENO IN VIRGOLA FISSA.sim/sim_1/synth/timing/xsim/TB_sine_calculator_time_synth.v}
// Design      : sine_calculator
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a15tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module sine_calculator
   (clk,
    reset,
    angle,
    sine_value);
  input clk;
  input reset;
  input [8:0]angle;
  output [9:0]sine_value;

  wire [8:0]angle;
  wire [8:0]angle_IBUF;
  wire [8:0]angle_reg;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire reset;
  wire reset_IBUF;
  wire [9:0]sine_value;
  wire \sine_value[0]_i_10_n_0 ;
  wire \sine_value[0]_i_5_n_0 ;
  wire \sine_value[0]_i_6_n_0 ;
  wire \sine_value[0]_i_7_n_0 ;
  wire \sine_value[0]_i_8_n_0 ;
  wire \sine_value[0]_i_9_n_0 ;
  wire \sine_value[1]_i_10_n_0 ;
  wire \sine_value[1]_i_5_n_0 ;
  wire \sine_value[1]_i_6_n_0 ;
  wire \sine_value[1]_i_7_n_0 ;
  wire \sine_value[1]_i_8_n_0 ;
  wire \sine_value[1]_i_9_n_0 ;
  wire \sine_value[2]_i_10_n_0 ;
  wire \sine_value[2]_i_5_n_0 ;
  wire \sine_value[2]_i_6_n_0 ;
  wire \sine_value[2]_i_7_n_0 ;
  wire \sine_value[2]_i_8_n_0 ;
  wire \sine_value[2]_i_9_n_0 ;
  wire \sine_value[3]_i_10_n_0 ;
  wire \sine_value[3]_i_5_n_0 ;
  wire \sine_value[3]_i_6_n_0 ;
  wire \sine_value[3]_i_7_n_0 ;
  wire \sine_value[3]_i_8_n_0 ;
  wire \sine_value[3]_i_9_n_0 ;
  wire \sine_value[4]_i_10_n_0 ;
  wire \sine_value[4]_i_5_n_0 ;
  wire \sine_value[4]_i_6_n_0 ;
  wire \sine_value[4]_i_7_n_0 ;
  wire \sine_value[4]_i_8_n_0 ;
  wire \sine_value[4]_i_9_n_0 ;
  wire \sine_value[5]_i_10_n_0 ;
  wire \sine_value[5]_i_5_n_0 ;
  wire \sine_value[5]_i_6_n_0 ;
  wire \sine_value[5]_i_7_n_0 ;
  wire \sine_value[5]_i_8_n_0 ;
  wire \sine_value[5]_i_9_n_0 ;
  wire \sine_value[6]_i_2_n_0 ;
  wire \sine_value[6]_i_3_n_0 ;
  wire \sine_value[6]_i_4_n_0 ;
  wire \sine_value[6]_i_5_n_0 ;
  wire \sine_value[6]_i_6_n_0 ;
  wire \sine_value[6]_i_7_n_0 ;
  wire \sine_value[6]_i_8_n_0 ;
  wire \sine_value[7]_i_2_n_0 ;
  wire \sine_value[7]_i_3_n_0 ;
  wire \sine_value[7]_i_4_n_0 ;
  wire \sine_value[7]_i_5_n_0 ;
  wire \sine_value[7]_i_6_n_0 ;
  wire \sine_value[7]_i_7_n_0 ;
  wire \sine_value[7]_i_8_n_0 ;
  wire \sine_value[8]_i_2_n_0 ;
  wire \sine_value[8]_i_3_n_0 ;
  wire \sine_value[8]_i_4_n_0 ;
  wire \sine_value[9]_i_2_n_0 ;
  wire \sine_value[9]_i_3_n_0 ;
  wire [9:0]sine_value_OBUF;
  wire \sine_value_reg[0]_i_2_n_0 ;
  wire \sine_value_reg[0]_i_3_n_0 ;
  wire \sine_value_reg[0]_i_4_n_0 ;
  wire \sine_value_reg[1]_i_2_n_0 ;
  wire \sine_value_reg[1]_i_3_n_0 ;
  wire \sine_value_reg[1]_i_4_n_0 ;
  wire \sine_value_reg[2]_i_2_n_0 ;
  wire \sine_value_reg[2]_i_3_n_0 ;
  wire \sine_value_reg[2]_i_4_n_0 ;
  wire \sine_value_reg[3]_i_2_n_0 ;
  wire \sine_value_reg[3]_i_3_n_0 ;
  wire \sine_value_reg[3]_i_4_n_0 ;
  wire \sine_value_reg[4]_i_2_n_0 ;
  wire \sine_value_reg[4]_i_3_n_0 ;
  wire \sine_value_reg[4]_i_4_n_0 ;
  wire \sine_value_reg[5]_i_2_n_0 ;
  wire \sine_value_reg[5]_i_3_n_0 ;
  wire \sine_value_reg[5]_i_4_n_0 ;
  wire [9:0]sine_value_temp;

initial begin
 $sdf_annotate("TB_sine_calculator_time_synth.sdf",,,,"tool_control");
end
  IBUF \angle_IBUF[0]_inst 
       (.I(angle[0]),
        .O(angle_IBUF[0]));
  IBUF \angle_IBUF[1]_inst 
       (.I(angle[1]),
        .O(angle_IBUF[1]));
  IBUF \angle_IBUF[2]_inst 
       (.I(angle[2]),
        .O(angle_IBUF[2]));
  IBUF \angle_IBUF[3]_inst 
       (.I(angle[3]),
        .O(angle_IBUF[3]));
  IBUF \angle_IBUF[4]_inst 
       (.I(angle[4]),
        .O(angle_IBUF[4]));
  IBUF \angle_IBUF[5]_inst 
       (.I(angle[5]),
        .O(angle_IBUF[5]));
  IBUF \angle_IBUF[6]_inst 
       (.I(angle[6]),
        .O(angle_IBUF[6]));
  IBUF \angle_IBUF[7]_inst 
       (.I(angle[7]),
        .O(angle_IBUF[7]));
  IBUF \angle_IBUF[8]_inst 
       (.I(angle[8]),
        .O(angle_IBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(angle_IBUF[0]),
        .Q(angle_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(angle_IBUF[1]),
        .Q(angle_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(angle_IBUF[2]),
        .Q(angle_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(angle_IBUF[3]),
        .Q(angle_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(angle_IBUF[4]),
        .Q(angle_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(angle_IBUF[5]),
        .Q(angle_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(angle_IBUF[6]),
        .Q(angle_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(angle_IBUF[7]),
        .Q(angle_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \angle_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(angle_IBUF[8]),
        .Q(angle_reg[8]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \sine_value[0]_i_1 
       (.I0(\sine_value_reg[0]_i_2_n_0 ),
        .I1(angle_reg[8]),
        .I2(\sine_value_reg[0]_i_3_n_0 ),
        .I3(angle_reg[7]),
        .I4(\sine_value_reg[0]_i_4_n_0 ),
        .O(sine_value_temp[0]));
  LUT6 #(
    .INIT(64'hC433A47F9CBFC342)) 
    \sine_value[0]_i_10 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[0]),
        .I4(angle_reg[1]),
        .I5(angle_reg[3]),
        .O(\sine_value[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h924E93F13CF34AC7)) 
    \sine_value[0]_i_5 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[0]),
        .I4(angle_reg[1]),
        .I5(angle_reg[3]),
        .O(\sine_value[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5151511543344432)) 
    \sine_value[0]_i_6 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[1]),
        .I4(angle_reg[0]),
        .I5(angle_reg[3]),
        .O(\sine_value[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB7C6CFADC2534C6D)) 
    \sine_value[0]_i_7 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[0]),
        .I4(angle_reg[1]),
        .I5(angle_reg[3]),
        .O(\sine_value[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h59B94BCE586695CE)) 
    \sine_value[0]_i_8 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[0]),
        .I3(angle_reg[2]),
        .I4(angle_reg[3]),
        .I5(angle_reg[1]),
        .O(\sine_value[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hC7C7E5E1C3B44CB6)) 
    \sine_value[0]_i_9 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[1]),
        .I4(angle_reg[0]),
        .I5(angle_reg[3]),
        .O(\sine_value[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \sine_value[1]_i_1 
       (.I0(\sine_value_reg[1]_i_2_n_0 ),
        .I1(angle_reg[8]),
        .I2(\sine_value_reg[1]_i_3_n_0 ),
        .I3(angle_reg[7]),
        .I4(\sine_value_reg[1]_i_4_n_0 ),
        .O(sine_value_temp[1]));
  LUT6 #(
    .INIT(64'hBDC9E0504EB97781)) 
    \sine_value[1]_i_10 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[3]),
        .I4(angle_reg[0]),
        .I5(angle_reg[1]),
        .O(\sine_value[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h3817177DEAE7F8C8)) 
    \sine_value[1]_i_5 
       (.I0(angle_reg[5]),
        .I1(angle_reg[0]),
        .I2(angle_reg[4]),
        .I3(angle_reg[2]),
        .I4(angle_reg[3]),
        .I5(angle_reg[1]),
        .O(\sine_value[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0057007200520470)) 
    \sine_value[1]_i_6 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[3]),
        .I4(angle_reg[1]),
        .I5(angle_reg[0]),
        .O(\sine_value[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4FC46F556E532C52)) 
    \sine_value[1]_i_7 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[3]),
        .I4(angle_reg[0]),
        .I5(angle_reg[1]),
        .O(\sine_value[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF88AFD2808D76722)) 
    \sine_value[1]_i_8 
       (.I0(angle_reg[5]),
        .I1(angle_reg[0]),
        .I2(angle_reg[4]),
        .I3(angle_reg[2]),
        .I4(angle_reg[3]),
        .I5(angle_reg[1]),
        .O(\sine_value[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hDAD0D7CD75D0E22A)) 
    \sine_value[1]_i_9 
       (.I0(angle_reg[5]),
        .I1(angle_reg[0]),
        .I2(angle_reg[4]),
        .I3(angle_reg[1]),
        .I4(angle_reg[2]),
        .I5(angle_reg[3]),
        .O(\sine_value[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \sine_value[2]_i_1 
       (.I0(\sine_value_reg[2]_i_2_n_0 ),
        .I1(angle_reg[8]),
        .I2(\sine_value_reg[2]_i_3_n_0 ),
        .I3(angle_reg[7]),
        .I4(\sine_value_reg[2]_i_4_n_0 ),
        .O(sine_value_temp[2]));
  LUT6 #(
    .INIT(64'h6FE347DECE5657FF)) 
    \sine_value[2]_i_10 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[0]),
        .I4(angle_reg[1]),
        .I5(angle_reg[3]),
        .O(\sine_value[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h609228D862852FAA)) 
    \sine_value[2]_i_5 
       (.I0(angle_reg[5]),
        .I1(angle_reg[0]),
        .I2(angle_reg[4]),
        .I3(angle_reg[2]),
        .I4(angle_reg[1]),
        .I5(angle_reg[3]),
        .O(\sine_value[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111444075540323)) 
    \sine_value[2]_i_6 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[1]),
        .I4(angle_reg[0]),
        .I5(angle_reg[3]),
        .O(\sine_value[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h23231889DC9E7676)) 
    \sine_value[2]_i_7 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[1]),
        .I4(angle_reg[3]),
        .I5(angle_reg[0]),
        .O(\sine_value[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2D9F7262D5DA8887)) 
    \sine_value[2]_i_8 
       (.I0(angle_reg[5]),
        .I1(angle_reg[1]),
        .I2(angle_reg[4]),
        .I3(angle_reg[2]),
        .I4(angle_reg[0]),
        .I5(angle_reg[3]),
        .O(\sine_value[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h22052F857DDA627A)) 
    \sine_value[2]_i_9 
       (.I0(angle_reg[5]),
        .I1(angle_reg[1]),
        .I2(angle_reg[4]),
        .I3(angle_reg[3]),
        .I4(angle_reg[2]),
        .I5(angle_reg[0]),
        .O(\sine_value[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \sine_value[3]_i_1 
       (.I0(\sine_value_reg[3]_i_2_n_0 ),
        .I1(angle_reg[8]),
        .I2(\sine_value_reg[3]_i_3_n_0 ),
        .I3(angle_reg[7]),
        .I4(\sine_value_reg[3]_i_4_n_0 ),
        .O(sine_value_temp[3]));
  LUT6 #(
    .INIT(64'hFF4854CCE77F77EE)) 
    \sine_value[3]_i_10 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[0]),
        .I3(angle_reg[2]),
        .I4(angle_reg[1]),
        .I5(angle_reg[3]),
        .O(\sine_value[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hDA287080E2000AAF)) 
    \sine_value[3]_i_5 
       (.I0(angle_reg[5]),
        .I1(angle_reg[0]),
        .I2(angle_reg[4]),
        .I3(angle_reg[3]),
        .I4(angle_reg[1]),
        .I5(angle_reg[2]),
        .O(\sine_value[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4422002011545577)) 
    \sine_value[3]_i_6 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[3]),
        .I4(angle_reg[0]),
        .I5(angle_reg[1]),
        .O(\sine_value[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5477ABC866EE9811)) 
    \sine_value[3]_i_7 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[0]),
        .I4(angle_reg[1]),
        .I5(angle_reg[3]),
        .O(\sine_value[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9B7CA02AE083F5D7)) 
    \sine_value[3]_i_8 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[3]),
        .I4(angle_reg[0]),
        .I5(angle_reg[1]),
        .O(\sine_value[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h215FB1F7DE884648)) 
    \sine_value[3]_i_9 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[3]),
        .I3(angle_reg[0]),
        .I4(angle_reg[2]),
        .I5(angle_reg[1]),
        .O(\sine_value[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \sine_value[4]_i_1 
       (.I0(\sine_value_reg[4]_i_2_n_0 ),
        .I1(angle_reg[8]),
        .I2(\sine_value_reg[4]_i_3_n_0 ),
        .I3(angle_reg[7]),
        .I4(\sine_value_reg[4]_i_4_n_0 ),
        .O(sine_value_temp[4]));
  LUT6 #(
    .INIT(64'h5F5FFFBFF6666666)) 
    \sine_value[4]_i_10 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[1]),
        .I3(angle_reg[0]),
        .I4(angle_reg[2]),
        .I5(angle_reg[3]),
        .O(\sine_value[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hDB22336E00000000)) 
    \sine_value[4]_i_5 
       (.I0(angle_reg[1]),
        .I1(angle_reg[3]),
        .I2(angle_reg[0]),
        .I3(angle_reg[2]),
        .I4(angle_reg[4]),
        .I5(angle_reg[5]),
        .O(\sine_value[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5070507041240507)) 
    \sine_value[4]_i_6 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[3]),
        .I4(angle_reg[0]),
        .I5(angle_reg[1]),
        .O(\sine_value[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0A4F096F087F01E)) 
    \sine_value[4]_i_7 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[1]),
        .I4(angle_reg[3]),
        .I5(angle_reg[0]),
        .O(\sine_value[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h415AACD05A5AF8D0)) 
    \sine_value[4]_i_8 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[1]),
        .I4(angle_reg[3]),
        .I5(angle_reg[0]),
        .O(\sine_value[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h27FF9777C8886008)) 
    \sine_value[4]_i_9 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[0]),
        .I3(angle_reg[1]),
        .I4(angle_reg[3]),
        .I5(angle_reg[2]),
        .O(\sine_value[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \sine_value[5]_i_1 
       (.I0(\sine_value_reg[5]_i_2_n_0 ),
        .I1(angle_reg[8]),
        .I2(\sine_value_reg[5]_i_3_n_0 ),
        .I3(angle_reg[7]),
        .I4(\sine_value_reg[5]_i_4_n_0 ),
        .O(sine_value_temp[5]));
  LUT6 #(
    .INIT(64'h575F4F5FFFFFFFFF)) 
    \sine_value[5]_i_10 
       (.I0(angle_reg[5]),
        .I1(angle_reg[2]),
        .I2(angle_reg[3]),
        .I3(angle_reg[1]),
        .I4(angle_reg[0]),
        .I5(angle_reg[4]),
        .O(\sine_value[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1333CC8000000000)) 
    \sine_value[5]_i_5 
       (.I0(angle_reg[0]),
        .I1(angle_reg[3]),
        .I2(angle_reg[1]),
        .I3(angle_reg[2]),
        .I4(angle_reg[4]),
        .I5(angle_reg[5]),
        .O(\sine_value[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000010577777370)) 
    \sine_value[5]_i_6 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[0]),
        .I4(angle_reg[1]),
        .I5(angle_reg[3]),
        .O(\sine_value[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0037FFFFFF830000)) 
    \sine_value[5]_i_7 
       (.I0(angle_reg[0]),
        .I1(angle_reg[5]),
        .I2(angle_reg[4]),
        .I3(angle_reg[1]),
        .I4(angle_reg[2]),
        .I5(angle_reg[3]),
        .O(\sine_value[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2627272774587058)) 
    \sine_value[5]_i_8 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[2]),
        .I3(angle_reg[1]),
        .I4(angle_reg[0]),
        .I5(angle_reg[3]),
        .O(\sine_value[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA7F7777760000008)) 
    \sine_value[5]_i_9 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[1]),
        .I3(angle_reg[0]),
        .I4(angle_reg[2]),
        .I5(angle_reg[3]),
        .O(\sine_value[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_value[6]_i_2 
       (.I0(\sine_value[6]_i_4_n_0 ),
        .I1(\sine_value[6]_i_5_n_0 ),
        .I2(angle_reg[7]),
        .I3(\sine_value[7]_i_6_n_0 ),
        .I4(angle_reg[6]),
        .I5(\sine_value[6]_i_6_n_0 ),
        .O(\sine_value[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF800080)) 
    \sine_value[6]_i_3 
       (.I0(angle_reg[5]),
        .I1(\sine_value[6]_i_7_n_0 ),
        .I2(angle_reg[4]),
        .I3(angle_reg[6]),
        .I4(\sine_value[6]_i_8_n_0 ),
        .I5(angle_reg[7]),
        .O(\sine_value[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5500550A550040FF)) 
    \sine_value[6]_i_4 
       (.I0(angle_reg[5]),
        .I1(angle_reg[0]),
        .I2(angle_reg[1]),
        .I3(angle_reg[4]),
        .I4(angle_reg[3]),
        .I5(angle_reg[2]),
        .O(\sine_value[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F80CFF0000FF)) 
    \sine_value[6]_i_5 
       (.I0(angle_reg[0]),
        .I1(angle_reg[5]),
        .I2(angle_reg[1]),
        .I3(angle_reg[4]),
        .I4(angle_reg[3]),
        .I5(angle_reg[2]),
        .O(\sine_value[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9CCCCCCCCCCCCCC4)) 
    \sine_value[6]_i_6 
       (.I0(angle_reg[5]),
        .I1(angle_reg[4]),
        .I2(angle_reg[0]),
        .I3(angle_reg[3]),
        .I4(angle_reg[1]),
        .I5(angle_reg[2]),
        .O(\sine_value[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \sine_value[6]_i_7 
       (.I0(angle_reg[1]),
        .I1(angle_reg[0]),
        .I2(angle_reg[2]),
        .I3(angle_reg[3]),
        .O(\sine_value[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505050450F0F0F0F)) 
    \sine_value[6]_i_8 
       (.I0(angle_reg[5]),
        .I1(angle_reg[0]),
        .I2(angle_reg[4]),
        .I3(angle_reg[2]),
        .I4(angle_reg[1]),
        .I5(angle_reg[3]),
        .O(\sine_value[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_value[7]_i_2 
       (.I0(\sine_value[7]_i_4_n_0 ),
        .I1(\sine_value[7]_i_5_n_0 ),
        .I2(angle_reg[7]),
        .I3(\sine_value[7]_i_6_n_0 ),
        .I4(angle_reg[6]),
        .I5(\sine_value[7]_i_7_n_0 ),
        .O(\sine_value[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sine_value[7]_i_3 
       (.I0(\sine_value[7]_i_8_n_0 ),
        .I1(angle_reg[7]),
        .O(\sine_value[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555777)) 
    \sine_value[7]_i_4 
       (.I0(angle_reg[4]),
        .I1(angle_reg[3]),
        .I2(angle_reg[0]),
        .I3(angle_reg[1]),
        .I4(angle_reg[2]),
        .I5(angle_reg[5]),
        .O(\sine_value[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCC3CBC333333333)) 
    \sine_value[7]_i_5 
       (.I0(angle_reg[0]),
        .I1(angle_reg[5]),
        .I2(angle_reg[3]),
        .I3(angle_reg[2]),
        .I4(angle_reg[1]),
        .I5(angle_reg[4]),
        .O(\sine_value[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \sine_value[7]_i_6 
       (.I0(angle_reg[4]),
        .I1(angle_reg[0]),
        .I2(angle_reg[1]),
        .I3(angle_reg[3]),
        .I4(angle_reg[2]),
        .I5(angle_reg[5]),
        .O(\sine_value[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \sine_value[7]_i_7 
       (.I0(angle_reg[4]),
        .I1(angle_reg[0]),
        .I2(angle_reg[3]),
        .I3(angle_reg[1]),
        .I4(angle_reg[2]),
        .I5(angle_reg[5]),
        .O(\sine_value[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0505FAEA00000000)) 
    \sine_value[7]_i_8 
       (.I0(angle_reg[4]),
        .I1(angle_reg[2]),
        .I2(angle_reg[3]),
        .I3(angle_reg[1]),
        .I4(angle_reg[5]),
        .I5(angle_reg[6]),
        .O(\sine_value[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBB88B888B888)) 
    \sine_value[8]_i_1 
       (.I0(\sine_value[8]_i_2_n_0 ),
        .I1(angle_reg[8]),
        .I2(\sine_value[8]_i_3_n_0 ),
        .I3(angle_reg[7]),
        .I4(\sine_value[8]_i_4_n_0 ),
        .I5(angle_reg[6]),
        .O(sine_value_temp[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h000057FF)) 
    \sine_value[8]_i_2 
       (.I0(angle_reg[6]),
        .I1(angle_reg[4]),
        .I2(angle_reg[3]),
        .I3(angle_reg[5]),
        .I4(angle_reg[7]),
        .O(\sine_value[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA80000000000)) 
    \sine_value[8]_i_3 
       (.I0(angle_reg[4]),
        .I1(angle_reg[1]),
        .I2(angle_reg[0]),
        .I3(angle_reg[2]),
        .I4(angle_reg[3]),
        .I5(angle_reg[5]),
        .O(\sine_value[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \sine_value[8]_i_4 
       (.I0(angle_reg[4]),
        .I1(angle_reg[0]),
        .I2(angle_reg[3]),
        .I3(angle_reg[1]),
        .I4(angle_reg[2]),
        .I5(angle_reg[5]),
        .O(\sine_value[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h333030308C8CCCCC)) 
    \sine_value[9]_i_1 
       (.I0(\sine_value[9]_i_2_n_0 ),
        .I1(angle_reg[8]),
        .I2(angle_reg[6]),
        .I3(\sine_value[9]_i_3_n_0 ),
        .I4(angle_reg[5]),
        .I5(angle_reg[7]),
        .O(sine_value_temp[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \sine_value[9]_i_2 
       (.I0(angle_reg[3]),
        .I1(angle_reg[4]),
        .O(\sine_value[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEEEA0000)) 
    \sine_value[9]_i_3 
       (.I0(angle_reg[3]),
        .I1(angle_reg[2]),
        .I2(angle_reg[0]),
        .I3(angle_reg[1]),
        .I4(angle_reg[4]),
        .O(\sine_value[9]_i_3_n_0 ));
  OBUF \sine_value_OBUF[0]_inst 
       (.I(sine_value_OBUF[0]),
        .O(sine_value[0]));
  OBUF \sine_value_OBUF[1]_inst 
       (.I(sine_value_OBUF[1]),
        .O(sine_value[1]));
  OBUF \sine_value_OBUF[2]_inst 
       (.I(sine_value_OBUF[2]),
        .O(sine_value[2]));
  OBUF \sine_value_OBUF[3]_inst 
       (.I(sine_value_OBUF[3]),
        .O(sine_value[3]));
  OBUF \sine_value_OBUF[4]_inst 
       (.I(sine_value_OBUF[4]),
        .O(sine_value[4]));
  OBUF \sine_value_OBUF[5]_inst 
       (.I(sine_value_OBUF[5]),
        .O(sine_value[5]));
  OBUF \sine_value_OBUF[6]_inst 
       (.I(sine_value_OBUF[6]),
        .O(sine_value[6]));
  OBUF \sine_value_OBUF[7]_inst 
       (.I(sine_value_OBUF[7]),
        .O(sine_value[7]));
  OBUF \sine_value_OBUF[8]_inst 
       (.I(sine_value_OBUF[8]),
        .O(sine_value[8]));
  OBUF \sine_value_OBUF[9]_inst 
       (.I(sine_value_OBUF[9]),
        .O(sine_value[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sine_value_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(sine_value_temp[0]),
        .Q(sine_value_OBUF[0]));
  MUXF7 \sine_value_reg[0]_i_2 
       (.I0(\sine_value[0]_i_5_n_0 ),
        .I1(\sine_value[0]_i_6_n_0 ),
        .O(\sine_value_reg[0]_i_2_n_0 ),
        .S(angle_reg[6]));
  MUXF7 \sine_value_reg[0]_i_3 
       (.I0(\sine_value[0]_i_7_n_0 ),
        .I1(\sine_value[0]_i_8_n_0 ),
        .O(\sine_value_reg[0]_i_3_n_0 ),
        .S(angle_reg[6]));
  MUXF7 \sine_value_reg[0]_i_4 
       (.I0(\sine_value[0]_i_9_n_0 ),
        .I1(\sine_value[0]_i_10_n_0 ),
        .O(\sine_value_reg[0]_i_4_n_0 ),
        .S(angle_reg[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sine_value_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(sine_value_temp[1]),
        .Q(sine_value_OBUF[1]));
  MUXF7 \sine_value_reg[1]_i_2 
       (.I0(\sine_value[1]_i_5_n_0 ),
        .I1(\sine_value[1]_i_6_n_0 ),
        .O(\sine_value_reg[1]_i_2_n_0 ),
        .S(angle_reg[6]));
  MUXF7 \sine_value_reg[1]_i_3 
       (.I0(\sine_value[1]_i_7_n_0 ),
        .I1(\sine_value[1]_i_8_n_0 ),
        .O(\sine_value_reg[1]_i_3_n_0 ),
        .S(angle_reg[6]));
  MUXF7 \sine_value_reg[1]_i_4 
       (.I0(\sine_value[1]_i_9_n_0 ),
        .I1(\sine_value[1]_i_10_n_0 ),
        .O(\sine_value_reg[1]_i_4_n_0 ),
        .S(angle_reg[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sine_value_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(sine_value_temp[2]),
        .Q(sine_value_OBUF[2]));
  MUXF7 \sine_value_reg[2]_i_2 
       (.I0(\sine_value[2]_i_5_n_0 ),
        .I1(\sine_value[2]_i_6_n_0 ),
        .O(\sine_value_reg[2]_i_2_n_0 ),
        .S(angle_reg[6]));
  MUXF7 \sine_value_reg[2]_i_3 
       (.I0(\sine_value[2]_i_7_n_0 ),
        .I1(\sine_value[2]_i_8_n_0 ),
        .O(\sine_value_reg[2]_i_3_n_0 ),
        .S(angle_reg[6]));
  MUXF7 \sine_value_reg[2]_i_4 
       (.I0(\sine_value[2]_i_9_n_0 ),
        .I1(\sine_value[2]_i_10_n_0 ),
        .O(\sine_value_reg[2]_i_4_n_0 ),
        .S(angle_reg[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sine_value_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(sine_value_temp[3]),
        .Q(sine_value_OBUF[3]));
  MUXF7 \sine_value_reg[3]_i_2 
       (.I0(\sine_value[3]_i_5_n_0 ),
        .I1(\sine_value[3]_i_6_n_0 ),
        .O(\sine_value_reg[3]_i_2_n_0 ),
        .S(angle_reg[6]));
  MUXF7 \sine_value_reg[3]_i_3 
       (.I0(\sine_value[3]_i_7_n_0 ),
        .I1(\sine_value[3]_i_8_n_0 ),
        .O(\sine_value_reg[3]_i_3_n_0 ),
        .S(angle_reg[6]));
  MUXF7 \sine_value_reg[3]_i_4 
       (.I0(\sine_value[3]_i_9_n_0 ),
        .I1(\sine_value[3]_i_10_n_0 ),
        .O(\sine_value_reg[3]_i_4_n_0 ),
        .S(angle_reg[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sine_value_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(sine_value_temp[4]),
        .Q(sine_value_OBUF[4]));
  MUXF7 \sine_value_reg[4]_i_2 
       (.I0(\sine_value[4]_i_5_n_0 ),
        .I1(\sine_value[4]_i_6_n_0 ),
        .O(\sine_value_reg[4]_i_2_n_0 ),
        .S(angle_reg[6]));
  MUXF7 \sine_value_reg[4]_i_3 
       (.I0(\sine_value[4]_i_7_n_0 ),
        .I1(\sine_value[4]_i_8_n_0 ),
        .O(\sine_value_reg[4]_i_3_n_0 ),
        .S(angle_reg[6]));
  MUXF7 \sine_value_reg[4]_i_4 
       (.I0(\sine_value[4]_i_9_n_0 ),
        .I1(\sine_value[4]_i_10_n_0 ),
        .O(\sine_value_reg[4]_i_4_n_0 ),
        .S(angle_reg[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sine_value_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(sine_value_temp[5]),
        .Q(sine_value_OBUF[5]));
  MUXF7 \sine_value_reg[5]_i_2 
       (.I0(\sine_value[5]_i_5_n_0 ),
        .I1(\sine_value[5]_i_6_n_0 ),
        .O(\sine_value_reg[5]_i_2_n_0 ),
        .S(angle_reg[6]));
  MUXF7 \sine_value_reg[5]_i_3 
       (.I0(\sine_value[5]_i_7_n_0 ),
        .I1(\sine_value[5]_i_8_n_0 ),
        .O(\sine_value_reg[5]_i_3_n_0 ),
        .S(angle_reg[6]));
  MUXF7 \sine_value_reg[5]_i_4 
       (.I0(\sine_value[5]_i_9_n_0 ),
        .I1(\sine_value[5]_i_10_n_0 ),
        .O(\sine_value_reg[5]_i_4_n_0 ),
        .S(angle_reg[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sine_value_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(sine_value_temp[6]),
        .Q(sine_value_OBUF[6]));
  MUXF7 \sine_value_reg[6]_i_1 
       (.I0(\sine_value[6]_i_2_n_0 ),
        .I1(\sine_value[6]_i_3_n_0 ),
        .O(sine_value_temp[6]),
        .S(angle_reg[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sine_value_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(sine_value_temp[7]),
        .Q(sine_value_OBUF[7]));
  MUXF7 \sine_value_reg[7]_i_1 
       (.I0(\sine_value[7]_i_2_n_0 ),
        .I1(\sine_value[7]_i_3_n_0 ),
        .O(sine_value_temp[7]),
        .S(angle_reg[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sine_value_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(sine_value_temp[8]),
        .Q(sine_value_OBUF[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sine_value_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(sine_value_temp[9]),
        .Q(sine_value_OBUF[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
