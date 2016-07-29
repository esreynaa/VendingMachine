////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.76xd
//  \   \         Application: netgen
//  /   /         Filename: Coin_Mach_A1_synthesis.v
// /___/   /\     Timestamp: Fri Jul 29 15:26:59 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Coin_Mach_A1.ngc Coin_Mach_A1_synthesis.v 
// Device	: xc6slx16-2-csg324
// Input file	: Coin_Mach_A1.ngc
// Output file	: C:\Users\Ed\Documents\UTSA\UTSA_classes_Summer_2016\homework\Assignment_4\Problem_A\Coin_machine_A\netgen\synthesis\Coin_Mach_A1_synthesis.v
// # of Modules	: 1
// Design Name	: Coin_Mach_A1
// Xilinx        : C:\Xilinx\13.3\ISE_DS_with_new_drivers\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Coin_Mach_A1 (
  coin_5, coin_10, coin_25, CLK, Disp_W, Disp_Wo
);
  input coin_5;
  input coin_10;
  input coin_25;
  input CLK;
  output Disp_W;
  output Disp_Wo;
  wire coin_5_IBUF_0;
  wire coin_10_IBUF_1;
  wire coin_25_IBUF_2;
  wire \state[1]_balance[5]_wide_mux_18_OUT<5> ;
  wire \state[1]_balance[5]_wide_mux_18_OUT<4> ;
  wire \state[1]_balance[5]_wide_mux_18_OUT<3> ;
  wire \state[1]_balance[5]_wide_mux_18_OUT<2> ;
  wire \state[1]_balance[5]_wide_mux_18_OUT<1> ;
  wire \state[1]_balance[5]_wide_mux_18_OUT<0> ;
  wire balance_5_9;
  wire balance_4_10;
  wire balance_3_11;
  wire balance_2_12;
  wire balance_1_13;
  wire balance_0_14;
  wire \state[1]_balance[5]_Mux_20_o ;
  wire state_FSM_FFd1_16;
  wire \state[1]_PWR_3_o_Mux_22_o ;
  wire \state[1]_PWR_9_o_Mux_28_o ;
  wire \state[1]_balance[5]_Mux_19_o ;
  wire Disp_Wo_OBUF_20;
  wire Disp_W_OBUF_21;
  wire slow_clk_INV_1_o;
  wire slow_clk_23;
  wire \count[6]_INV_2_o ;
  wire \state_FSM_FFd2-In ;
  wire \state_FSM_FFd1-In ;
  wire state_FSM_FFd2_27;
  wire \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_lut<3> ;
  wire \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_lut<4> ;
  wire \Madd_count[6]_GND_1_o_add_2_OUT_cy<0> ;
  wire \Madd_count[6]_GND_1_o_add_2_OUT_lut<1> ;
  wire \Madd_count[6]_GND_1_o_add_2_OUT_lut<6> ;
  wire \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<4>11 ;
  wire \Mmux_state[1]_balance[5]_Mux_20_o11_34 ;
  wire N01;
  wire \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<4>111_36 ;
  wire N2;
  wire N4;
  wire N6;
  wire N8;
  wire N9;
  wire N10;
  wire N14;
  LD #(
    .INIT ( 1'b0 ))
  balance_5 (
    .D(\state[1]_balance[5]_wide_mux_18_OUT<5> ),
    .G(\state[1]_PWR_3_o_Mux_22_o ),
    .Q(balance_5_9)
  );
  LD #(
    .INIT ( 1'b0 ))
  balance_4 (
    .D(\state[1]_balance[5]_wide_mux_18_OUT<4> ),
    .G(\state[1]_PWR_3_o_Mux_22_o ),
    .Q(balance_4_10)
  );
  LD #(
    .INIT ( 1'b0 ))
  balance_3 (
    .D(\state[1]_balance[5]_wide_mux_18_OUT<3> ),
    .G(\state[1]_PWR_3_o_Mux_22_o ),
    .Q(balance_3_11)
  );
  LD #(
    .INIT ( 1'b0 ))
  balance_2 (
    .D(\state[1]_balance[5]_wide_mux_18_OUT<2> ),
    .G(\state[1]_PWR_3_o_Mux_22_o ),
    .Q(balance_2_12)
  );
  LD #(
    .INIT ( 1'b0 ))
  balance_1 (
    .D(\state[1]_balance[5]_wide_mux_18_OUT<1> ),
    .G(\state[1]_PWR_3_o_Mux_22_o ),
    .Q(balance_1_13)
  );
  LD #(
    .INIT ( 1'b0 ))
  balance_0 (
    .D(\state[1]_balance[5]_wide_mux_18_OUT<0> ),
    .G(\state[1]_PWR_3_o_Mux_22_o ),
    .Q(balance_0_14)
  );
  LD #(
    .INIT ( 1'b0 ))
  slow_clk (
    .D(slow_clk_INV_1_o),
    .G(\count[6]_INV_2_o ),
    .Q(slow_clk_23)
  );
  LD #(
    .INIT ( 1'b0 ))
  Disp_Wo_8 (
    .D(\state[1]_balance[5]_Mux_20_o ),
    .G(\state[1]_PWR_9_o_Mux_28_o ),
    .Q(Disp_Wo_OBUF_20)
  );
  LD #(
    .INIT ( 1'b0 ))
  Disp_W_9 (
    .D(\state[1]_balance[5]_Mux_19_o ),
    .G(\state[1]_PWR_9_o_Mux_28_o ),
    .Q(Disp_W_OBUF_21)
  );
  FD #(
    .INIT ( 1'b0 ))
  state_FSM_FFd2 (
    .C(slow_clk_23),
    .D(\state_FSM_FFd2-In ),
    .Q(state_FSM_FFd2_27)
  );
  FD #(
    .INIT ( 1'b0 ))
  state_FSM_FFd1 (
    .C(slow_clk_23),
    .D(\state_FSM_FFd1-In ),
    .Q(state_FSM_FFd1_16)
  );
  LUT5 #(
    .INIT ( 32'hFFF90006 ))
  \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_lut<3>1  (
    .I0(coin_25_IBUF_2),
    .I1(coin_10_IBUF_1),
    .I2(coin_5_IBUF_0),
    .I3(state_FSM_FFd1_16),
    .I4(balance_3_11),
    .O(\Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_lut<3> )
  );
  LUT5 #(
    .INIT ( 32'hFFEF0010 ))
  \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_lut<4>1  (
    .I0(state_FSM_FFd1_16),
    .I1(coin_5_IBUF_0),
    .I2(coin_25_IBUF_2),
    .I3(coin_10_IBUF_1),
    .I4(balance_4_10),
    .O(\Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_lut<4> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \state__n0085<0>1  (
    .I0(state_FSM_FFd2_27),
    .I1(state_FSM_FFd1_16),
    .O(\state[1]_PWR_3_o_Mux_22_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_count71 (
    .I0(\count[6]_INV_2_o ),
    .I1(\Madd_count[6]_GND_1_o_add_2_OUT_lut<6> ),
    .O(\Madd_count[6]_GND_1_o_add_2_OUT_lut<6> )
  );
  LUT4 #(
    .INIT ( 16'h8F88 ))
  \count[6]_INV_2_o11  (
    .I0(\Madd_count[6]_GND_1_o_add_2_OUT_cy<0> ),
    .I1(\Madd_count[6]_GND_1_o_add_2_OUT_lut<1> ),
    .I2(\count[6]_INV_2_o ),
    .I3(\Madd_count[6]_GND_1_o_add_2_OUT_lut<6> ),
    .O(\count[6]_INV_2_o )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \Mmux_state[1]_balance[5]_Mux_20_o111  (
    .I0(balance_4_10),
    .I1(balance_3_11),
    .I2(balance_1_13),
    .I3(balance_2_12),
    .O(\Mmux_state[1]_balance[5]_Mux_20_o11_34 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \Mmux_state[1]_balance[5]_Mux_20_o11  (
    .I0(balance_0_14),
    .I1(balance_5_9),
    .I2(state_FSM_FFd1_16),
    .I3(\Mmux_state[1]_balance[5]_Mux_20_o11_34 ),
    .O(\state[1]_balance[5]_Mux_20_o )
  );
  LUT4 #(
    .INIT ( 16'hAA8A ))
  \state_FSM_FFd1-In1  (
    .I0(state_FSM_FFd2_27),
    .I1(\Mmux_state[1]_balance[5]_Mux_20_o11_34 ),
    .I2(state_FSM_FFd1_16),
    .I3(balance_5_9),
    .O(\state_FSM_FFd1-In )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  Mmux_count21 (
    .I0(\Madd_count[6]_GND_1_o_add_2_OUT_cy<0> ),
    .I1(\Madd_count[6]_GND_1_o_add_2_OUT_lut<1> ),
    .O(\Madd_count[6]_GND_1_o_add_2_OUT_lut<1> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Mmux_state[1]_balance[5]_Mux_19_o1_SW0  (
    .I0(balance_5_9),
    .I1(balance_3_11),
    .O(N01)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA8AAAAAAA ))
  \Mmux_state[1]_balance[5]_Mux_19_o1  (
    .I0(state_FSM_FFd1_16),
    .I1(balance_0_14),
    .I2(balance_1_13),
    .I3(balance_2_12),
    .I4(balance_4_10),
    .I5(N01),
    .O(\state[1]_balance[5]_Mux_19_o )
  );
  IBUF   coin_5_IBUF (
    .I(coin_5),
    .O(coin_5_IBUF_0)
  );
  IBUF   coin_10_IBUF (
    .I(coin_10),
    .O(coin_10_IBUF_1)
  );
  IBUF   coin_25_IBUF (
    .I(coin_25),
    .O(coin_25_IBUF_2)
  );
  OBUF   Disp_W_OBUF (
    .I(Disp_W_OBUF_21),
    .O(Disp_W)
  );
  OBUF   Disp_Wo_OBUF (
    .I(Disp_Wo_OBUF_20),
    .O(Disp_Wo)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_cy<4>11_SW0  (
    .I0(state_FSM_FFd1_16),
    .I1(balance_5_9),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'hF05A3C5A0F5A3C5A ))
  \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<5>11  (
    .I0(balance_4_10),
    .I1(balance_3_11),
    .I2(N2),
    .I3(\Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_lut<4> ),
    .I4(\Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_lut<3> ),
    .I5(\Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<4>11 ),
    .O(\state[1]_balance[5]_wide_mux_18_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'h00E9FFFF00FBFFFF ))
  \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<4>111  (
    .I0(coin_5_IBUF_0),
    .I1(coin_10_IBUF_1),
    .I2(coin_25_IBUF_2),
    .I3(state_FSM_FFd1_16),
    .I4(balance_1_13),
    .I5(balance_0_14),
    .O(\Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<4>111_36 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<4>112_SW0  (
    .I0(coin_25_IBUF_2),
    .I1(coin_10_IBUF_1),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hFBFF040000FBFF04 ))
  \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<3>11  (
    .I0(N4),
    .I1(coin_5_IBUF_0),
    .I2(state_FSM_FFd1_16),
    .I3(balance_2_12),
    .I4(\Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_lut<3> ),
    .I5(\Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<4>111_36 ),
    .O(\state[1]_balance[5]_wide_mux_18_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<4>112_SW1  (
    .I0(state_FSM_FFd1_16),
    .I1(coin_5_IBUF_0),
    .I2(coin_25_IBUF_2),
    .I3(coin_10_IBUF_1),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h5FA033CC05FA33CC ))
  \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<4>12  (
    .I0(N6),
    .I1(balance_3_11),
    .I2(balance_2_12),
    .I3(\Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_lut<4> ),
    .I4(\Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_lut<3> ),
    .I5(\Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<4>111_36 ),
    .O(\state[1]_balance[5]_wide_mux_18_OUT<4> )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<4>111_SW0  (
    .I0(coin_5_IBUF_0),
    .I1(state_FSM_FFd1_16),
    .I2(coin_25_IBUF_2),
    .I3(coin_10_IBUF_1),
    .O(N8)
  );
  LUT4 #(
    .INIT ( 16'hFF14 ))
  \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<4>111_SW1  (
    .I0(coin_25_IBUF_2),
    .I1(coin_5_IBUF_0),
    .I2(coin_10_IBUF_1),
    .I3(state_FSM_FFd1_16),
    .O(N9)
  );
  LUT4 #(
    .INIT ( 16'hABBE ))
  \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<4>111_SW2  (
    .I0(state_FSM_FFd1_16),
    .I1(coin_5_IBUF_0),
    .I2(coin_25_IBUF_2),
    .I3(coin_10_IBUF_1),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'h55F0F0FF33F0FFFF ))
  \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<4>112  (
    .I0(N10),
    .I1(N9),
    .I2(N8),
    .I3(balance_1_13),
    .I4(balance_2_12),
    .I5(balance_0_14),
    .O(\Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<4>11 )
  );
  LUT6 #(
    .INIT ( 64'h5A5A5A555A56565A ))
  \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<1>11  (
    .I0(balance_1_13),
    .I1(balance_0_14),
    .I2(state_FSM_FFd1_16),
    .I3(coin_5_IBUF_0),
    .I4(coin_25_IBUF_2),
    .I5(coin_10_IBUF_1),
    .O(\state[1]_balance[5]_wide_mux_18_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hAAA9A9AA ))
  \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<0>11  (
    .I0(balance_0_14),
    .I1(coin_10_IBUF_1),
    .I2(state_FSM_FFd1_16),
    .I3(coin_25_IBUF_2),
    .I4(coin_5_IBUF_0),
    .O(\state[1]_balance[5]_wide_mux_18_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'hFF14 ))
  \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<2>11_SW2  (
    .I0(coin_5_IBUF_0),
    .I1(coin_25_IBUF_2),
    .I2(coin_10_IBUF_1),
    .I3(state_FSM_FFd1_16),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'h3393399966C66CCC ))
  \Mmux_state[1]_balance[5]_wide_mux_18_OUT_rs_xor<2>11  (
    .I0(balance_1_13),
    .I1(balance_2_12),
    .I2(balance_0_14),
    .I3(N14),
    .I4(N9),
    .I5(N6),
    .O(\state[1]_balance[5]_wide_mux_18_OUT<2> )
  );
  INV   slow_clk_INV_1_o1_INV_0 (
    .I(slow_clk_23),
    .O(slow_clk_INV_1_o)
  );
  INV   \state__n0085<1>1_INV_0  (
    .I(state_FSM_FFd2_27),
    .O(\state[1]_PWR_9_o_Mux_28_o )
  );
  INV   \state_FSM_FFd2-In1_INV_0  (
    .I(state_FSM_FFd1_16),
    .O(\state_FSM_FFd2-In )
  );
  INV   Mmux_count1_INV_0 (
    .I(\Madd_count[6]_GND_1_o_add_2_OUT_cy<0> ),
    .O(\Madd_count[6]_GND_1_o_add_2_OUT_cy<0> )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

