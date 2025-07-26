// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Jul 26 11:55:21 2025
// Host        : LAPTOP-N89H5O1S running 64-bit major release  (build 9200)
// Command     : write_verilog D:/FPGA_context/107_contest_data/CONV_syn.v
// Design      : CONV
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CLEAN = "11" *) (* FIN = "17" *) (* IDLE = "0" *) 
(* READ_P0_0 = "1" *) (* READ_P0_1 = "2" *) (* READ_P0_2 = "3" *) 
(* READ_P0_3 = "4" *) (* READ_P0_4 = "5" *) (* READ_P0_5 = "6" *) 
(* READ_P0_6 = "7" *) (* READ_P0_7 = "8" *) (* READ_P0_8 = "9" *) 
(* READ_P1_0 = "12" *) (* READ_P1_1 = "13" *) (* READ_P1_2 = "14" *) 
(* READ_P1_3 = "15" *) (* WRITE_P0 = "10" *) (* WRITE_P1 = "16" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module CONV
   (clk,
    reset,
    busy,
    ready,
    iaddr,
    idata,
    cwr,
    caddr_wr,
    cdata_wr,
    crd,
    caddr_rd,
    cdata_rd,
    csel);
  input clk;
  input reset;
  output busy;
  input ready;
  output [11:0]iaddr;
  input [19:0]idata;
  output cwr;
  output [11:0]caddr_wr;
  output [19:0]cdata_wr;
  output crd;
  output [11:0]caddr_rd;
  input [19:0]cdata_rd;
  output [2:0]csel;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_sequential_state[3]_i_10_n_0 ;
  wire \FSM_sequential_state[3]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
  wire GND_2;
  wire VCC_2;
  wire addr24_in;
  wire bias;
  wire busy;
  wire busy_reg0;
  wire [11:0]caddr_rd;
  wire [11:0]caddr_wr;
  wire [11:0]caddr_wr_OBUF;
  wire caddr_wr_reg;
  wire caddr_wr_reg0;
  wire [11:0]caddr_wr_reg0_in;
  wire [19:0]cdata_rd;
  wire [19:0]cdata_rd_IBUF;
  wire [19:0]cdata_wr;
  wire [18:0]cdata_wr_OBUF;
  wire \cdata_wr_reg[18]_i_1_n_0 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire crd;
  wire [2:0]csel;
  wire [0:0]csel_OBUF;
  wire [0:0]csel_reg;
  wire \csel_reg[0]_i_1_n_0 ;
  wire cwr;
  wire cwr_OBUF;
  wire cwr_reg;
  wire cwr_reg_i_1_n_0;
  wire enter10_n_100;
  wire enter10_n_101;
  wire enter10_n_102;
  wire enter10_n_103;
  wire enter10_n_104;
  wire enter10_n_105;
  wire enter10_n_58;
  wire enter10_n_59;
  wire enter10_n_60;
  wire enter10_n_61;
  wire enter10_n_62;
  wire enter10_n_63;
  wire enter10_n_64;
  wire enter10_n_65;
  wire enter10_n_66;
  wire enter10_n_67;
  wire enter10_n_68;
  wire enter10_n_69;
  wire enter10_n_70;
  wire enter10_n_71;
  wire enter10_n_72;
  wire enter10_n_73;
  wire enter10_n_74;
  wire enter10_n_75;
  wire enter10_n_76;
  wire enter10_n_77;
  wire enter10_n_78;
  wire enter10_n_79;
  wire enter10_n_80;
  wire enter10_n_81;
  wire enter10_n_82;
  wire enter10_n_83;
  wire enter10_n_84;
  wire enter10_n_85;
  wire enter10_n_86;
  wire enter10_n_87;
  wire enter10_n_88;
  wire enter10_n_89;
  wire enter10_n_90;
  wire enter10_n_91;
  wire enter10_n_92;
  wire enter10_n_93;
  wire enter10_n_94;
  wire enter10_n_95;
  wire enter10_n_96;
  wire enter10_n_97;
  wire enter10_n_98;
  wire enter10_n_99;
  wire enter2_n_100;
  wire enter2_n_101;
  wire enter2_n_102;
  wire enter2_n_103;
  wire enter2_n_104;
  wire enter2_n_105;
  wire enter2_n_58;
  wire enter2_n_59;
  wire enter2_n_60;
  wire enter2_n_61;
  wire enter2_n_62;
  wire enter2_n_63;
  wire enter2_n_64;
  wire enter2_n_65;
  wire enter2_n_66;
  wire enter2_n_67;
  wire enter2_n_68;
  wire enter2_n_69;
  wire enter2_n_70;
  wire enter2_n_71;
  wire enter2_n_72;
  wire enter2_n_73;
  wire enter2_n_74;
  wire enter2_n_75;
  wire enter2_n_76;
  wire enter2_n_77;
  wire enter2_n_78;
  wire enter2_n_79;
  wire enter2_n_80;
  wire enter2_n_81;
  wire enter2_n_82;
  wire enter2_n_83;
  wire enter2_n_84;
  wire enter2_n_85;
  wire enter2_n_86;
  wire enter2_n_87;
  wire enter2_n_88;
  wire enter2_n_89;
  wire enter2_n_90;
  wire enter2_n_91;
  wire enter2_n_92;
  wire enter2_n_93;
  wire enter2_n_94;
  wire enter2_n_95;
  wire enter2_n_96;
  wire enter2_n_97;
  wire enter2_n_98;
  wire enter2_n_99;
  wire enter3_n_100;
  wire enter3_n_101;
  wire enter3_n_102;
  wire enter3_n_103;
  wire enter3_n_104;
  wire enter3_n_105;
  wire enter3_n_58;
  wire enter3_n_59;
  wire enter3_n_60;
  wire enter3_n_61;
  wire enter3_n_62;
  wire enter3_n_63;
  wire enter3_n_64;
  wire enter3_n_65;
  wire enter3_n_66;
  wire enter3_n_67;
  wire enter3_n_68;
  wire enter3_n_69;
  wire enter3_n_70;
  wire enter3_n_71;
  wire enter3_n_72;
  wire enter3_n_73;
  wire enter3_n_74;
  wire enter3_n_75;
  wire enter3_n_76;
  wire enter3_n_77;
  wire enter3_n_78;
  wire enter3_n_79;
  wire enter3_n_80;
  wire enter3_n_81;
  wire enter3_n_82;
  wire enter3_n_83;
  wire enter3_n_84;
  wire enter3_n_85;
  wire enter3_n_86;
  wire enter3_n_87;
  wire enter3_n_88;
  wire enter3_n_89;
  wire enter3_n_90;
  wire enter3_n_91;
  wire enter3_n_92;
  wire enter3_n_93;
  wire enter3_n_94;
  wire enter3_n_95;
  wire enter3_n_96;
  wire enter3_n_97;
  wire enter3_n_98;
  wire enter3_n_99;
  wire enter4_n_100;
  wire enter4_n_101;
  wire enter4_n_102;
  wire enter4_n_103;
  wire enter4_n_104;
  wire enter4_n_105;
  wire enter4_n_58;
  wire enter4_n_59;
  wire enter4_n_60;
  wire enter4_n_61;
  wire enter4_n_62;
  wire enter4_n_63;
  wire enter4_n_64;
  wire enter4_n_65;
  wire enter4_n_66;
  wire enter4_n_67;
  wire enter4_n_68;
  wire enter4_n_69;
  wire enter4_n_70;
  wire enter4_n_71;
  wire enter4_n_72;
  wire enter4_n_73;
  wire enter4_n_74;
  wire enter4_n_75;
  wire enter4_n_76;
  wire enter4_n_77;
  wire enter4_n_78;
  wire enter4_n_79;
  wire enter4_n_80;
  wire enter4_n_81;
  wire enter4_n_82;
  wire enter4_n_83;
  wire enter4_n_84;
  wire enter4_n_85;
  wire enter4_n_86;
  wire enter4_n_87;
  wire enter4_n_88;
  wire enter4_n_89;
  wire enter4_n_90;
  wire enter4_n_91;
  wire enter4_n_92;
  wire enter4_n_93;
  wire enter4_n_94;
  wire enter4_n_95;
  wire enter4_n_96;
  wire enter4_n_97;
  wire enter4_n_98;
  wire enter4_n_99;
  wire enter5_n_100;
  wire enter5_n_101;
  wire enter5_n_102;
  wire enter5_n_103;
  wire enter5_n_104;
  wire enter5_n_105;
  wire enter5_n_58;
  wire enter5_n_59;
  wire enter5_n_60;
  wire enter5_n_61;
  wire enter5_n_62;
  wire enter5_n_63;
  wire enter5_n_64;
  wire enter5_n_65;
  wire enter5_n_66;
  wire enter5_n_67;
  wire enter5_n_68;
  wire enter5_n_69;
  wire enter5_n_70;
  wire enter5_n_71;
  wire enter5_n_72;
  wire enter5_n_73;
  wire enter5_n_74;
  wire enter5_n_75;
  wire enter5_n_76;
  wire enter5_n_77;
  wire enter5_n_78;
  wire enter5_n_79;
  wire enter5_n_80;
  wire enter5_n_81;
  wire enter5_n_82;
  wire enter5_n_83;
  wire enter5_n_84;
  wire enter5_n_85;
  wire enter5_n_86;
  wire enter5_n_87;
  wire enter5_n_88;
  wire enter5_n_89;
  wire enter5_n_90;
  wire enter5_n_91;
  wire enter5_n_92;
  wire enter5_n_93;
  wire enter5_n_94;
  wire enter5_n_95;
  wire enter5_n_96;
  wire enter5_n_97;
  wire enter5_n_98;
  wire enter5_n_99;
  wire enter6_n_100;
  wire enter6_n_101;
  wire enter6_n_102;
  wire enter6_n_103;
  wire enter6_n_104;
  wire enter6_n_105;
  wire enter6_n_58;
  wire enter6_n_59;
  wire enter6_n_60;
  wire enter6_n_61;
  wire enter6_n_62;
  wire enter6_n_63;
  wire enter6_n_64;
  wire enter6_n_65;
  wire enter6_n_66;
  wire enter6_n_67;
  wire enter6_n_68;
  wire enter6_n_69;
  wire enter6_n_70;
  wire enter6_n_71;
  wire enter6_n_72;
  wire enter6_n_73;
  wire enter6_n_74;
  wire enter6_n_75;
  wire enter6_n_76;
  wire enter6_n_77;
  wire enter6_n_78;
  wire enter6_n_79;
  wire enter6_n_80;
  wire enter6_n_81;
  wire enter6_n_82;
  wire enter6_n_83;
  wire enter6_n_84;
  wire enter6_n_85;
  wire enter6_n_86;
  wire enter6_n_87;
  wire enter6_n_88;
  wire enter6_n_89;
  wire enter6_n_90;
  wire enter6_n_91;
  wire enter6_n_92;
  wire enter6_n_93;
  wire enter6_n_94;
  wire enter6_n_95;
  wire enter6_n_96;
  wire enter6_n_97;
  wire enter6_n_98;
  wire enter6_n_99;
  wire enter7_n_100;
  wire enter7_n_101;
  wire enter7_n_102;
  wire enter7_n_103;
  wire enter7_n_104;
  wire enter7_n_105;
  wire enter7_n_58;
  wire enter7_n_59;
  wire enter7_n_60;
  wire enter7_n_61;
  wire enter7_n_62;
  wire enter7_n_63;
  wire enter7_n_64;
  wire enter7_n_65;
  wire enter7_n_66;
  wire enter7_n_67;
  wire enter7_n_68;
  wire enter7_n_69;
  wire enter7_n_70;
  wire enter7_n_71;
  wire enter7_n_72;
  wire enter7_n_73;
  wire enter7_n_74;
  wire enter7_n_75;
  wire enter7_n_76;
  wire enter7_n_77;
  wire enter7_n_78;
  wire enter7_n_79;
  wire enter7_n_80;
  wire enter7_n_81;
  wire enter7_n_82;
  wire enter7_n_83;
  wire enter7_n_84;
  wire enter7_n_85;
  wire enter7_n_86;
  wire enter7_n_87;
  wire enter7_n_88;
  wire enter7_n_89;
  wire enter7_n_90;
  wire enter7_n_91;
  wire enter7_n_92;
  wire enter7_n_93;
  wire enter7_n_94;
  wire enter7_n_95;
  wire enter7_n_96;
  wire enter7_n_97;
  wire enter7_n_98;
  wire enter7_n_99;
  wire enter8_n_100;
  wire enter8_n_101;
  wire enter8_n_102;
  wire enter8_n_103;
  wire enter8_n_104;
  wire enter8_n_105;
  wire enter8_n_58;
  wire enter8_n_59;
  wire enter8_n_60;
  wire enter8_n_61;
  wire enter8_n_62;
  wire enter8_n_63;
  wire enter8_n_64;
  wire enter8_n_65;
  wire enter8_n_66;
  wire enter8_n_67;
  wire enter8_n_68;
  wire enter8_n_69;
  wire enter8_n_70;
  wire enter8_n_71;
  wire enter8_n_72;
  wire enter8_n_73;
  wire enter8_n_74;
  wire enter8_n_75;
  wire enter8_n_76;
  wire enter8_n_77;
  wire enter8_n_78;
  wire enter8_n_79;
  wire enter8_n_80;
  wire enter8_n_81;
  wire enter8_n_82;
  wire enter8_n_83;
  wire enter8_n_84;
  wire enter8_n_85;
  wire enter8_n_86;
  wire enter8_n_87;
  wire enter8_n_88;
  wire enter8_n_89;
  wire enter8_n_90;
  wire enter8_n_91;
  wire enter8_n_92;
  wire enter8_n_93;
  wire enter8_n_94;
  wire enter8_n_95;
  wire enter8_n_96;
  wire enter8_n_97;
  wire enter8_n_98;
  wire enter8_n_99;
  wire enter9_n_100;
  wire enter9_n_101;
  wire enter9_n_102;
  wire enter9_n_103;
  wire enter9_n_104;
  wire enter9_n_105;
  wire enter9_n_58;
  wire enter9_n_59;
  wire enter9_n_60;
  wire enter9_n_61;
  wire enter9_n_62;
  wire enter9_n_63;
  wire enter9_n_64;
  wire enter9_n_65;
  wire enter9_n_66;
  wire enter9_n_67;
  wire enter9_n_68;
  wire enter9_n_69;
  wire enter9_n_70;
  wire enter9_n_71;
  wire enter9_n_72;
  wire enter9_n_73;
  wire enter9_n_74;
  wire enter9_n_75;
  wire enter9_n_76;
  wire enter9_n_77;
  wire enter9_n_78;
  wire enter9_n_79;
  wire enter9_n_80;
  wire enter9_n_81;
  wire enter9_n_82;
  wire enter9_n_83;
  wire enter9_n_84;
  wire enter9_n_85;
  wire enter9_n_86;
  wire enter9_n_87;
  wire enter9_n_88;
  wire enter9_n_89;
  wire enter9_n_90;
  wire enter9_n_91;
  wire enter9_n_92;
  wire enter9_n_93;
  wire enter9_n_94;
  wire enter9_n_95;
  wire enter9_n_96;
  wire enter9_n_97;
  wire enter9_n_98;
  wire enter9_n_99;
  wire \enter[11]_i_13_n_0 ;
  wire \enter[11]_i_14_n_0 ;
  wire \enter[11]_i_15_n_0 ;
  wire \enter[11]_i_16_n_0 ;
  wire \enter[11]_i_17_n_0 ;
  wire \enter[11]_i_18_n_0 ;
  wire \enter[11]_i_19_n_0 ;
  wire \enter[11]_i_20_n_0 ;
  wire \enter[11]_i_21_n_0 ;
  wire \enter[11]_i_22_n_0 ;
  wire \enter[11]_i_23_n_0 ;
  wire \enter[11]_i_24_n_0 ;
  wire \enter[11]_i_25_n_0 ;
  wire \enter[11]_i_26_n_0 ;
  wire \enter[11]_i_27_n_0 ;
  wire \enter[11]_i_28_n_0 ;
  wire \enter[11]_i_29_n_0 ;
  wire \enter[11]_i_2_n_0 ;
  wire \enter[11]_i_30_n_0 ;
  wire \enter[11]_i_31_n_0 ;
  wire \enter[11]_i_32_n_0 ;
  wire \enter[11]_i_33_n_0 ;
  wire \enter[11]_i_34_n_0 ;
  wire \enter[11]_i_35_n_0 ;
  wire \enter[11]_i_36_n_0 ;
  wire \enter[11]_i_38_n_0 ;
  wire \enter[11]_i_39_n_0 ;
  wire \enter[11]_i_3_n_0 ;
  wire \enter[11]_i_40_n_0 ;
  wire \enter[11]_i_41_n_0 ;
  wire \enter[11]_i_42_n_0 ;
  wire \enter[11]_i_43_n_0 ;
  wire \enter[11]_i_44_n_0 ;
  wire \enter[11]_i_4_n_0 ;
  wire \enter[11]_i_5_n_0 ;
  wire \enter[11]_i_6_n_0 ;
  wire \enter[11]_i_7_n_0 ;
  wire \enter[11]_i_8_n_0 ;
  wire \enter[11]_i_9_n_0 ;
  wire \enter[15]_i_13_n_0 ;
  wire \enter[15]_i_14_n_0 ;
  wire \enter[15]_i_15_n_0 ;
  wire \enter[15]_i_16_n_0 ;
  wire \enter[15]_i_17_n_0 ;
  wire \enter[15]_i_18_n_0 ;
  wire \enter[15]_i_19_n_0 ;
  wire \enter[15]_i_20_n_0 ;
  wire \enter[15]_i_21_n_0 ;
  wire \enter[15]_i_22_n_0 ;
  wire \enter[15]_i_23_n_0 ;
  wire \enter[15]_i_24_n_0 ;
  wire \enter[15]_i_25_n_0 ;
  wire \enter[15]_i_26_n_0 ;
  wire \enter[15]_i_27_n_0 ;
  wire \enter[15]_i_28_n_0 ;
  wire \enter[15]_i_29_n_0 ;
  wire \enter[15]_i_2_n_0 ;
  wire \enter[15]_i_30_n_0 ;
  wire \enter[15]_i_31_n_0 ;
  wire \enter[15]_i_32_n_0 ;
  wire \enter[15]_i_33_n_0 ;
  wire \enter[15]_i_34_n_0 ;
  wire \enter[15]_i_35_n_0 ;
  wire \enter[15]_i_36_n_0 ;
  wire \enter[15]_i_38_n_0 ;
  wire \enter[15]_i_39_n_0 ;
  wire \enter[15]_i_3_n_0 ;
  wire \enter[15]_i_40_n_0 ;
  wire \enter[15]_i_41_n_0 ;
  wire \enter[15]_i_42_n_0 ;
  wire \enter[15]_i_43_n_0 ;
  wire \enter[15]_i_44_n_0 ;
  wire \enter[15]_i_45_n_0 ;
  wire \enter[15]_i_4_n_0 ;
  wire \enter[15]_i_5_n_0 ;
  wire \enter[15]_i_6_n_0 ;
  wire \enter[15]_i_7_n_0 ;
  wire \enter[15]_i_8_n_0 ;
  wire \enter[15]_i_9_n_0 ;
  wire \enter[19]_i_100_n_0 ;
  wire \enter[19]_i_16_n_0 ;
  wire \enter[19]_i_17_n_0 ;
  wire \enter[19]_i_18_n_0 ;
  wire \enter[19]_i_19_n_0 ;
  wire \enter[19]_i_20_n_0 ;
  wire \enter[19]_i_21_n_0 ;
  wire \enter[19]_i_22_n_0 ;
  wire \enter[19]_i_23_n_0 ;
  wire \enter[19]_i_24_n_0 ;
  wire \enter[19]_i_25_n_0 ;
  wire \enter[19]_i_26_n_0 ;
  wire \enter[19]_i_27_n_0 ;
  wire \enter[19]_i_28_n_0 ;
  wire \enter[19]_i_29_n_0 ;
  wire \enter[19]_i_30_n_0 ;
  wire \enter[19]_i_31_n_0 ;
  wire \enter[19]_i_32_n_0 ;
  wire \enter[19]_i_33_n_0 ;
  wire \enter[19]_i_34_n_0 ;
  wire \enter[19]_i_35_n_0 ;
  wire \enter[19]_i_36_n_0 ;
  wire \enter[19]_i_37_n_0 ;
  wire \enter[19]_i_38_n_0 ;
  wire \enter[19]_i_39_n_0 ;
  wire \enter[19]_i_3_n_0 ;
  wire \enter[19]_i_40_n_0 ;
  wire \enter[19]_i_41_n_0 ;
  wire \enter[19]_i_42_n_0 ;
  wire \enter[19]_i_43_n_0 ;
  wire \enter[19]_i_44_n_0 ;
  wire \enter[19]_i_45_n_0 ;
  wire \enter[19]_i_46_n_0 ;
  wire \enter[19]_i_47_n_0 ;
  wire \enter[19]_i_48_n_0 ;
  wire \enter[19]_i_49_n_0 ;
  wire \enter[19]_i_4_n_0 ;
  wire \enter[19]_i_50_n_0 ;
  wire \enter[19]_i_51_n_0 ;
  wire \enter[19]_i_52_n_0 ;
  wire \enter[19]_i_53_n_0 ;
  wire \enter[19]_i_54_n_0 ;
  wire \enter[19]_i_55_n_0 ;
  wire \enter[19]_i_56_n_0 ;
  wire \enter[19]_i_57_n_0 ;
  wire \enter[19]_i_58_n_0 ;
  wire \enter[19]_i_59_n_0 ;
  wire \enter[19]_i_5_n_0 ;
  wire \enter[19]_i_60_n_0 ;
  wire \enter[19]_i_63_n_0 ;
  wire \enter[19]_i_64_n_0 ;
  wire \enter[19]_i_65_n_0 ;
  wire \enter[19]_i_66_n_0 ;
  wire \enter[19]_i_67_n_0 ;
  wire \enter[19]_i_68_n_0 ;
  wire \enter[19]_i_69_n_0 ;
  wire \enter[19]_i_6_n_0 ;
  wire \enter[19]_i_70_n_0 ;
  wire \enter[19]_i_71_n_0 ;
  wire \enter[19]_i_72_n_0 ;
  wire \enter[19]_i_73_n_0 ;
  wire \enter[19]_i_74_n_0 ;
  wire \enter[19]_i_75_n_0 ;
  wire \enter[19]_i_77_n_0 ;
  wire \enter[19]_i_78_n_0 ;
  wire \enter[19]_i_79_n_0 ;
  wire \enter[19]_i_7_n_0 ;
  wire \enter[19]_i_80_n_0 ;
  wire \enter[19]_i_81_n_0 ;
  wire \enter[19]_i_82_n_0 ;
  wire \enter[19]_i_83_n_0 ;
  wire \enter[19]_i_84_n_0 ;
  wire \enter[19]_i_85_n_0 ;
  wire \enter[19]_i_86_n_0 ;
  wire \enter[19]_i_87_n_0 ;
  wire \enter[19]_i_88_n_0 ;
  wire \enter[19]_i_89_n_0 ;
  wire \enter[19]_i_8_n_0 ;
  wire \enter[19]_i_90_n_0 ;
  wire \enter[19]_i_91_n_0 ;
  wire \enter[19]_i_92_n_0 ;
  wire \enter[19]_i_93_n_0 ;
  wire \enter[19]_i_94_n_0 ;
  wire \enter[19]_i_95_n_0 ;
  wire \enter[19]_i_96_n_0 ;
  wire \enter[19]_i_97_n_0 ;
  wire \enter[19]_i_98_n_0 ;
  wire \enter[19]_i_99_n_0 ;
  wire \enter[19]_i_9_n_0 ;
  wire \enter[3]_i_2_n_0 ;
  wire \enter[3]_i_3_n_0 ;
  wire \enter[3]_i_4_n_0 ;
  wire \enter[3]_i_5_n_0 ;
  wire \enter[3]_i_6_n_0 ;
  wire \enter[3]_i_7_n_0 ;
  wire \enter[3]_i_8_n_0 ;
  wire \enter[7]_i_13_n_0 ;
  wire \enter[7]_i_14_n_0 ;
  wire \enter[7]_i_15_n_0 ;
  wire \enter[7]_i_16_n_0 ;
  wire \enter[7]_i_17_n_0 ;
  wire \enter[7]_i_18_n_0 ;
  wire \enter[7]_i_19_n_0 ;
  wire \enter[7]_i_20_n_0 ;
  wire \enter[7]_i_21_n_0 ;
  wire \enter[7]_i_22_n_0 ;
  wire \enter[7]_i_23_n_0 ;
  wire \enter[7]_i_24_n_0 ;
  wire \enter[7]_i_25_n_0 ;
  wire \enter[7]_i_26_n_0 ;
  wire \enter[7]_i_27_n_0 ;
  wire \enter[7]_i_28_n_0 ;
  wire \enter[7]_i_29_n_0 ;
  wire \enter[7]_i_2_n_0 ;
  wire \enter[7]_i_30_n_0 ;
  wire \enter[7]_i_31_n_0 ;
  wire \enter[7]_i_32_n_0 ;
  wire \enter[7]_i_33_n_0 ;
  wire \enter[7]_i_3_n_0 ;
  wire \enter[7]_i_4_n_0 ;
  wire \enter[7]_i_5_n_0 ;
  wire \enter[7]_i_6_n_0 ;
  wire \enter[7]_i_7_n_0 ;
  wire \enter[7]_i_8_n_0 ;
  wire \enter[7]_i_9_n_0 ;
  wire \enter_reg[11]_i_10_n_0 ;
  wire \enter_reg[11]_i_10_n_1 ;
  wire \enter_reg[11]_i_10_n_2 ;
  wire \enter_reg[11]_i_10_n_3 ;
  wire \enter_reg[11]_i_10_n_4 ;
  wire \enter_reg[11]_i_10_n_5 ;
  wire \enter_reg[11]_i_10_n_6 ;
  wire \enter_reg[11]_i_10_n_7 ;
  wire \enter_reg[11]_i_11_n_0 ;
  wire \enter_reg[11]_i_11_n_1 ;
  wire \enter_reg[11]_i_11_n_2 ;
  wire \enter_reg[11]_i_11_n_3 ;
  wire \enter_reg[11]_i_11_n_4 ;
  wire \enter_reg[11]_i_11_n_5 ;
  wire \enter_reg[11]_i_11_n_6 ;
  wire \enter_reg[11]_i_11_n_7 ;
  wire \enter_reg[11]_i_12_n_0 ;
  wire \enter_reg[11]_i_12_n_1 ;
  wire \enter_reg[11]_i_12_n_2 ;
  wire \enter_reg[11]_i_12_n_3 ;
  wire \enter_reg[11]_i_12_n_4 ;
  wire \enter_reg[11]_i_12_n_5 ;
  wire \enter_reg[11]_i_12_n_6 ;
  wire \enter_reg[11]_i_12_n_7 ;
  wire \enter_reg[11]_i_1_n_0 ;
  wire \enter_reg[11]_i_1_n_1 ;
  wire \enter_reg[11]_i_1_n_2 ;
  wire \enter_reg[11]_i_1_n_3 ;
  wire \enter_reg[11]_i_37_n_0 ;
  wire \enter_reg[11]_i_37_n_1 ;
  wire \enter_reg[11]_i_37_n_2 ;
  wire \enter_reg[11]_i_37_n_3 ;
  wire \enter_reg[11]_i_37_n_4 ;
  wire \enter_reg[11]_i_37_n_5 ;
  wire \enter_reg[11]_i_37_n_6 ;
  wire \enter_reg[11]_i_37_n_7 ;
  wire \enter_reg[15]_i_10_n_0 ;
  wire \enter_reg[15]_i_10_n_1 ;
  wire \enter_reg[15]_i_10_n_2 ;
  wire \enter_reg[15]_i_10_n_3 ;
  wire \enter_reg[15]_i_10_n_4 ;
  wire \enter_reg[15]_i_10_n_5 ;
  wire \enter_reg[15]_i_10_n_6 ;
  wire \enter_reg[15]_i_10_n_7 ;
  wire \enter_reg[15]_i_11_n_0 ;
  wire \enter_reg[15]_i_11_n_1 ;
  wire \enter_reg[15]_i_11_n_2 ;
  wire \enter_reg[15]_i_11_n_3 ;
  wire \enter_reg[15]_i_11_n_4 ;
  wire \enter_reg[15]_i_11_n_5 ;
  wire \enter_reg[15]_i_11_n_6 ;
  wire \enter_reg[15]_i_11_n_7 ;
  wire \enter_reg[15]_i_12_n_0 ;
  wire \enter_reg[15]_i_12_n_1 ;
  wire \enter_reg[15]_i_12_n_2 ;
  wire \enter_reg[15]_i_12_n_3 ;
  wire \enter_reg[15]_i_12_n_4 ;
  wire \enter_reg[15]_i_12_n_5 ;
  wire \enter_reg[15]_i_12_n_6 ;
  wire \enter_reg[15]_i_12_n_7 ;
  wire \enter_reg[15]_i_1_n_0 ;
  wire \enter_reg[15]_i_1_n_1 ;
  wire \enter_reg[15]_i_1_n_2 ;
  wire \enter_reg[15]_i_1_n_3 ;
  wire \enter_reg[15]_i_37_n_0 ;
  wire \enter_reg[15]_i_37_n_1 ;
  wire \enter_reg[15]_i_37_n_2 ;
  wire \enter_reg[15]_i_37_n_3 ;
  wire \enter_reg[15]_i_37_n_4 ;
  wire \enter_reg[15]_i_37_n_5 ;
  wire \enter_reg[15]_i_37_n_6 ;
  wire \enter_reg[15]_i_37_n_7 ;
  wire \enter_reg[19]_i_10_n_1 ;
  wire \enter_reg[19]_i_10_n_2 ;
  wire \enter_reg[19]_i_10_n_3 ;
  wire \enter_reg[19]_i_10_n_4 ;
  wire \enter_reg[19]_i_10_n_5 ;
  wire \enter_reg[19]_i_10_n_6 ;
  wire \enter_reg[19]_i_10_n_7 ;
  wire \enter_reg[19]_i_11_n_1 ;
  wire \enter_reg[19]_i_11_n_2 ;
  wire \enter_reg[19]_i_11_n_3 ;
  wire \enter_reg[19]_i_11_n_4 ;
  wire \enter_reg[19]_i_11_n_5 ;
  wire \enter_reg[19]_i_11_n_6 ;
  wire \enter_reg[19]_i_11_n_7 ;
  wire \enter_reg[19]_i_12_n_1 ;
  wire \enter_reg[19]_i_12_n_2 ;
  wire \enter_reg[19]_i_12_n_3 ;
  wire \enter_reg[19]_i_12_n_4 ;
  wire \enter_reg[19]_i_12_n_5 ;
  wire \enter_reg[19]_i_12_n_6 ;
  wire \enter_reg[19]_i_12_n_7 ;
  wire \enter_reg[19]_i_13_n_0 ;
  wire \enter_reg[19]_i_13_n_1 ;
  wire \enter_reg[19]_i_13_n_2 ;
  wire \enter_reg[19]_i_13_n_3 ;
  wire \enter_reg[19]_i_13_n_4 ;
  wire \enter_reg[19]_i_13_n_5 ;
  wire \enter_reg[19]_i_13_n_6 ;
  wire \enter_reg[19]_i_13_n_7 ;
  wire \enter_reg[19]_i_14_n_0 ;
  wire \enter_reg[19]_i_14_n_1 ;
  wire \enter_reg[19]_i_14_n_2 ;
  wire \enter_reg[19]_i_14_n_3 ;
  wire \enter_reg[19]_i_14_n_4 ;
  wire \enter_reg[19]_i_14_n_5 ;
  wire \enter_reg[19]_i_14_n_6 ;
  wire \enter_reg[19]_i_14_n_7 ;
  wire \enter_reg[19]_i_15_n_0 ;
  wire \enter_reg[19]_i_15_n_1 ;
  wire \enter_reg[19]_i_15_n_2 ;
  wire \enter_reg[19]_i_15_n_3 ;
  wire \enter_reg[19]_i_15_n_4 ;
  wire \enter_reg[19]_i_15_n_5 ;
  wire \enter_reg[19]_i_15_n_6 ;
  wire \enter_reg[19]_i_15_n_7 ;
  wire \enter_reg[19]_i_2_n_1 ;
  wire \enter_reg[19]_i_2_n_2 ;
  wire \enter_reg[19]_i_2_n_3 ;
  wire \enter_reg[19]_i_61_n_1 ;
  wire \enter_reg[19]_i_61_n_2 ;
  wire \enter_reg[19]_i_61_n_3 ;
  wire \enter_reg[19]_i_61_n_4 ;
  wire \enter_reg[19]_i_61_n_5 ;
  wire \enter_reg[19]_i_61_n_6 ;
  wire \enter_reg[19]_i_61_n_7 ;
  wire \enter_reg[19]_i_62_n_0 ;
  wire \enter_reg[19]_i_62_n_1 ;
  wire \enter_reg[19]_i_62_n_2 ;
  wire \enter_reg[19]_i_62_n_3 ;
  wire \enter_reg[19]_i_62_n_4 ;
  wire \enter_reg[19]_i_62_n_5 ;
  wire \enter_reg[19]_i_62_n_6 ;
  wire \enter_reg[19]_i_62_n_7 ;
  wire \enter_reg[19]_i_76_n_0 ;
  wire \enter_reg[19]_i_76_n_1 ;
  wire \enter_reg[19]_i_76_n_2 ;
  wire \enter_reg[19]_i_76_n_3 ;
  wire \enter_reg[19]_i_76_n_4 ;
  wire \enter_reg[19]_i_76_n_5 ;
  wire \enter_reg[19]_i_76_n_6 ;
  wire \enter_reg[19]_i_76_n_7 ;
  wire \enter_reg[3]_i_1_n_0 ;
  wire \enter_reg[3]_i_1_n_1 ;
  wire \enter_reg[3]_i_1_n_2 ;
  wire \enter_reg[3]_i_1_n_3 ;
  wire \enter_reg[7]_i_10_n_0 ;
  wire \enter_reg[7]_i_10_n_1 ;
  wire \enter_reg[7]_i_10_n_2 ;
  wire \enter_reg[7]_i_10_n_3 ;
  wire \enter_reg[7]_i_10_n_4 ;
  wire \enter_reg[7]_i_10_n_5 ;
  wire \enter_reg[7]_i_10_n_6 ;
  wire \enter_reg[7]_i_10_n_7 ;
  wire \enter_reg[7]_i_11_n_0 ;
  wire \enter_reg[7]_i_11_n_1 ;
  wire \enter_reg[7]_i_11_n_2 ;
  wire \enter_reg[7]_i_11_n_3 ;
  wire \enter_reg[7]_i_11_n_4 ;
  wire \enter_reg[7]_i_11_n_5 ;
  wire \enter_reg[7]_i_11_n_6 ;
  wire \enter_reg[7]_i_11_n_7 ;
  wire \enter_reg[7]_i_12_n_0 ;
  wire \enter_reg[7]_i_12_n_1 ;
  wire \enter_reg[7]_i_12_n_2 ;
  wire \enter_reg[7]_i_12_n_3 ;
  wire \enter_reg[7]_i_12_n_4 ;
  wire \enter_reg[7]_i_12_n_5 ;
  wire \enter_reg[7]_i_12_n_6 ;
  wire \enter_reg[7]_i_12_n_7 ;
  wire \enter_reg[7]_i_1_n_0 ;
  wire \enter_reg[7]_i_1_n_1 ;
  wire \enter_reg[7]_i_1_n_2 ;
  wire \enter_reg[7]_i_1_n_3 ;
  wire \enter_reg_n_0_[0] ;
  wire \enter_reg_n_0_[10] ;
  wire \enter_reg_n_0_[11] ;
  wire \enter_reg_n_0_[12] ;
  wire \enter_reg_n_0_[13] ;
  wire \enter_reg_n_0_[14] ;
  wire \enter_reg_n_0_[15] ;
  wire \enter_reg_n_0_[16] ;
  wire \enter_reg_n_0_[17] ;
  wire \enter_reg_n_0_[18] ;
  wire \enter_reg_n_0_[19] ;
  wire \enter_reg_n_0_[1] ;
  wire \enter_reg_n_0_[2] ;
  wire \enter_reg_n_0_[3] ;
  wire \enter_reg_n_0_[4] ;
  wire \enter_reg_n_0_[5] ;
  wire \enter_reg_n_0_[6] ;
  wire \enter_reg_n_0_[7] ;
  wire \enter_reg_n_0_[8] ;
  wire \enter_reg_n_0_[9] ;
  wire [11:0]iaddr;
  wire [19:0]idata;
  wire [19:0]idata_IBUF;
  wire [19:0]in24;
  wire [31:1]in4;
  wire [3:0]next_state;
  wire \p0[0]_i_1_n_0 ;
  wire \p0[31]_i_1_n_0 ;
  wire \p0[31]_i_2_n_0 ;
  wire \p0_reg[12]_i_1_n_0 ;
  wire \p0_reg[12]_i_1_n_1 ;
  wire \p0_reg[12]_i_1_n_2 ;
  wire \p0_reg[12]_i_1_n_3 ;
  wire \p0_reg[16]_i_1_n_0 ;
  wire \p0_reg[16]_i_1_n_1 ;
  wire \p0_reg[16]_i_1_n_2 ;
  wire \p0_reg[16]_i_1_n_3 ;
  wire \p0_reg[20]_i_1_n_0 ;
  wire \p0_reg[20]_i_1_n_1 ;
  wire \p0_reg[20]_i_1_n_2 ;
  wire \p0_reg[20]_i_1_n_3 ;
  wire \p0_reg[24]_i_1_n_0 ;
  wire \p0_reg[24]_i_1_n_1 ;
  wire \p0_reg[24]_i_1_n_2 ;
  wire \p0_reg[24]_i_1_n_3 ;
  wire \p0_reg[28]_i_1_n_0 ;
  wire \p0_reg[28]_i_1_n_1 ;
  wire \p0_reg[28]_i_1_n_2 ;
  wire \p0_reg[28]_i_1_n_3 ;
  wire \p0_reg[31]_i_3_n_2 ;
  wire \p0_reg[31]_i_3_n_3 ;
  wire \p0_reg[4]_i_1_n_0 ;
  wire \p0_reg[4]_i_1_n_1 ;
  wire \p0_reg[4]_i_1_n_2 ;
  wire \p0_reg[4]_i_1_n_3 ;
  wire \p0_reg[8]_i_1_n_0 ;
  wire \p0_reg[8]_i_1_n_1 ;
  wire \p0_reg[8]_i_1_n_2 ;
  wire \p0_reg[8]_i_1_n_3 ;
  wire \p0_reg_n_0_[12] ;
  wire \p0_reg_n_0_[13] ;
  wire \p0_reg_n_0_[14] ;
  wire \p0_reg_n_0_[15] ;
  wire \p0_reg_n_0_[16] ;
  wire \p0_reg_n_0_[17] ;
  wire \p0_reg_n_0_[18] ;
  wire \p0_reg_n_0_[19] ;
  wire \p0_reg_n_0_[20] ;
  wire \p0_reg_n_0_[21] ;
  wire \p0_reg_n_0_[22] ;
  wire \p0_reg_n_0_[23] ;
  wire \p0_reg_n_0_[24] ;
  wire \p0_reg_n_0_[25] ;
  wire \p0_reg_n_0_[26] ;
  wire \p0_reg_n_0_[27] ;
  wire \p0_reg_n_0_[28] ;
  wire \p0_reg_n_0_[29] ;
  wire \p0_reg_n_0_[30] ;
  wire \p0_reg_n_0_[31] ;
  wire pix;
  wire \pix[0][-1111111110]_i_1_n_0 ;
  wire \pix[0][-1111111111]_i_1_n_0 ;
  wire \pix[0][0]_i_1_n_0 ;
  wire \pix[0][10]_i_1_n_0 ;
  wire \pix[0][11]_i_1_n_0 ;
  wire \pix[0][12]_i_1_n_0 ;
  wire \pix[0][13]_i_1_n_0 ;
  wire \pix[0][14]_i_1_n_0 ;
  wire \pix[0][15]_i_1_n_0 ;
  wire \pix[0][16]_i_11_n_0 ;
  wire \pix[0][16]_i_12_n_0 ;
  wire \pix[0][16]_i_13_n_0 ;
  wire \pix[0][16]_i_14_n_0 ;
  wire \pix[0][16]_i_16_n_0 ;
  wire \pix[0][16]_i_17_n_0 ;
  wire \pix[0][16]_i_18_n_0 ;
  wire \pix[0][16]_i_19_n_0 ;
  wire \pix[0][16]_i_1_n_0 ;
  wire \pix[0][16]_i_20_n_0 ;
  wire \pix[0][16]_i_21_n_0 ;
  wire \pix[0][16]_i_22_n_0 ;
  wire \pix[0][16]_i_23_n_0 ;
  wire \pix[0][16]_i_24_n_0 ;
  wire \pix[0][16]_i_25_n_0 ;
  wire \pix[0][16]_i_26_n_0 ;
  wire \pix[0][16]_i_2_n_0 ;
  wire \pix[0][16]_i_3_n_0 ;
  wire \pix[0][16]_i_6_n_0 ;
  wire \pix[0][16]_i_7_n_0 ;
  wire \pix[0][16]_i_8_n_0 ;
  wire \pix[0][16]_i_9_n_0 ;
  wire \pix[0][1]_i_1_n_0 ;
  wire \pix[0][2]_i_1_n_0 ;
  wire \pix[0][3]_i_1_n_0 ;
  wire \pix[0][4]_i_1_n_0 ;
  wire \pix[0][5]_i_1_n_0 ;
  wire \pix[0][6]_i_1_n_0 ;
  wire \pix[0][7]_i_1_n_0 ;
  wire \pix[0][8]_i_1_n_0 ;
  wire \pix[0][9]_i_1_n_0 ;
  wire \pix[1][-1111111109]_i_1_n_0 ;
  wire \pix[1][-1111111110]_i_1_n_0 ;
  wire \pix[1][-1111111111]_i_1_n_0 ;
  wire \pix[1][0]_i_1_n_0 ;
  wire \pix[1][10]_i_1_n_0 ;
  wire \pix[1][11]_i_1_n_0 ;
  wire \pix[1][12]_i_1_n_0 ;
  wire \pix[1][13]_i_1_n_0 ;
  wire \pix[1][14]_i_1_n_0 ;
  wire \pix[1][15]_i_1_n_0 ;
  wire \pix[1][16]_i_1_n_0 ;
  wire \pix[1][16]_i_2_n_0 ;
  wire \pix[1][1]_i_1_n_0 ;
  wire \pix[1][2]_i_1_n_0 ;
  wire \pix[1][3]_i_1_n_0 ;
  wire \pix[1][4]_i_1_n_0 ;
  wire \pix[1][5]_i_1_n_0 ;
  wire \pix[1][6]_i_1_n_0 ;
  wire \pix[1][7]_i_1_n_0 ;
  wire \pix[1][8]_i_1_n_0 ;
  wire \pix[1][9]_i_1_n_0 ;
  wire \pix[2][-1111111109]_i_1_n_0 ;
  wire \pix[2][-1111111110]_i_1_n_0 ;
  wire \pix[2][-1111111111]_i_1_n_0 ;
  wire \pix[2][0]_i_1_n_0 ;
  wire \pix[2][10]_i_1_n_0 ;
  wire \pix[2][11]_i_1_n_0 ;
  wire \pix[2][12]_i_1_n_0 ;
  wire \pix[2][13]_i_1_n_0 ;
  wire \pix[2][14]_i_1_n_0 ;
  wire \pix[2][15]_i_1_n_0 ;
  wire \pix[2][16]_i_1_n_0 ;
  wire \pix[2][16]_i_2_n_0 ;
  wire \pix[2][16]_i_3_n_0 ;
  wire \pix[2][1]_i_1_n_0 ;
  wire \pix[2][2]_i_1_n_0 ;
  wire \pix[2][3]_i_1_n_0 ;
  wire \pix[2][4]_i_1_n_0 ;
  wire \pix[2][5]_i_1_n_0 ;
  wire \pix[2][6]_i_1_n_0 ;
  wire \pix[2][7]_i_1_n_0 ;
  wire \pix[2][8]_i_1_n_0 ;
  wire \pix[2][9]_i_1_n_0 ;
  wire \pix[3][-1111111111]_i_1_n_0 ;
  wire \pix[3][0]_i_1_n_0 ;
  wire \pix[3][10]_i_1_n_0 ;
  wire \pix[3][11]_i_1_n_0 ;
  wire \pix[3][12]_i_1_n_0 ;
  wire \pix[3][13]_i_1_n_0 ;
  wire \pix[3][14]_i_1_n_0 ;
  wire \pix[3][15]_i_1_n_0 ;
  wire \pix[3][16]_i_1_n_0 ;
  wire \pix[3][16]_i_2_n_0 ;
  wire \pix[3][1]_i_1_n_0 ;
  wire \pix[3][2]_i_1_n_0 ;
  wire \pix[3][3]_i_1_n_0 ;
  wire \pix[3][4]_i_1_n_0 ;
  wire \pix[3][5]_i_1_n_0 ;
  wire \pix[3][6]_i_1_n_0 ;
  wire \pix[3][7]_i_1_n_0 ;
  wire \pix[3][8]_i_1_n_0 ;
  wire \pix[3][9]_i_1_n_0 ;
  wire \pix[4][19]_i_1_n_0 ;
  wire \pix[5][16]_i_1_n_0 ;
  wire \pix[5][16]_i_2_n_0 ;
  wire \pix[6][-1111111109]_i_1_n_0 ;
  wire \pix[6][-1111111110]_i_1_n_0 ;
  wire \pix[6][-1111111111]_i_1_n_0 ;
  wire \pix[6][0]_i_1_n_0 ;
  wire \pix[6][10]_i_1_n_0 ;
  wire \pix[6][11]_i_1_n_0 ;
  wire \pix[6][12]_i_1_n_0 ;
  wire \pix[6][13]_i_1_n_0 ;
  wire \pix[6][14]_i_1_n_0 ;
  wire \pix[6][15]_i_1_n_0 ;
  wire \pix[6][16]_i_10_n_0 ;
  wire \pix[6][16]_i_11_n_0 ;
  wire \pix[6][16]_i_12_n_0 ;
  wire \pix[6][16]_i_13_n_0 ;
  wire \pix[6][16]_i_15_n_0 ;
  wire \pix[6][16]_i_16_n_0 ;
  wire \pix[6][16]_i_17_n_0 ;
  wire \pix[6][16]_i_18_n_0 ;
  wire \pix[6][16]_i_19_n_0 ;
  wire \pix[6][16]_i_1_n_0 ;
  wire \pix[6][16]_i_20_n_0 ;
  wire \pix[6][16]_i_21_n_0 ;
  wire \pix[6][16]_i_22_n_0 ;
  wire \pix[6][16]_i_24_n_0 ;
  wire \pix[6][16]_i_25_n_0 ;
  wire \pix[6][16]_i_26_n_0 ;
  wire \pix[6][16]_i_27_n_0 ;
  wire \pix[6][16]_i_28_n_0 ;
  wire \pix[6][16]_i_29_n_0 ;
  wire \pix[6][16]_i_2_n_0 ;
  wire \pix[6][16]_i_30_n_0 ;
  wire \pix[6][16]_i_31_n_0 ;
  wire \pix[6][16]_i_32_n_0 ;
  wire \pix[6][16]_i_33_n_0 ;
  wire \pix[6][16]_i_34_n_0 ;
  wire \pix[6][16]_i_35_n_0 ;
  wire \pix[6][16]_i_36_n_0 ;
  wire \pix[6][16]_i_3_n_0 ;
  wire \pix[6][16]_i_6_n_0 ;
  wire \pix[6][16]_i_7_n_0 ;
  wire \pix[6][16]_i_8_n_0 ;
  wire \pix[6][16]_i_9_n_0 ;
  wire \pix[6][1]_i_1_n_0 ;
  wire \pix[6][2]_i_1_n_0 ;
  wire \pix[6][3]_i_1_n_0 ;
  wire \pix[6][4]_i_1_n_0 ;
  wire \pix[6][5]_i_1_n_0 ;
  wire \pix[6][6]_i_1_n_0 ;
  wire \pix[6][7]_i_1_n_0 ;
  wire \pix[6][8]_i_1_n_0 ;
  wire \pix[6][9]_i_1_n_0 ;
  wire \pix[7][16]_i_1_n_0 ;
  wire \pix[8][-1111111109]_i_1_n_0 ;
  wire \pix[8][-1111111110]_i_1_n_0 ;
  wire \pix[8][16]_i_1_n_0 ;
  wire [16:0]\pix_reg[0] ;
  wire \pix_reg[0][-_n_0_1111111110] ;
  wire \pix_reg[0][-_n_0_1111111111] ;
  wire \pix_reg[0][16]_i_10_n_0 ;
  wire \pix_reg[0][16]_i_10_n_1 ;
  wire \pix_reg[0][16]_i_10_n_2 ;
  wire \pix_reg[0][16]_i_10_n_3 ;
  wire \pix_reg[0][16]_i_15_n_0 ;
  wire \pix_reg[0][16]_i_15_n_1 ;
  wire \pix_reg[0][16]_i_15_n_2 ;
  wire \pix_reg[0][16]_i_15_n_3 ;
  wire \pix_reg[0][16]_i_4_n_1 ;
  wire \pix_reg[0][16]_i_4_n_2 ;
  wire \pix_reg[0][16]_i_4_n_3 ;
  wire \pix_reg[0][16]_i_5_n_0 ;
  wire \pix_reg[0][16]_i_5_n_1 ;
  wire \pix_reg[0][16]_i_5_n_2 ;
  wire \pix_reg[0][16]_i_5_n_3 ;
  wire [16:0]\pix_reg[1] ;
  wire \pix_reg[1][-_n_0_1111111109] ;
  wire \pix_reg[1][-_n_0_1111111110] ;
  wire \pix_reg[1][-_n_0_1111111111] ;
  wire [16:0]\pix_reg[2] ;
  wire \pix_reg[2][-_n_0_1111111109] ;
  wire \pix_reg[2][-_n_0_1111111110] ;
  wire \pix_reg[2][-_n_0_1111111111] ;
  wire [16:0]\pix_reg[3] ;
  wire \pix_reg[3][-_n_0_1111111111] ;
  wire [19:0]\pix_reg[4] ;
  wire [16:0]\pix_reg[5] ;
  wire \pix_reg[5][-_n_0_1111111111] ;
  wire [16:0]\pix_reg[6] ;
  wire \pix_reg[6][-_n_0_1111111109] ;
  wire \pix_reg[6][-_n_0_1111111110] ;
  wire \pix_reg[6][-_n_0_1111111111] ;
  wire \pix_reg[6][16]_i_14_n_0 ;
  wire \pix_reg[6][16]_i_14_n_1 ;
  wire \pix_reg[6][16]_i_14_n_2 ;
  wire \pix_reg[6][16]_i_14_n_3 ;
  wire \pix_reg[6][16]_i_23_n_0 ;
  wire \pix_reg[6][16]_i_23_n_1 ;
  wire \pix_reg[6][16]_i_23_n_2 ;
  wire \pix_reg[6][16]_i_23_n_3 ;
  wire \pix_reg[6][16]_i_4_n_0 ;
  wire \pix_reg[6][16]_i_4_n_1 ;
  wire \pix_reg[6][16]_i_4_n_2 ;
  wire \pix_reg[6][16]_i_4_n_3 ;
  wire \pix_reg[6][16]_i_5_n_0 ;
  wire \pix_reg[6][16]_i_5_n_1 ;
  wire \pix_reg[6][16]_i_5_n_2 ;
  wire \pix_reg[6][16]_i_5_n_3 ;
  wire [16:0]\pix_reg[7] ;
  wire \pix_reg[7][-_n_0_1111111111] ;
  wire [16:0]\pix_reg[8] ;
  wire \pix_reg[8][-_n_0_1111111109] ;
  wire \pix_reg[8][-_n_0_1111111110] ;
  wire \pix_reg[8][-_n_0_1111111111] ;
  wire ready;
  wire ready_IBUF;
  wire reset;
  wire reset_IBUF;
  wire [2:0]state;

  LUT6 #(
    .INIT(64'h3333333033333332)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(ready_IBUF),
        .I1(state[0]),
        .I2(state[1]),
        .I3(csel_reg),
        .I4(state[2]),
        .I5(reset_IBUF),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6066)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\FSM_sequential_state[3]_i_2_n_0 ),
        .I3(csel_reg),
        .O(next_state[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h38CC88CC)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state[3]_i_2_n_0 ),
        .I1(csel_reg),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[3]_i_10 
       (.I0(caddr_wr_reg0_in[1]),
        .I1(caddr_wr_reg0_in[0]),
        .I2(caddr_wr_reg0_in[5]),
        .I3(caddr_wr_reg0_in[4]),
        .O(\FSM_sequential_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEFE)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(\FSM_sequential_state[3]_i_3_n_0 ),
        .I3(\FSM_sequential_state[3]_i_4_n_0 ),
        .I4(\FSM_sequential_state[3]_i_5_n_0 ),
        .I5(\FSM_sequential_state[3]_i_6_n_0 ),
        .O(\FSM_sequential_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(\p0_reg_n_0_[20] ),
        .I1(\p0_reg_n_0_[21] ),
        .I2(\FSM_sequential_state[3]_i_7_n_0 ),
        .I3(\FSM_sequential_state[3]_i_8_n_0 ),
        .I4(\p0_reg_n_0_[16] ),
        .I5(\p0_reg_n_0_[17] ),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(caddr_wr_reg0_in[8]),
        .I1(caddr_wr_reg0_in[9]),
        .I2(caddr_wr_reg0_in[11]),
        .I3(caddr_wr_reg0_in[10]),
        .I4(caddr_wr_reg0_in[7]),
        .I5(caddr_wr_reg0_in[6]),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(\p0_reg_n_0_[15] ),
        .I1(\p0_reg_n_0_[14] ),
        .I2(\p0_reg_n_0_[26] ),
        .I3(\p0_reg_n_0_[27] ),
        .I4(\p0_reg_n_0_[24] ),
        .I5(\p0_reg_n_0_[25] ),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(\p0_reg_n_0_[30] ),
        .I1(\p0_reg_n_0_[31] ),
        .I2(\p0_reg_n_0_[28] ),
        .I3(\p0_reg_n_0_[29] ),
        .I4(\FSM_sequential_state[3]_i_9_n_0 ),
        .I5(\FSM_sequential_state[3]_i_10_n_0 ),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(\p0_reg_n_0_[18] ),
        .I1(\p0_reg_n_0_[19] ),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(\p0_reg_n_0_[22] ),
        .I1(\p0_reg_n_0_[23] ),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(caddr_wr_reg0_in[3]),
        .I1(caddr_wr_reg0_in[2]),
        .I2(\p0_reg_n_0_[12] ),
        .I3(\p0_reg_n_0_[13] ),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "READ_P0_3:0100,READ_P0_2:0011,READ_P1_1:1101,READ_P0_1:0010,CLEAN:1011,READ_P1_0:1100,WRITE_P0:1010,READ_P0_0:0001,IDLE:0000,READ_P0_8:1001,READ_P0_6:0111,READ_P0_7:1000,READ_P0_5:0110,READ_P1_3:1111,READ_P1_2:1110,READ_P0_4:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(reset_IBUF),
        .D(next_state[0]),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "READ_P0_3:0100,READ_P0_2:0011,READ_P1_1:1101,READ_P0_1:0010,CLEAN:1011,READ_P1_0:1100,WRITE_P0:1010,READ_P0_0:0001,IDLE:0000,READ_P0_8:1001,READ_P0_6:0111,READ_P0_7:1000,READ_P0_5:0110,READ_P1_3:1111,READ_P1_2:1110,READ_P0_4:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(reset_IBUF),
        .D(next_state[1]),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "READ_P0_3:0100,READ_P0_2:0011,READ_P1_1:1101,READ_P0_1:0010,CLEAN:1011,READ_P1_0:1100,WRITE_P0:1010,READ_P0_0:0001,IDLE:0000,READ_P0_8:1001,READ_P0_6:0111,READ_P0_7:1000,READ_P0_5:0110,READ_P1_3:1111,READ_P1_2:1110,READ_P0_4:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(reset_IBUF),
        .D(next_state[2]),
        .Q(state[2]));
  (* FSM_ENCODED_STATES = "READ_P0_3:0100,READ_P0_2:0011,READ_P1_1:1101,READ_P0_1:0010,CLEAN:1011,READ_P1_0:1100,WRITE_P0:1010,READ_P0_0:0001,IDLE:0000,READ_P0_8:1001,READ_P0_6:0111,READ_P0_7:1000,READ_P0_5:0110,READ_P1_3:1111,READ_P1_2:1110,READ_P0_4:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(reset_IBUF),
        .D(next_state[3]),
        .Q(csel_reg));
  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  OBUF busy_OBUF_inst
       (.I(\<const1> ),
        .O(busy));
  OBUF \caddr_rd_OBUF[0]_inst 
       (.I(\<const0> ),
        .O(caddr_rd[0]));
  OBUF \caddr_rd_OBUF[10]_inst 
       (.I(\<const0> ),
        .O(caddr_rd[10]));
  OBUF \caddr_rd_OBUF[11]_inst 
       (.I(\<const0> ),
        .O(caddr_rd[11]));
  OBUF \caddr_rd_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(caddr_rd[1]));
  OBUF \caddr_rd_OBUF[2]_inst 
       (.I(\<const0> ),
        .O(caddr_rd[2]));
  OBUF \caddr_rd_OBUF[3]_inst 
       (.I(\<const0> ),
        .O(caddr_rd[3]));
  OBUF \caddr_rd_OBUF[4]_inst 
       (.I(\<const0> ),
        .O(caddr_rd[4]));
  OBUF \caddr_rd_OBUF[5]_inst 
       (.I(\<const0> ),
        .O(caddr_rd[5]));
  OBUF \caddr_rd_OBUF[6]_inst 
       (.I(\<const0> ),
        .O(caddr_rd[6]));
  OBUF \caddr_rd_OBUF[7]_inst 
       (.I(\<const0> ),
        .O(caddr_rd[7]));
  OBUF \caddr_rd_OBUF[8]_inst 
       (.I(\<const0> ),
        .O(caddr_rd[8]));
  OBUF \caddr_rd_OBUF[9]_inst 
       (.I(\<const0> ),
        .O(caddr_rd[9]));
  OBUF \caddr_wr_OBUF[0]_inst 
       (.I(caddr_wr_OBUF[0]),
        .O(caddr_wr[0]));
  OBUF \caddr_wr_OBUF[10]_inst 
       (.I(caddr_wr_OBUF[10]),
        .O(caddr_wr[10]));
  OBUF \caddr_wr_OBUF[11]_inst 
       (.I(caddr_wr_OBUF[11]),
        .O(caddr_wr[11]));
  OBUF \caddr_wr_OBUF[1]_inst 
       (.I(caddr_wr_OBUF[1]),
        .O(caddr_wr[1]));
  OBUF \caddr_wr_OBUF[2]_inst 
       (.I(caddr_wr_OBUF[2]),
        .O(caddr_wr[2]));
  OBUF \caddr_wr_OBUF[3]_inst 
       (.I(caddr_wr_OBUF[3]),
        .O(caddr_wr[3]));
  OBUF \caddr_wr_OBUF[4]_inst 
       (.I(caddr_wr_OBUF[4]),
        .O(caddr_wr[4]));
  OBUF \caddr_wr_OBUF[5]_inst 
       (.I(caddr_wr_OBUF[5]),
        .O(caddr_wr[5]));
  OBUF \caddr_wr_OBUF[6]_inst 
       (.I(caddr_wr_OBUF[6]),
        .O(caddr_wr[6]));
  OBUF \caddr_wr_OBUF[7]_inst 
       (.I(caddr_wr_OBUF[7]),
        .O(caddr_wr[7]));
  OBUF \caddr_wr_OBUF[8]_inst 
       (.I(caddr_wr_OBUF[8]),
        .O(caddr_wr[8]));
  OBUF \caddr_wr_OBUF[9]_inst 
       (.I(caddr_wr_OBUF[9]),
        .O(caddr_wr[9]));
  LUT4 #(
    .INIT(16'h4000)) 
    \caddr_wr_reg[11]_i_1 
       (.I0(state[2]),
        .I1(csel_reg),
        .I2(state[1]),
        .I3(state[0]),
        .O(caddr_wr_reg0));
  LUT4 #(
    .INIT(16'h0400)) 
    \caddr_wr_reg[11]_i_2 
       (.I0(state[2]),
        .I1(csel_reg),
        .I2(state[0]),
        .I3(state[1]),
        .O(caddr_wr_reg));
  FDRE #(
    .INIT(1'b0)) 
    \caddr_wr_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(caddr_wr_reg0_in[0]),
        .Q(caddr_wr_OBUF[0]),
        .R(caddr_wr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \caddr_wr_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(caddr_wr_reg0_in[10]),
        .Q(caddr_wr_OBUF[10]),
        .R(caddr_wr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \caddr_wr_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(caddr_wr_reg0_in[11]),
        .Q(caddr_wr_OBUF[11]),
        .R(caddr_wr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \caddr_wr_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(caddr_wr_reg0_in[1]),
        .Q(caddr_wr_OBUF[1]),
        .R(caddr_wr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \caddr_wr_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(caddr_wr_reg0_in[2]),
        .Q(caddr_wr_OBUF[2]),
        .R(caddr_wr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \caddr_wr_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(caddr_wr_reg0_in[3]),
        .Q(caddr_wr_OBUF[3]),
        .R(caddr_wr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \caddr_wr_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(caddr_wr_reg0_in[4]),
        .Q(caddr_wr_OBUF[4]),
        .R(caddr_wr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \caddr_wr_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(caddr_wr_reg0_in[5]),
        .Q(caddr_wr_OBUF[5]),
        .R(caddr_wr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \caddr_wr_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(caddr_wr_reg0_in[6]),
        .Q(caddr_wr_OBUF[6]),
        .R(caddr_wr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \caddr_wr_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(caddr_wr_reg0_in[7]),
        .Q(caddr_wr_OBUF[7]),
        .R(caddr_wr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \caddr_wr_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(caddr_wr_reg0_in[8]),
        .Q(caddr_wr_OBUF[8]),
        .R(caddr_wr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \caddr_wr_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(caddr_wr_reg0_in[9]),
        .Q(caddr_wr_OBUF[9]),
        .R(caddr_wr_reg0));
  IBUF \cdata_rd_IBUF[0]_inst 
       (.I(cdata_rd[0]),
        .O(cdata_rd_IBUF[0]));
  IBUF \cdata_rd_IBUF[10]_inst 
       (.I(cdata_rd[10]),
        .O(cdata_rd_IBUF[10]));
  IBUF \cdata_rd_IBUF[11]_inst 
       (.I(cdata_rd[11]),
        .O(cdata_rd_IBUF[11]));
  IBUF \cdata_rd_IBUF[12]_inst 
       (.I(cdata_rd[12]),
        .O(cdata_rd_IBUF[12]));
  IBUF \cdata_rd_IBUF[13]_inst 
       (.I(cdata_rd[13]),
        .O(cdata_rd_IBUF[13]));
  IBUF \cdata_rd_IBUF[14]_inst 
       (.I(cdata_rd[14]),
        .O(cdata_rd_IBUF[14]));
  IBUF \cdata_rd_IBUF[15]_inst 
       (.I(cdata_rd[15]),
        .O(cdata_rd_IBUF[15]));
  IBUF \cdata_rd_IBUF[16]_inst 
       (.I(cdata_rd[16]),
        .O(cdata_rd_IBUF[16]));
  IBUF \cdata_rd_IBUF[17]_inst 
       (.I(cdata_rd[17]),
        .O(cdata_rd_IBUF[17]));
  IBUF \cdata_rd_IBUF[18]_inst 
       (.I(cdata_rd[18]),
        .O(cdata_rd_IBUF[18]));
  IBUF \cdata_rd_IBUF[19]_inst 
       (.I(cdata_rd[19]),
        .O(cdata_rd_IBUF[19]));
  IBUF \cdata_rd_IBUF[1]_inst 
       (.I(cdata_rd[1]),
        .O(cdata_rd_IBUF[1]));
  IBUF \cdata_rd_IBUF[2]_inst 
       (.I(cdata_rd[2]),
        .O(cdata_rd_IBUF[2]));
  IBUF \cdata_rd_IBUF[3]_inst 
       (.I(cdata_rd[3]),
        .O(cdata_rd_IBUF[3]));
  IBUF \cdata_rd_IBUF[4]_inst 
       (.I(cdata_rd[4]),
        .O(cdata_rd_IBUF[4]));
  IBUF \cdata_rd_IBUF[5]_inst 
       (.I(cdata_rd[5]),
        .O(cdata_rd_IBUF[5]));
  IBUF \cdata_rd_IBUF[6]_inst 
       (.I(cdata_rd[6]),
        .O(cdata_rd_IBUF[6]));
  IBUF \cdata_rd_IBUF[7]_inst 
       (.I(cdata_rd[7]),
        .O(cdata_rd_IBUF[7]));
  IBUF \cdata_rd_IBUF[8]_inst 
       (.I(cdata_rd[8]),
        .O(cdata_rd_IBUF[8]));
  IBUF \cdata_rd_IBUF[9]_inst 
       (.I(cdata_rd[9]),
        .O(cdata_rd_IBUF[9]));
  OBUF \cdata_wr_OBUF[0]_inst 
       (.I(cdata_wr_OBUF[0]),
        .O(cdata_wr[0]));
  OBUF \cdata_wr_OBUF[10]_inst 
       (.I(cdata_wr_OBUF[10]),
        .O(cdata_wr[10]));
  OBUF \cdata_wr_OBUF[11]_inst 
       (.I(cdata_wr_OBUF[11]),
        .O(cdata_wr[11]));
  OBUF \cdata_wr_OBUF[12]_inst 
       (.I(cdata_wr_OBUF[12]),
        .O(cdata_wr[12]));
  OBUF \cdata_wr_OBUF[13]_inst 
       (.I(cdata_wr_OBUF[13]),
        .O(cdata_wr[13]));
  OBUF \cdata_wr_OBUF[14]_inst 
       (.I(cdata_wr_OBUF[14]),
        .O(cdata_wr[14]));
  OBUF \cdata_wr_OBUF[15]_inst 
       (.I(cdata_wr_OBUF[15]),
        .O(cdata_wr[15]));
  OBUF \cdata_wr_OBUF[16]_inst 
       (.I(cdata_wr_OBUF[16]),
        .O(cdata_wr[16]));
  OBUF \cdata_wr_OBUF[17]_inst 
       (.I(cdata_wr_OBUF[17]),
        .O(cdata_wr[17]));
  OBUF \cdata_wr_OBUF[18]_inst 
       (.I(cdata_wr_OBUF[18]),
        .O(cdata_wr[18]));
  OBUF \cdata_wr_OBUF[19]_inst 
       (.I(\<const0> ),
        .O(cdata_wr[19]));
  OBUF \cdata_wr_OBUF[1]_inst 
       (.I(cdata_wr_OBUF[1]),
        .O(cdata_wr[1]));
  OBUF \cdata_wr_OBUF[2]_inst 
       (.I(cdata_wr_OBUF[2]),
        .O(cdata_wr[2]));
  OBUF \cdata_wr_OBUF[3]_inst 
       (.I(cdata_wr_OBUF[3]),
        .O(cdata_wr[3]));
  OBUF \cdata_wr_OBUF[4]_inst 
       (.I(cdata_wr_OBUF[4]),
        .O(cdata_wr[4]));
  OBUF \cdata_wr_OBUF[5]_inst 
       (.I(cdata_wr_OBUF[5]),
        .O(cdata_wr[5]));
  OBUF \cdata_wr_OBUF[6]_inst 
       (.I(cdata_wr_OBUF[6]),
        .O(cdata_wr[6]));
  OBUF \cdata_wr_OBUF[7]_inst 
       (.I(cdata_wr_OBUF[7]),
        .O(cdata_wr[7]));
  OBUF \cdata_wr_OBUF[8]_inst 
       (.I(cdata_wr_OBUF[8]),
        .O(cdata_wr[8]));
  OBUF \cdata_wr_OBUF[9]_inst 
       (.I(cdata_wr_OBUF[9]),
        .O(cdata_wr[9]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \cdata_wr_reg[18]_i_1 
       (.I0(in24[19]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(csel_reg),
        .I4(state[2]),
        .O(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[0]),
        .Q(cdata_wr_OBUF[0]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[10]),
        .Q(cdata_wr_OBUF[10]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[11]),
        .Q(cdata_wr_OBUF[11]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[12]),
        .Q(cdata_wr_OBUF[12]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[13]),
        .Q(cdata_wr_OBUF[13]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[14]),
        .Q(cdata_wr_OBUF[14]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[15]),
        .Q(cdata_wr_OBUF[15]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[16]),
        .Q(cdata_wr_OBUF[16]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[17]),
        .Q(cdata_wr_OBUF[17]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[18]),
        .Q(cdata_wr_OBUF[18]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[1]),
        .Q(cdata_wr_OBUF[1]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[2]),
        .Q(cdata_wr_OBUF[2]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[3]),
        .Q(cdata_wr_OBUF[3]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[4]),
        .Q(cdata_wr_OBUF[4]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[5]),
        .Q(cdata_wr_OBUF[5]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[6]),
        .Q(cdata_wr_OBUF[6]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[7]),
        .Q(cdata_wr_OBUF[7]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[8]),
        .Q(cdata_wr_OBUF[8]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdata_wr_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[9]),
        .Q(cdata_wr_OBUF[9]),
        .R(\cdata_wr_reg[18]_i_1_n_0 ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF crd_OBUF_inst
       (.I(\<const1> ),
        .O(crd));
  OBUF \csel_OBUF[0]_inst 
       (.I(csel_OBUF),
        .O(csel[0]));
  OBUF \csel_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(csel[1]));
  OBUF \csel_OBUF[2]_inst 
       (.I(\<const0> ),
        .O(csel[2]));
  LUT5 #(
    .INIT(32'h10431042)) 
    \csel_reg[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(csel_reg),
        .I3(state[2]),
        .I4(reset_IBUF),
        .O(\csel_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \csel_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\csel_reg[0]_i_1_n_0 ),
        .D(csel_reg),
        .Q(csel_OBUF),
        .R(\<const0> ));
  OBUF cwr_OBUF_inst
       (.I(cwr_OBUF),
        .O(cwr));
  LUT4 #(
    .INIT(16'h1042)) 
    cwr_reg_i_1
       (.I0(state[0]),
        .I1(state[2]),
        .I2(csel_reg),
        .I3(state[1]),
        .O(cwr_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cwr_reg_i_2
       (.I0(csel_reg),
        .I1(state[2]),
        .O(cwr_reg));
  FDRE #(
    .INIT(1'b0)) 
    cwr_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(cwr_reg_i_1_n_0),
        .D(cwr_reg),
        .Q(cwr_OBUF),
        .R(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    enter10
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const1> ,\<const0> ,\<const1> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const0> }),
        .ACIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ALUMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .B({\<const0> ,\pix_reg[0] }),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .C({VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2}),
        .CARRYCASCIN(\<const0> ),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CEA1(\<const0> ),
        .CEA2(bias),
        .CEAD(\<const0> ),
        .CEALUMODE(\<const0> ),
        .CEB1(\<const0> ),
        .CEB2(\<const0> ),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(\<const0> ),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(\<const0> ),
        .CEP(\<const0> ),
        .CLK(clk_IBUF_BUFG),
        .D({GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2}),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .OPMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const1> }),
        .P({enter10_n_58,enter10_n_59,enter10_n_60,enter10_n_61,enter10_n_62,enter10_n_63,enter10_n_64,enter10_n_65,enter10_n_66,enter10_n_67,enter10_n_68,enter10_n_69,enter10_n_70,enter10_n_71,enter10_n_72,enter10_n_73,enter10_n_74,enter10_n_75,enter10_n_76,enter10_n_77,enter10_n_78,enter10_n_79,enter10_n_80,enter10_n_81,enter10_n_82,enter10_n_83,enter10_n_84,enter10_n_85,enter10_n_86,enter10_n_87,enter10_n_88,enter10_n_89,enter10_n_90,enter10_n_91,enter10_n_92,enter10_n_93,enter10_n_94,enter10_n_95,enter10_n_96,enter10_n_97,enter10_n_98,enter10_n_99,enter10_n_100,enter10_n_101,enter10_n_102,enter10_n_103,enter10_n_104,enter10_n_105}),
        .PCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ));
  LUT5 #(
    .INIT(32'h00000100)) 
    enter10_i_1
       (.I0(state[1]),
        .I1(csel_reg),
        .I2(state[2]),
        .I3(reset_IBUF),
        .I4(state[0]),
        .O(bias));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    enter2
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const0> ,\<const1> ,\<const0> ,\<const1> ,\<const1> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const0> ,\<const0> ,\<const1> }),
        .ACIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ALUMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .B({\<const0> ,\pix_reg[8] }),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .C({VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2}),
        .CARRYCASCIN(\<const0> ),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CEA1(\<const0> ),
        .CEA2(bias),
        .CEAD(\<const0> ),
        .CEALUMODE(\<const0> ),
        .CEB1(\<const0> ),
        .CEB2(\<const0> ),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(\<const0> ),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(\<const0> ),
        .CEP(\<const0> ),
        .CLK(clk_IBUF_BUFG),
        .D({GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2}),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .OPMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const1> }),
        .P({enter2_n_58,enter2_n_59,enter2_n_60,enter2_n_61,enter2_n_62,enter2_n_63,enter2_n_64,enter2_n_65,enter2_n_66,enter2_n_67,enter2_n_68,enter2_n_69,enter2_n_70,enter2_n_71,enter2_n_72,enter2_n_73,enter2_n_74,enter2_n_75,enter2_n_76,enter2_n_77,enter2_n_78,enter2_n_79,enter2_n_80,enter2_n_81,enter2_n_82,enter2_n_83,enter2_n_84,enter2_n_85,enter2_n_86,enter2_n_87,enter2_n_88,enter2_n_89,enter2_n_90,enter2_n_91,enter2_n_92,enter2_n_93,enter2_n_94,enter2_n_95,enter2_n_96,enter2_n_97,enter2_n_98,enter2_n_99,enter2_n_100,enter2_n_101,enter2_n_102,enter2_n_103,enter2_n_104,enter2_n_105}),
        .PCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    enter3
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const0> ,\<const1> ,\<const0> ,\<const0> }),
        .ACIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ALUMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .B({\<const0> ,\pix_reg[7] }),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .C({VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2}),
        .CARRYCASCIN(\<const0> ),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CEA1(\<const0> ),
        .CEA2(bias),
        .CEAD(\<const0> ),
        .CEALUMODE(\<const0> ),
        .CEB1(\<const0> ),
        .CEB2(\<const0> ),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(\<const0> ),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(\<const0> ),
        .CEP(\<const0> ),
        .CLK(clk_IBUF_BUFG),
        .D({GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2}),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .OPMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const1> }),
        .P({enter3_n_58,enter3_n_59,enter3_n_60,enter3_n_61,enter3_n_62,enter3_n_63,enter3_n_64,enter3_n_65,enter3_n_66,enter3_n_67,enter3_n_68,enter3_n_69,enter3_n_70,enter3_n_71,enter3_n_72,enter3_n_73,enter3_n_74,enter3_n_75,enter3_n_76,enter3_n_77,enter3_n_78,enter3_n_79,enter3_n_80,enter3_n_81,enter3_n_82,enter3_n_83,enter3_n_84,enter3_n_85,enter3_n_86,enter3_n_87,enter3_n_88,enter3_n_89,enter3_n_90,enter3_n_91,enter3_n_92,enter3_n_93,enter3_n_94,enter3_n_95,enter3_n_96,enter3_n_97,enter3_n_98,enter3_n_99,enter3_n_100,enter3_n_101,enter3_n_102,enter3_n_103,enter3_n_104,enter3_n_105}),
        .PCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    enter4
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const0> ,\<const1> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const0> ,\<const1> ,\<const1> ,\<const0> ,\<const1> ,\<const0> ,\<const1> ,\<const1> ,\<const1> }),
        .ACIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ALUMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .B({\<const0> ,\pix_reg[6] }),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .C({VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2}),
        .CARRYCASCIN(\<const0> ),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CEA1(\<const0> ),
        .CEA2(bias),
        .CEAD(\<const0> ),
        .CEALUMODE(\<const0> ),
        .CEB1(\<const0> ),
        .CEB2(\<const0> ),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(\<const0> ),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(\<const0> ),
        .CEP(\<const0> ),
        .CLK(clk_IBUF_BUFG),
        .D({GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2}),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .OPMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const1> }),
        .P({enter4_n_58,enter4_n_59,enter4_n_60,enter4_n_61,enter4_n_62,enter4_n_63,enter4_n_64,enter4_n_65,enter4_n_66,enter4_n_67,enter4_n_68,enter4_n_69,enter4_n_70,enter4_n_71,enter4_n_72,enter4_n_73,enter4_n_74,enter4_n_75,enter4_n_76,enter4_n_77,enter4_n_78,enter4_n_79,enter4_n_80,enter4_n_81,enter4_n_82,enter4_n_83,enter4_n_84,enter4_n_85,enter4_n_86,enter4_n_87,enter4_n_88,enter4_n_89,enter4_n_90,enter4_n_91,enter4_n_92,enter4_n_93,enter4_n_94,enter4_n_95,enter4_n_96,enter4_n_97,enter4_n_98,enter4_n_99,enter4_n_100,enter4_n_101,enter4_n_102,enter4_n_103,enter4_n_104,enter4_n_105}),
        .PCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    enter5
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const0> ,\<const1> ,\<const1> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const1> ,\<const0> ,\<const1> ,\<const0> ,\<const0> }),
        .ACIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ALUMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .B({\<const0> ,\pix_reg[5] }),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .C({VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2}),
        .CARRYCASCIN(\<const0> ),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CEA1(\<const0> ),
        .CEA2(bias),
        .CEAD(\<const0> ),
        .CEALUMODE(\<const0> ),
        .CEB1(\<const0> ),
        .CEB2(\<const0> ),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(\<const0> ),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(\<const0> ),
        .CEP(\<const0> ),
        .CLK(clk_IBUF_BUFG),
        .D({GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2}),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .OPMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const1> }),
        .P({enter5_n_58,enter5_n_59,enter5_n_60,enter5_n_61,enter5_n_62,enter5_n_63,enter5_n_64,enter5_n_65,enter5_n_66,enter5_n_67,enter5_n_68,enter5_n_69,enter5_n_70,enter5_n_71,enter5_n_72,enter5_n_73,enter5_n_74,enter5_n_75,enter5_n_76,enter5_n_77,enter5_n_78,enter5_n_79,enter5_n_80,enter5_n_81,enter5_n_82,enter5_n_83,enter5_n_84,enter5_n_85,enter5_n_86,enter5_n_87,enter5_n_88,enter5_n_89,enter5_n_90,enter5_n_91,enter5_n_92,enter5_n_93,enter5_n_94,enter5_n_95,enter5_n_96,enter5_n_97,enter5_n_98,enter5_n_99,enter5_n_100,enter5_n_101,enter5_n_102,enter5_n_103,enter5_n_104,enter5_n_105}),
        .PCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    enter6
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .ACIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ALUMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .B({\<const0> ,\pix_reg[4] [16:0]}),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .C({VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2}),
        .CARRYCASCIN(\<const0> ),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CEA1(\<const0> ),
        .CEA2(bias),
        .CEAD(\<const0> ),
        .CEALUMODE(\<const0> ),
        .CEB1(\<const0> ),
        .CEB2(\<const0> ),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(\<const0> ),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(\<const0> ),
        .CEP(\<const0> ),
        .CLK(clk_IBUF_BUFG),
        .D({GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2}),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .OPMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const1> }),
        .P({enter6_n_58,enter6_n_59,enter6_n_60,enter6_n_61,enter6_n_62,enter6_n_63,enter6_n_64,enter6_n_65,enter6_n_66,enter6_n_67,enter6_n_68,enter6_n_69,enter6_n_70,enter6_n_71,enter6_n_72,enter6_n_73,enter6_n_74,enter6_n_75,enter6_n_76,enter6_n_77,enter6_n_78,enter6_n_79,enter6_n_80,enter6_n_81,enter6_n_82,enter6_n_83,enter6_n_84,enter6_n_85,enter6_n_86,enter6_n_87,enter6_n_88,enter6_n_89,enter6_n_90,enter6_n_91,enter6_n_92,enter6_n_93,enter6_n_94,enter6_n_95,enter6_n_96,enter6_n_97,enter6_n_98,enter6_n_99,enter6_n_100,enter6_n_101,enter6_n_102,enter6_n_103,enter6_n_104,enter6_n_105}),
        .PCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    enter7
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const0> }),
        .ACIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ALUMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .B({\<const0> ,\pix_reg[3] }),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .C({VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2}),
        .CARRYCASCIN(\<const0> ),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CEA1(\<const0> ),
        .CEA2(bias),
        .CEAD(\<const0> ),
        .CEALUMODE(\<const0> ),
        .CEB1(\<const0> ),
        .CEB2(\<const0> ),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(\<const0> ),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(\<const0> ),
        .CEP(\<const0> ),
        .CLK(clk_IBUF_BUFG),
        .D({GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2}),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .OPMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const1> }),
        .P({enter7_n_58,enter7_n_59,enter7_n_60,enter7_n_61,enter7_n_62,enter7_n_63,enter7_n_64,enter7_n_65,enter7_n_66,enter7_n_67,enter7_n_68,enter7_n_69,enter7_n_70,enter7_n_71,enter7_n_72,enter7_n_73,enter7_n_74,enter7_n_75,enter7_n_76,enter7_n_77,enter7_n_78,enter7_n_79,enter7_n_80,enter7_n_81,enter7_n_82,enter7_n_83,enter7_n_84,enter7_n_85,enter7_n_86,enter7_n_87,enter7_n_88,enter7_n_89,enter7_n_90,enter7_n_91,enter7_n_92,enter7_n_93,enter7_n_94,enter7_n_95,enter7_n_96,enter7_n_97,enter7_n_98,enter7_n_99,enter7_n_100,enter7_n_101,enter7_n_102,enter7_n_103,enter7_n_104,enter7_n_105}),
        .PCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    enter8
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const0> ,\<const1> ,\<const1> ,\<const0> ,\<const1> ,\<const0> ,\<const1> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> }),
        .ACIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ALUMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .B({\<const0> ,\pix_reg[2] }),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .C({VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2}),
        .CARRYCASCIN(\<const0> ),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CEA1(\<const0> ),
        .CEA2(bias),
        .CEAD(\<const0> ),
        .CEALUMODE(\<const0> ),
        .CEB1(\<const0> ),
        .CEB2(\<const0> ),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(\<const0> ),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(\<const0> ),
        .CEP(\<const0> ),
        .CLK(clk_IBUF_BUFG),
        .D({GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2}),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .OPMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const1> }),
        .P({enter8_n_58,enter8_n_59,enter8_n_60,enter8_n_61,enter8_n_62,enter8_n_63,enter8_n_64,enter8_n_65,enter8_n_66,enter8_n_67,enter8_n_68,enter8_n_69,enter8_n_70,enter8_n_71,enter8_n_72,enter8_n_73,enter8_n_74,enter8_n_75,enter8_n_76,enter8_n_77,enter8_n_78,enter8_n_79,enter8_n_80,enter8_n_81,enter8_n_82,enter8_n_83,enter8_n_84,enter8_n_85,enter8_n_86,enter8_n_87,enter8_n_88,enter8_n_89,enter8_n_90,enter8_n_91,enter8_n_92,enter8_n_93,enter8_n_94,enter8_n_95,enter8_n_96,enter8_n_97,enter8_n_98,enter8_n_99,enter8_n_100,enter8_n_101,enter8_n_102,enter8_n_103,enter8_n_104,enter8_n_105}),
        .PCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    enter9
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const1> ,\<const1> ,\<const0> ,\<const1> ,\<const0> ,\<const1> ,\<const0> ,\<const1> }),
        .ACIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ALUMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .B({\<const0> ,\pix_reg[1] }),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .C({VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2,VCC_2}),
        .CARRYCASCIN(\<const0> ),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CEA1(\<const0> ),
        .CEA2(bias),
        .CEAD(\<const0> ),
        .CEALUMODE(\<const0> ),
        .CEB1(\<const0> ),
        .CEB2(\<const0> ),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(\<const0> ),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(\<const0> ),
        .CEP(\<const0> ),
        .CLK(clk_IBUF_BUFG),
        .D({GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2,GND_2}),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .OPMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const0> ,\<const1> }),
        .P({enter9_n_58,enter9_n_59,enter9_n_60,enter9_n_61,enter9_n_62,enter9_n_63,enter9_n_64,enter9_n_65,enter9_n_66,enter9_n_67,enter9_n_68,enter9_n_69,enter9_n_70,enter9_n_71,enter9_n_72,enter9_n_73,enter9_n_74,enter9_n_75,enter9_n_76,enter9_n_77,enter9_n_78,enter9_n_79,enter9_n_80,enter9_n_81,enter9_n_82,enter9_n_83,enter9_n_84,enter9_n_85,enter9_n_86,enter9_n_87,enter9_n_88,enter9_n_89,enter9_n_90,enter9_n_91,enter9_n_92,enter9_n_93,enter9_n_94,enter9_n_95,enter9_n_96,enter9_n_97,enter9_n_98,enter9_n_99,enter9_n_100,enter9_n_101,enter9_n_102,enter9_n_103,enter9_n_104,enter9_n_105}),
        .PCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ));
  (* HLUTNM = "lutpair41" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[11]_i_13 
       (.I0(\enter_reg[15]_i_37_n_5 ),
        .I1(enter9_n_99),
        .I2(enter10_n_99),
        .O(\enter[11]_i_13_n_0 ));
  (* HLUTNM = "lutpair40" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[11]_i_14 
       (.I0(\enter_reg[15]_i_37_n_6 ),
        .I1(enter9_n_100),
        .I2(enter10_n_100),
        .O(\enter[11]_i_14_n_0 ));
  (* HLUTNM = "lutpair39" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[11]_i_15 
       (.I0(\enter_reg[15]_i_37_n_7 ),
        .I1(enter9_n_101),
        .I2(enter10_n_101),
        .O(\enter[11]_i_15_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[11]_i_16 
       (.I0(\enter_reg[11]_i_37_n_4 ),
        .I1(enter9_n_102),
        .I2(enter10_n_102),
        .O(\enter[11]_i_16_n_0 ));
  (* HLUTNM = "lutpair42" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[11]_i_17 
       (.I0(\enter_reg[15]_i_37_n_4 ),
        .I1(enter9_n_98),
        .I2(enter10_n_98),
        .I3(\enter[11]_i_13_n_0 ),
        .O(\enter[11]_i_17_n_0 ));
  (* HLUTNM = "lutpair41" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[11]_i_18 
       (.I0(\enter_reg[15]_i_37_n_5 ),
        .I1(enter9_n_99),
        .I2(enter10_n_99),
        .I3(\enter[11]_i_14_n_0 ),
        .O(\enter[11]_i_18_n_0 ));
  (* HLUTNM = "lutpair40" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[11]_i_19 
       (.I0(\enter_reg[15]_i_37_n_6 ),
        .I1(enter9_n_100),
        .I2(enter10_n_100),
        .I3(\enter[11]_i_15_n_0 ),
        .O(\enter[11]_i_19_n_0 ));
  (* HLUTNM = "lutpair63" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[11]_i_2 
       (.I0(\enter_reg[15]_i_10_n_5 ),
        .I1(\enter_reg[15]_i_11_n_5 ),
        .I2(\enter_reg[15]_i_12_n_5 ),
        .O(\enter[11]_i_2_n_0 ));
  (* HLUTNM = "lutpair39" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[11]_i_20 
       (.I0(\enter_reg[15]_i_37_n_7 ),
        .I1(enter9_n_101),
        .I2(enter10_n_101),
        .I3(\enter[11]_i_16_n_0 ),
        .O(\enter[11]_i_20_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[11]_i_21 
       (.I0(enter5_n_99),
        .I1(enter3_n_99),
        .I2(enter4_n_99),
        .O(\enter[11]_i_21_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[11]_i_22 
       (.I0(enter5_n_100),
        .I1(enter3_n_100),
        .I2(enter4_n_100),
        .O(\enter[11]_i_22_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[11]_i_23 
       (.I0(enter5_n_101),
        .I1(enter3_n_101),
        .I2(enter4_n_101),
        .O(\enter[11]_i_23_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[11]_i_24 
       (.I0(enter5_n_102),
        .I1(enter3_n_102),
        .I2(enter4_n_102),
        .O(\enter[11]_i_24_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[11]_i_25 
       (.I0(enter5_n_98),
        .I1(enter3_n_98),
        .I2(enter4_n_98),
        .I3(\enter[11]_i_21_n_0 ),
        .O(\enter[11]_i_25_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[11]_i_26 
       (.I0(enter5_n_99),
        .I1(enter3_n_99),
        .I2(enter4_n_99),
        .I3(\enter[11]_i_22_n_0 ),
        .O(\enter[11]_i_26_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[11]_i_27 
       (.I0(enter5_n_100),
        .I1(enter3_n_100),
        .I2(enter4_n_100),
        .I3(\enter[11]_i_23_n_0 ),
        .O(\enter[11]_i_27_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[11]_i_28 
       (.I0(enter5_n_101),
        .I1(enter3_n_101),
        .I2(enter4_n_101),
        .I3(\enter[11]_i_24_n_0 ),
        .O(\enter[11]_i_28_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[11]_i_29 
       (.I0(enter8_n_99),
        .I1(enter6_n_99),
        .I2(enter7_n_99),
        .O(\enter[11]_i_29_n_0 ));
  (* HLUTNM = "lutpair62" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[11]_i_3 
       (.I0(\enter_reg[15]_i_10_n_6 ),
        .I1(\enter_reg[15]_i_11_n_6 ),
        .I2(\enter_reg[15]_i_12_n_6 ),
        .O(\enter[11]_i_3_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[11]_i_30 
       (.I0(enter8_n_100),
        .I1(enter6_n_100),
        .I2(enter7_n_100),
        .O(\enter[11]_i_30_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[11]_i_31 
       (.I0(enter8_n_101),
        .I1(enter6_n_101),
        .I2(enter7_n_101),
        .O(\enter[11]_i_31_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[11]_i_32 
       (.I0(enter8_n_102),
        .I1(enter6_n_102),
        .I2(enter7_n_102),
        .O(\enter[11]_i_32_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[11]_i_33 
       (.I0(enter8_n_98),
        .I1(enter6_n_98),
        .I2(enter7_n_98),
        .I3(\enter[11]_i_29_n_0 ),
        .O(\enter[11]_i_33_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[11]_i_34 
       (.I0(enter8_n_99),
        .I1(enter6_n_99),
        .I2(enter7_n_99),
        .I3(\enter[11]_i_30_n_0 ),
        .O(\enter[11]_i_34_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[11]_i_35 
       (.I0(enter8_n_100),
        .I1(enter6_n_100),
        .I2(enter7_n_100),
        .I3(\enter[11]_i_31_n_0 ),
        .O(\enter[11]_i_35_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[11]_i_36 
       (.I0(enter8_n_101),
        .I1(enter6_n_101),
        .I2(enter7_n_101),
        .I3(\enter[11]_i_32_n_0 ),
        .O(\enter[11]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \enter[11]_i_38 
       (.I0(enter2_n_103),
        .I1(\enter_reg_n_0_[2] ),
        .O(\enter[11]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \enter[11]_i_39 
       (.I0(enter2_n_104),
        .I1(\enter_reg_n_0_[1] ),
        .O(\enter[11]_i_39_n_0 ));
  (* HLUTNM = "lutpair61" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[11]_i_4 
       (.I0(\enter_reg[15]_i_10_n_7 ),
        .I1(\enter_reg[15]_i_11_n_7 ),
        .I2(\enter_reg[15]_i_12_n_7 ),
        .O(\enter[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \enter[11]_i_40 
       (.I0(\enter_reg_n_0_[0] ),
        .I1(enter2_n_105),
        .O(\enter[11]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \enter[11]_i_41 
       (.I0(\enter_reg_n_0_[2] ),
        .I1(enter2_n_103),
        .I2(\enter_reg_n_0_[3] ),
        .I3(enter2_n_102),
        .O(\enter[11]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \enter[11]_i_42 
       (.I0(\enter_reg_n_0_[1] ),
        .I1(enter2_n_104),
        .I2(\enter_reg_n_0_[2] ),
        .I3(enter2_n_103),
        .O(\enter[11]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \enter[11]_i_43 
       (.I0(enter2_n_105),
        .I1(\enter_reg_n_0_[0] ),
        .I2(\enter_reg_n_0_[1] ),
        .I3(enter2_n_104),
        .O(\enter[11]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \enter[11]_i_44 
       (.I0(\enter_reg_n_0_[0] ),
        .I1(enter2_n_105),
        .O(\enter[11]_i_44_n_0 ));
  (* HLUTNM = "lutpair60" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[11]_i_5 
       (.I0(\enter_reg[11]_i_10_n_4 ),
        .I1(\enter_reg[11]_i_11_n_4 ),
        .I2(\enter_reg[11]_i_12_n_4 ),
        .O(\enter[11]_i_5_n_0 ));
  (* HLUTNM = "lutpair64" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[11]_i_6 
       (.I0(\enter_reg[15]_i_10_n_4 ),
        .I1(\enter_reg[15]_i_11_n_4 ),
        .I2(\enter_reg[15]_i_12_n_4 ),
        .I3(\enter[11]_i_2_n_0 ),
        .O(\enter[11]_i_6_n_0 ));
  (* HLUTNM = "lutpair63" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[11]_i_7 
       (.I0(\enter_reg[15]_i_10_n_5 ),
        .I1(\enter_reg[15]_i_11_n_5 ),
        .I2(\enter_reg[15]_i_12_n_5 ),
        .I3(\enter[11]_i_3_n_0 ),
        .O(\enter[11]_i_7_n_0 ));
  (* HLUTNM = "lutpair62" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[11]_i_8 
       (.I0(\enter_reg[15]_i_10_n_6 ),
        .I1(\enter_reg[15]_i_11_n_6 ),
        .I2(\enter_reg[15]_i_12_n_6 ),
        .I3(\enter[11]_i_4_n_0 ),
        .O(\enter[11]_i_8_n_0 ));
  (* HLUTNM = "lutpair61" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[11]_i_9 
       (.I0(\enter_reg[15]_i_10_n_7 ),
        .I1(\enter_reg[15]_i_11_n_7 ),
        .I2(\enter_reg[15]_i_12_n_7 ),
        .I3(\enter[11]_i_5_n_0 ),
        .O(\enter[11]_i_9_n_0 ));
  (* HLUTNM = "lutpair45" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[15]_i_13 
       (.I0(\enter_reg[19]_i_76_n_5 ),
        .I1(enter9_n_95),
        .I2(enter10_n_95),
        .O(\enter[15]_i_13_n_0 ));
  (* HLUTNM = "lutpair44" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[15]_i_14 
       (.I0(\enter_reg[19]_i_76_n_6 ),
        .I1(enter9_n_96),
        .I2(enter10_n_96),
        .O(\enter[15]_i_14_n_0 ));
  (* HLUTNM = "lutpair43" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[15]_i_15 
       (.I0(\enter_reg[19]_i_76_n_7 ),
        .I1(enter9_n_97),
        .I2(enter10_n_97),
        .O(\enter[15]_i_15_n_0 ));
  (* HLUTNM = "lutpair42" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[15]_i_16 
       (.I0(\enter_reg[15]_i_37_n_4 ),
        .I1(enter9_n_98),
        .I2(enter10_n_98),
        .O(\enter[15]_i_16_n_0 ));
  (* HLUTNM = "lutpair46" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[15]_i_17 
       (.I0(\enter_reg[19]_i_76_n_4 ),
        .I1(enter9_n_94),
        .I2(enter10_n_94),
        .I3(\enter[15]_i_13_n_0 ),
        .O(\enter[15]_i_17_n_0 ));
  (* HLUTNM = "lutpair45" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[15]_i_18 
       (.I0(\enter_reg[19]_i_76_n_5 ),
        .I1(enter9_n_95),
        .I2(enter10_n_95),
        .I3(\enter[15]_i_14_n_0 ),
        .O(\enter[15]_i_18_n_0 ));
  (* HLUTNM = "lutpair44" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[15]_i_19 
       (.I0(\enter_reg[19]_i_76_n_6 ),
        .I1(enter9_n_96),
        .I2(enter10_n_96),
        .I3(\enter[15]_i_15_n_0 ),
        .O(\enter[15]_i_19_n_0 ));
  (* HLUTNM = "lutpair67" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[15]_i_2 
       (.I0(\enter_reg[19]_i_13_n_5 ),
        .I1(\enter_reg[19]_i_14_n_5 ),
        .I2(\enter_reg[19]_i_15_n_5 ),
        .O(\enter[15]_i_2_n_0 ));
  (* HLUTNM = "lutpair43" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[15]_i_20 
       (.I0(\enter_reg[19]_i_76_n_7 ),
        .I1(enter9_n_97),
        .I2(enter10_n_97),
        .I3(\enter[15]_i_16_n_0 ),
        .O(\enter[15]_i_20_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[15]_i_21 
       (.I0(enter5_n_95),
        .I1(enter3_n_95),
        .I2(enter4_n_95),
        .O(\enter[15]_i_21_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[15]_i_22 
       (.I0(enter5_n_96),
        .I1(enter3_n_96),
        .I2(enter4_n_96),
        .O(\enter[15]_i_22_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[15]_i_23 
       (.I0(enter5_n_97),
        .I1(enter3_n_97),
        .I2(enter4_n_97),
        .O(\enter[15]_i_23_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[15]_i_24 
       (.I0(enter5_n_98),
        .I1(enter3_n_98),
        .I2(enter4_n_98),
        .O(\enter[15]_i_24_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[15]_i_25 
       (.I0(enter5_n_94),
        .I1(enter3_n_94),
        .I2(enter4_n_94),
        .I3(\enter[15]_i_21_n_0 ),
        .O(\enter[15]_i_25_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[15]_i_26 
       (.I0(enter5_n_95),
        .I1(enter3_n_95),
        .I2(enter4_n_95),
        .I3(\enter[15]_i_22_n_0 ),
        .O(\enter[15]_i_26_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[15]_i_27 
       (.I0(enter5_n_96),
        .I1(enter3_n_96),
        .I2(enter4_n_96),
        .I3(\enter[15]_i_23_n_0 ),
        .O(\enter[15]_i_27_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[15]_i_28 
       (.I0(enter5_n_97),
        .I1(enter3_n_97),
        .I2(enter4_n_97),
        .I3(\enter[15]_i_24_n_0 ),
        .O(\enter[15]_i_28_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[15]_i_29 
       (.I0(enter8_n_95),
        .I1(enter6_n_95),
        .I2(enter7_n_95),
        .O(\enter[15]_i_29_n_0 ));
  (* HLUTNM = "lutpair66" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[15]_i_3 
       (.I0(\enter_reg[19]_i_13_n_6 ),
        .I1(\enter_reg[19]_i_14_n_6 ),
        .I2(\enter_reg[19]_i_15_n_6 ),
        .O(\enter[15]_i_3_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[15]_i_30 
       (.I0(enter8_n_96),
        .I1(enter6_n_96),
        .I2(enter7_n_96),
        .O(\enter[15]_i_30_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[15]_i_31 
       (.I0(enter8_n_97),
        .I1(enter6_n_97),
        .I2(enter7_n_97),
        .O(\enter[15]_i_31_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[15]_i_32 
       (.I0(enter8_n_98),
        .I1(enter6_n_98),
        .I2(enter7_n_98),
        .O(\enter[15]_i_32_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[15]_i_33 
       (.I0(enter8_n_94),
        .I1(enter6_n_94),
        .I2(enter7_n_94),
        .I3(\enter[15]_i_29_n_0 ),
        .O(\enter[15]_i_33_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[15]_i_34 
       (.I0(enter8_n_95),
        .I1(enter6_n_95),
        .I2(enter7_n_95),
        .I3(\enter[15]_i_30_n_0 ),
        .O(\enter[15]_i_34_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[15]_i_35 
       (.I0(enter8_n_96),
        .I1(enter6_n_96),
        .I2(enter7_n_96),
        .I3(\enter[15]_i_31_n_0 ),
        .O(\enter[15]_i_35_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[15]_i_36 
       (.I0(enter8_n_97),
        .I1(enter6_n_97),
        .I2(enter7_n_97),
        .I3(\enter[15]_i_32_n_0 ),
        .O(\enter[15]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \enter[15]_i_38 
       (.I0(enter2_n_99),
        .I1(\enter_reg_n_0_[6] ),
        .O(\enter[15]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \enter[15]_i_39 
       (.I0(enter2_n_100),
        .I1(\enter_reg_n_0_[5] ),
        .O(\enter[15]_i_39_n_0 ));
  (* HLUTNM = "lutpair65" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[15]_i_4 
       (.I0(\enter_reg[19]_i_13_n_7 ),
        .I1(\enter_reg[19]_i_14_n_7 ),
        .I2(\enter_reg[19]_i_15_n_7 ),
        .O(\enter[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \enter[15]_i_40 
       (.I0(\enter_reg_n_0_[4] ),
        .I1(enter2_n_101),
        .O(\enter[15]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \enter[15]_i_41 
       (.I0(enter2_n_102),
        .I1(\enter_reg_n_0_[3] ),
        .O(\enter[15]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \enter[15]_i_42 
       (.I0(\enter_reg_n_0_[6] ),
        .I1(enter2_n_99),
        .I2(\enter_reg_n_0_[7] ),
        .I3(enter2_n_98),
        .O(\enter[15]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \enter[15]_i_43 
       (.I0(\enter_reg_n_0_[5] ),
        .I1(enter2_n_100),
        .I2(\enter_reg_n_0_[6] ),
        .I3(enter2_n_99),
        .O(\enter[15]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hE11E)) 
    \enter[15]_i_44 
       (.I0(enter2_n_101),
        .I1(\enter_reg_n_0_[4] ),
        .I2(\enter_reg_n_0_[5] ),
        .I3(enter2_n_100),
        .O(\enter[15]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \enter[15]_i_45 
       (.I0(\enter_reg_n_0_[3] ),
        .I1(enter2_n_102),
        .I2(\enter_reg_n_0_[4] ),
        .I3(enter2_n_101),
        .O(\enter[15]_i_45_n_0 ));
  (* HLUTNM = "lutpair64" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[15]_i_5 
       (.I0(\enter_reg[15]_i_10_n_4 ),
        .I1(\enter_reg[15]_i_11_n_4 ),
        .I2(\enter_reg[15]_i_12_n_4 ),
        .O(\enter[15]_i_5_n_0 ));
  (* HLUTNM = "lutpair68" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[15]_i_6 
       (.I0(\enter_reg[19]_i_13_n_4 ),
        .I1(\enter_reg[19]_i_14_n_4 ),
        .I2(\enter_reg[19]_i_15_n_4 ),
        .I3(\enter[15]_i_2_n_0 ),
        .O(\enter[15]_i_6_n_0 ));
  (* HLUTNM = "lutpair67" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[15]_i_7 
       (.I0(\enter_reg[19]_i_13_n_5 ),
        .I1(\enter_reg[19]_i_14_n_5 ),
        .I2(\enter_reg[19]_i_15_n_5 ),
        .I3(\enter[15]_i_3_n_0 ),
        .O(\enter[15]_i_7_n_0 ));
  (* HLUTNM = "lutpair66" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[15]_i_8 
       (.I0(\enter_reg[19]_i_13_n_6 ),
        .I1(\enter_reg[19]_i_14_n_6 ),
        .I2(\enter_reg[19]_i_15_n_6 ),
        .I3(\enter[15]_i_4_n_0 ),
        .O(\enter[15]_i_8_n_0 ));
  (* HLUTNM = "lutpair65" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[15]_i_9 
       (.I0(\enter_reg[19]_i_13_n_7 ),
        .I1(\enter_reg[19]_i_14_n_7 ),
        .I2(\enter_reg[19]_i_15_n_7 ),
        .I3(\enter[15]_i_5_n_0 ),
        .O(\enter[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \enter[19]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(csel_reg),
        .I3(state[2]),
        .O(busy_reg0));
  LUT3 #(
    .INIT(8'h96)) 
    \enter[19]_i_100 
       (.I0(enter2_n_86),
        .I1(\pix_reg[8][-_n_0_1111111109] ),
        .I2(\enter_reg_n_0_[19] ),
        .O(\enter[19]_i_100_n_0 ));
  (* HLUTNM = "lutpair52" *) 
  LUT4 #(
    .INIT(16'hF660)) 
    \enter[19]_i_16 
       (.I0(\pix_reg[1][-_n_0_1111111111] ),
        .I1(enter9_n_88),
        .I2(\enter_reg[19]_i_61_n_6 ),
        .I3(enter10_n_88),
        .O(\enter[19]_i_16_n_0 ));
  (* HLUTNM = "lutpair51" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_17 
       (.I0(\enter_reg[19]_i_61_n_7 ),
        .I1(enter9_n_89),
        .I2(enter10_n_89),
        .O(\enter[19]_i_17_n_0 ));
  (* HLUTNM = "lutpair50" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_18 
       (.I0(\enter_reg[19]_i_62_n_4 ),
        .I1(enter9_n_90),
        .I2(enter10_n_90),
        .O(\enter[19]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h41D7BE28BE2841D7)) 
    \enter[19]_i_19 
       (.I0(\enter[19]_i_63_n_0 ),
        .I1(\pix_reg[0][-_n_0_1111111111] ),
        .I2(enter10_n_87),
        .I3(\enter_reg[19]_i_61_n_5 ),
        .I4(\enter[19]_i_64_n_0 ),
        .I5(\enter[19]_i_65_n_0 ),
        .O(\enter[19]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \enter[19]_i_20 
       (.I0(\enter[19]_i_16_n_0 ),
        .I1(\enter[19]_i_63_n_0 ),
        .I2(\enter_reg[19]_i_61_n_5 ),
        .I3(enter10_n_87),
        .I4(\pix_reg[0][-_n_0_1111111111] ),
        .O(\enter[19]_i_20_n_0 ));
  (* HLUTNM = "lutpair52" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \enter[19]_i_21 
       (.I0(\pix_reg[1][-_n_0_1111111111] ),
        .I1(enter9_n_88),
        .I2(\enter_reg[19]_i_61_n_6 ),
        .I3(enter10_n_88),
        .I4(\enter[19]_i_17_n_0 ),
        .O(\enter[19]_i_21_n_0 ));
  (* HLUTNM = "lutpair51" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_22 
       (.I0(\enter_reg[19]_i_61_n_7 ),
        .I1(enter9_n_89),
        .I2(enter10_n_89),
        .I3(\enter[19]_i_18_n_0 ),
        .O(\enter[19]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h8EE8)) 
    \enter[19]_i_23 
       (.I0(enter3_n_88),
        .I1(enter5_n_88),
        .I2(enter4_n_88),
        .I3(\pix_reg[6][-_n_0_1111111111] ),
        .O(\enter[19]_i_23_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_24 
       (.I0(enter5_n_89),
        .I1(enter3_n_89),
        .I2(enter4_n_89),
        .O(\enter[19]_i_24_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_25 
       (.I0(enter5_n_90),
        .I1(enter3_n_90),
        .I2(enter4_n_90),
        .O(\enter[19]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \enter[19]_i_26 
       (.I0(enter3_n_87),
        .I1(\enter[19]_i_66_n_0 ),
        .I2(enter5_n_87),
        .I3(\enter[19]_i_67_n_0 ),
        .I4(\enter[19]_i_68_n_0 ),
        .I5(\enter[19]_i_69_n_0 ),
        .O(\enter[19]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    \enter[19]_i_27 
       (.I0(\enter[19]_i_70_n_0 ),
        .I1(enter5_n_88),
        .I2(enter3_n_88),
        .I3(\enter[19]_i_66_n_0 ),
        .I4(enter5_n_87),
        .I5(enter3_n_87),
        .O(\enter[19]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \enter[19]_i_28 
       (.I0(\enter[19]_i_24_n_0 ),
        .I1(enter5_n_88),
        .I2(enter4_n_88),
        .I3(\pix_reg[6][-_n_0_1111111111] ),
        .I4(enter3_n_88),
        .O(\enter[19]_i_28_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_29 
       (.I0(enter5_n_89),
        .I1(enter3_n_89),
        .I2(enter4_n_89),
        .I3(\enter[19]_i_25_n_0 ),
        .O(\enter[19]_i_29_n_0 ));
  (* HLUTNM = "lutpair70" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_3 
       (.I0(\enter_reg[19]_i_10_n_6 ),
        .I1(\enter_reg[19]_i_11_n_6 ),
        .I2(\enter_reg[19]_i_12_n_6 ),
        .O(\enter[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h60F6F660)) 
    \enter[19]_i_30 
       (.I0(\pix_reg[4] [17]),
        .I1(enter6_n_88),
        .I2(enter7_n_88),
        .I3(enter8_n_88),
        .I4(\pix_reg[2][-_n_0_1111111111] ),
        .O(\enter[19]_i_30_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_31 
       (.I0(enter8_n_89),
        .I1(enter6_n_89),
        .I2(enter7_n_89),
        .O(\enter[19]_i_31_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_32 
       (.I0(enter8_n_90),
        .I1(enter6_n_90),
        .I2(enter7_n_90),
        .O(\enter[19]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \enter[19]_i_33 
       (.I0(\enter[19]_i_71_n_0 ),
        .I1(\enter[19]_i_72_n_0 ),
        .I2(\enter[19]_i_73_n_0 ),
        .I3(\enter[19]_i_74_n_0 ),
        .I4(enter7_n_87),
        .I5(\enter[19]_i_75_n_0 ),
        .O(\enter[19]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_34 
       (.I0(\enter[19]_i_30_n_0 ),
        .I1(\enter[19]_i_75_n_0 ),
        .I2(enter7_n_87),
        .I3(\enter[19]_i_74_n_0 ),
        .O(\enter[19]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \enter[19]_i_35 
       (.I0(\enter[19]_i_31_n_0 ),
        .I1(\pix_reg[4] [17]),
        .I2(enter6_n_88),
        .I3(enter7_n_88),
        .I4(enter8_n_88),
        .I5(\pix_reg[2][-_n_0_1111111111] ),
        .O(\enter[19]_i_35_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_36 
       (.I0(enter8_n_89),
        .I1(enter6_n_89),
        .I2(enter7_n_89),
        .I3(\enter[19]_i_32_n_0 ),
        .O(\enter[19]_i_36_n_0 ));
  (* HLUTNM = "lutpair49" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_37 
       (.I0(\enter_reg[19]_i_62_n_5 ),
        .I1(enter9_n_91),
        .I2(enter10_n_91),
        .O(\enter[19]_i_37_n_0 ));
  (* HLUTNM = "lutpair48" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_38 
       (.I0(\enter_reg[19]_i_62_n_6 ),
        .I1(enter9_n_92),
        .I2(enter10_n_92),
        .O(\enter[19]_i_38_n_0 ));
  (* HLUTNM = "lutpair47" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_39 
       (.I0(\enter_reg[19]_i_62_n_7 ),
        .I1(enter9_n_93),
        .I2(enter10_n_93),
        .O(\enter[19]_i_39_n_0 ));
  (* HLUTNM = "lutpair69" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_4 
       (.I0(\enter_reg[19]_i_10_n_7 ),
        .I1(\enter_reg[19]_i_11_n_7 ),
        .I2(\enter_reg[19]_i_12_n_7 ),
        .O(\enter[19]_i_4_n_0 ));
  (* HLUTNM = "lutpair46" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_40 
       (.I0(\enter_reg[19]_i_76_n_4 ),
        .I1(enter9_n_94),
        .I2(enter10_n_94),
        .O(\enter[19]_i_40_n_0 ));
  (* HLUTNM = "lutpair50" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_41 
       (.I0(\enter_reg[19]_i_62_n_4 ),
        .I1(enter9_n_90),
        .I2(enter10_n_90),
        .I3(\enter[19]_i_37_n_0 ),
        .O(\enter[19]_i_41_n_0 ));
  (* HLUTNM = "lutpair49" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_42 
       (.I0(\enter_reg[19]_i_62_n_5 ),
        .I1(enter9_n_91),
        .I2(enter10_n_91),
        .I3(\enter[19]_i_38_n_0 ),
        .O(\enter[19]_i_42_n_0 ));
  (* HLUTNM = "lutpair48" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_43 
       (.I0(\enter_reg[19]_i_62_n_6 ),
        .I1(enter9_n_92),
        .I2(enter10_n_92),
        .I3(\enter[19]_i_39_n_0 ),
        .O(\enter[19]_i_43_n_0 ));
  (* HLUTNM = "lutpair47" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_44 
       (.I0(\enter_reg[19]_i_62_n_7 ),
        .I1(enter9_n_93),
        .I2(enter10_n_93),
        .I3(\enter[19]_i_40_n_0 ),
        .O(\enter[19]_i_44_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_45 
       (.I0(enter5_n_91),
        .I1(enter3_n_91),
        .I2(enter4_n_91),
        .O(\enter[19]_i_45_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_46 
       (.I0(enter5_n_92),
        .I1(enter3_n_92),
        .I2(enter4_n_92),
        .O(\enter[19]_i_46_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_47 
       (.I0(enter5_n_93),
        .I1(enter3_n_93),
        .I2(enter4_n_93),
        .O(\enter[19]_i_47_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_48 
       (.I0(enter5_n_94),
        .I1(enter3_n_94),
        .I2(enter4_n_94),
        .O(\enter[19]_i_48_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_49 
       (.I0(enter5_n_90),
        .I1(enter3_n_90),
        .I2(enter4_n_90),
        .I3(\enter[19]_i_45_n_0 ),
        .O(\enter[19]_i_49_n_0 ));
  (* HLUTNM = "lutpair68" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_5 
       (.I0(\enter_reg[19]_i_13_n_4 ),
        .I1(\enter_reg[19]_i_14_n_4 ),
        .I2(\enter_reg[19]_i_15_n_4 ),
        .O(\enter[19]_i_5_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_50 
       (.I0(enter5_n_91),
        .I1(enter3_n_91),
        .I2(enter4_n_91),
        .I3(\enter[19]_i_46_n_0 ),
        .O(\enter[19]_i_50_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_51 
       (.I0(enter5_n_92),
        .I1(enter3_n_92),
        .I2(enter4_n_92),
        .I3(\enter[19]_i_47_n_0 ),
        .O(\enter[19]_i_51_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_52 
       (.I0(enter5_n_93),
        .I1(enter3_n_93),
        .I2(enter4_n_93),
        .I3(\enter[19]_i_48_n_0 ),
        .O(\enter[19]_i_52_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_53 
       (.I0(enter8_n_91),
        .I1(enter6_n_91),
        .I2(enter7_n_91),
        .O(\enter[19]_i_53_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_54 
       (.I0(enter8_n_92),
        .I1(enter6_n_92),
        .I2(enter7_n_92),
        .O(\enter[19]_i_54_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_55 
       (.I0(enter8_n_93),
        .I1(enter6_n_93),
        .I2(enter7_n_93),
        .O(\enter[19]_i_55_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[19]_i_56 
       (.I0(enter8_n_94),
        .I1(enter6_n_94),
        .I2(enter7_n_94),
        .O(\enter[19]_i_56_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_57 
       (.I0(enter8_n_90),
        .I1(enter6_n_90),
        .I2(enter7_n_90),
        .I3(\enter[19]_i_53_n_0 ),
        .O(\enter[19]_i_57_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_58 
       (.I0(enter8_n_91),
        .I1(enter6_n_91),
        .I2(enter7_n_91),
        .I3(\enter[19]_i_54_n_0 ),
        .O(\enter[19]_i_58_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_59 
       (.I0(enter8_n_92),
        .I1(enter6_n_92),
        .I2(enter7_n_92),
        .I3(\enter[19]_i_55_n_0 ),
        .O(\enter[19]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \enter[19]_i_6 
       (.I0(\enter_reg[19]_i_12_n_5 ),
        .I1(\enter_reg[19]_i_11_n_5 ),
        .I2(\enter_reg[19]_i_10_n_5 ),
        .I3(\enter_reg[19]_i_12_n_4 ),
        .I4(\enter_reg[19]_i_11_n_4 ),
        .I5(\enter_reg[19]_i_10_n_4 ),
        .O(\enter[19]_i_6_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_60 
       (.I0(enter8_n_93),
        .I1(enter6_n_93),
        .I2(enter7_n_93),
        .I3(\enter[19]_i_56_n_0 ),
        .O(\enter[19]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \enter[19]_i_63 
       (.I0(enter9_n_88),
        .I1(\pix_reg[1][-_n_0_1111111111] ),
        .I2(enter9_n_87),
        .I3(\pix_reg[1][-_n_0_1111111110] ),
        .O(\enter[19]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hE83F17C017C0E83F)) 
    \enter[19]_i_64 
       (.I0(enter9_n_88),
        .I1(enter9_n_87),
        .I2(\pix_reg[1][-_n_0_1111111110] ),
        .I3(\pix_reg[1][-_n_0_1111111111] ),
        .I4(\pix_reg[1][-_n_0_1111111109] ),
        .I5(enter9_n_86),
        .O(\enter[19]_i_64_n_0 ));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    \enter[19]_i_65 
       (.I0(\pix_reg[0][-_n_0_1111111111] ),
        .I1(enter10_n_87),
        .I2(enter10_n_86),
        .I3(\pix_reg[0][-_n_0_1111111110] ),
        .I4(\enter_reg[19]_i_61_n_4 ),
        .O(\enter[19]_i_65_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hB44B)) 
    \enter[19]_i_66 
       (.I0(enter4_n_88),
        .I1(\pix_reg[6][-_n_0_1111111111] ),
        .I2(\pix_reg[6][-_n_0_1111111110] ),
        .I3(enter4_n_87),
        .O(\enter[19]_i_66_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hB828)) 
    \enter[19]_i_67 
       (.I0(enter4_n_87),
        .I1(\pix_reg[6][-_n_0_1111111110] ),
        .I2(\pix_reg[6][-_n_0_1111111111] ),
        .I3(enter4_n_88),
        .O(\enter[19]_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_68 
       (.I0(enter3_n_86),
        .I1(\pix_reg[7][-_n_0_1111111111] ),
        .I2(enter4_n_86),
        .I3(\pix_reg[6][-_n_0_1111111109] ),
        .O(\enter[19]_i_68_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h1EE1)) 
    \enter[19]_i_69 
       (.I0(\pix_reg[6][-_n_0_1111111110] ),
        .I1(\pix_reg[6][-_n_0_1111111111] ),
        .I2(enter5_n_86),
        .I3(\pix_reg[5][-_n_0_1111111111] ),
        .O(\enter[19]_i_69_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_7 
       (.I0(\enter[19]_i_3_n_0 ),
        .I1(\enter_reg[19]_i_10_n_5 ),
        .I2(\enter_reg[19]_i_11_n_5 ),
        .I3(\enter_reg[19]_i_12_n_5 ),
        .O(\enter[19]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \enter[19]_i_70 
       (.I0(\pix_reg[6][-_n_0_1111111111] ),
        .I1(enter4_n_88),
        .O(\enter[19]_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hB828)) 
    \enter[19]_i_71 
       (.I0(enter8_n_87),
        .I1(\pix_reg[2][-_n_0_1111111110] ),
        .I2(\pix_reg[2][-_n_0_1111111111] ),
        .I3(enter8_n_88),
        .O(\enter[19]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \enter[19]_i_72 
       (.I0(enter6_n_88),
        .I1(\pix_reg[4] [17]),
        .I2(enter6_n_87),
        .I3(\pix_reg[4] [18]),
        .I4(enter6_n_86),
        .I5(\pix_reg[4] [19]),
        .O(\enter[19]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h6996699696696996)) 
    \enter[19]_i_73 
       (.I0(enter7_n_86),
        .I1(\pix_reg[3][-_n_0_1111111111] ),
        .I2(\pix_reg[2][-_n_0_1111111109] ),
        .I3(enter8_n_86),
        .I4(\pix_reg[2][-_n_0_1111111110] ),
        .I5(\pix_reg[2][-_n_0_1111111111] ),
        .O(\enter[19]_i_73_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \enter[19]_i_74 
       (.I0(enter8_n_88),
        .I1(\pix_reg[2][-_n_0_1111111111] ),
        .I2(\pix_reg[2][-_n_0_1111111110] ),
        .I3(enter8_n_87),
        .O(\enter[19]_i_74_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \enter[19]_i_75 
       (.I0(enter6_n_88),
        .I1(\pix_reg[4] [17]),
        .I2(enter6_n_87),
        .I3(\pix_reg[4] [18]),
        .O(\enter[19]_i_75_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \enter[19]_i_77 
       (.I0(\enter_reg_n_0_[17] ),
        .I1(enter2_n_88),
        .I2(\pix_reg[8][-_n_0_1111111111] ),
        .O(\enter[19]_i_77_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \enter[19]_i_78 
       (.I0(enter2_n_89),
        .I1(\enter_reg_n_0_[16] ),
        .O(\enter[19]_i_78_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \enter[19]_i_79 
       (.I0(enter2_n_90),
        .I1(\enter_reg_n_0_[15] ),
        .O(\enter[19]_i_79_n_0 ));
  (* HLUTNM = "lutpair70" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_8 
       (.I0(\enter_reg[19]_i_10_n_6 ),
        .I1(\enter_reg[19]_i_11_n_6 ),
        .I2(\enter_reg[19]_i_12_n_6 ),
        .I3(\enter[19]_i_4_n_0 ),
        .O(\enter[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9333366636666CCC)) 
    \enter[19]_i_80 
       (.I0(\enter_reg_n_0_[18] ),
        .I1(\enter[19]_i_100_n_0 ),
        .I2(\pix_reg[8][-_n_0_1111111111] ),
        .I3(enter2_n_88),
        .I4(enter2_n_87),
        .I5(\pix_reg[8][-_n_0_1111111110] ),
        .O(\enter[19]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h3C6969C3C396963C)) 
    \enter[19]_i_81 
       (.I0(\enter_reg_n_0_[17] ),
        .I1(enter2_n_87),
        .I2(\pix_reg[8][-_n_0_1111111110] ),
        .I3(\pix_reg[8][-_n_0_1111111111] ),
        .I4(enter2_n_88),
        .I5(\enter_reg_n_0_[18] ),
        .O(\enter[19]_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_82 
       (.I0(\enter[19]_i_78_n_0 ),
        .I1(\pix_reg[8][-_n_0_1111111111] ),
        .I2(enter2_n_88),
        .I3(\enter_reg_n_0_[17] ),
        .O(\enter[19]_i_82_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \enter[19]_i_83 
       (.I0(enter2_n_89),
        .I1(\enter_reg_n_0_[16] ),
        .I2(\enter_reg_n_0_[15] ),
        .I3(enter2_n_90),
        .O(\enter[19]_i_83_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \enter[19]_i_84 
       (.I0(enter2_n_91),
        .I1(\enter_reg_n_0_[14] ),
        .O(\enter[19]_i_84_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \enter[19]_i_85 
       (.I0(enter2_n_92),
        .I1(\enter_reg_n_0_[13] ),
        .O(\enter[19]_i_85_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \enter[19]_i_86 
       (.I0(\enter_reg_n_0_[12] ),
        .I1(enter2_n_93),
        .O(\enter[19]_i_86_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \enter[19]_i_87 
       (.I0(enter2_n_94),
        .I1(\enter_reg_n_0_[11] ),
        .O(\enter[19]_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \enter[19]_i_88 
       (.I0(\enter_reg_n_0_[14] ),
        .I1(enter2_n_91),
        .I2(\enter_reg_n_0_[15] ),
        .I3(enter2_n_90),
        .O(\enter[19]_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \enter[19]_i_89 
       (.I0(\enter_reg_n_0_[13] ),
        .I1(enter2_n_92),
        .I2(\enter_reg_n_0_[14] ),
        .I3(enter2_n_91),
        .O(\enter[19]_i_89_n_0 ));
  (* HLUTNM = "lutpair69" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[19]_i_9 
       (.I0(\enter_reg[19]_i_10_n_7 ),
        .I1(\enter_reg[19]_i_11_n_7 ),
        .I2(\enter_reg[19]_i_12_n_7 ),
        .I3(\enter[19]_i_5_n_0 ),
        .O(\enter[19]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE11E)) 
    \enter[19]_i_90 
       (.I0(enter2_n_93),
        .I1(\enter_reg_n_0_[12] ),
        .I2(\enter_reg_n_0_[13] ),
        .I3(enter2_n_92),
        .O(\enter[19]_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \enter[19]_i_91 
       (.I0(\enter_reg_n_0_[11] ),
        .I1(enter2_n_94),
        .I2(\enter_reg_n_0_[12] ),
        .I3(enter2_n_93),
        .O(\enter[19]_i_91_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \enter[19]_i_92 
       (.I0(enter2_n_95),
        .I1(\enter_reg_n_0_[10] ),
        .O(\enter[19]_i_92_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \enter[19]_i_93 
       (.I0(\enter_reg_n_0_[9] ),
        .I1(enter2_n_96),
        .O(\enter[19]_i_93_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \enter[19]_i_94 
       (.I0(\enter_reg_n_0_[8] ),
        .I1(enter2_n_97),
        .O(\enter[19]_i_94_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \enter[19]_i_95 
       (.I0(enter2_n_98),
        .I1(\enter_reg_n_0_[7] ),
        .O(\enter[19]_i_95_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \enter[19]_i_96 
       (.I0(\enter_reg_n_0_[10] ),
        .I1(enter2_n_95),
        .I2(\enter_reg_n_0_[11] ),
        .I3(enter2_n_94),
        .O(\enter[19]_i_96_n_0 ));
  LUT4 #(
    .INIT(16'hE11E)) 
    \enter[19]_i_97 
       (.I0(enter2_n_96),
        .I1(\enter_reg_n_0_[9] ),
        .I2(\enter_reg_n_0_[10] ),
        .I3(enter2_n_95),
        .O(\enter[19]_i_97_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \enter[19]_i_98 
       (.I0(enter2_n_97),
        .I1(\enter_reg_n_0_[8] ),
        .I2(\enter_reg_n_0_[9] ),
        .I3(enter2_n_96),
        .O(\enter[19]_i_98_n_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \enter[19]_i_99 
       (.I0(\enter_reg_n_0_[7] ),
        .I1(enter2_n_98),
        .I2(\enter_reg_n_0_[8] ),
        .I3(enter2_n_97),
        .O(\enter[19]_i_99_n_0 ));
  (* HLUTNM = "lutpair55" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[3]_i_2 
       (.I0(\enter_reg[7]_i_10_n_5 ),
        .I1(\enter_reg[7]_i_11_n_5 ),
        .I2(\enter_reg[7]_i_12_n_5 ),
        .O(\enter[3]_i_2_n_0 ));
  (* HLUTNM = "lutpair54" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[3]_i_3 
       (.I0(\enter_reg[7]_i_10_n_6 ),
        .I1(\enter_reg[7]_i_11_n_6 ),
        .I2(\enter_reg[7]_i_12_n_6 ),
        .O(\enter[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair53" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[3]_i_4 
       (.I0(\enter_reg[7]_i_11_n_7 ),
        .I1(\enter_reg[7]_i_10_n_7 ),
        .I2(\enter_reg[7]_i_12_n_7 ),
        .O(\enter[3]_i_4_n_0 ));
  (* HLUTNM = "lutpair56" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[3]_i_5 
       (.I0(\enter_reg[7]_i_10_n_4 ),
        .I1(\enter_reg[7]_i_11_n_4 ),
        .I2(\enter_reg[7]_i_12_n_4 ),
        .I3(\enter[3]_i_2_n_0 ),
        .O(\enter[3]_i_5_n_0 ));
  (* HLUTNM = "lutpair55" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[3]_i_6 
       (.I0(\enter_reg[7]_i_10_n_5 ),
        .I1(\enter_reg[7]_i_11_n_5 ),
        .I2(\enter_reg[7]_i_12_n_5 ),
        .I3(\enter[3]_i_3_n_0 ),
        .O(\enter[3]_i_6_n_0 ));
  (* HLUTNM = "lutpair54" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[3]_i_7 
       (.I0(\enter_reg[7]_i_10_n_6 ),
        .I1(\enter_reg[7]_i_11_n_6 ),
        .I2(\enter_reg[7]_i_12_n_6 ),
        .I3(\enter[3]_i_4_n_0 ),
        .O(\enter[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair53" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \enter[3]_i_8 
       (.I0(\enter_reg[7]_i_11_n_7 ),
        .I1(\enter_reg[7]_i_10_n_7 ),
        .I2(\enter_reg[7]_i_12_n_7 ),
        .O(\enter[3]_i_8_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[7]_i_13 
       (.I0(\enter_reg[11]_i_37_n_5 ),
        .I1(enter9_n_103),
        .I2(enter10_n_103),
        .O(\enter[7]_i_13_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[7]_i_14 
       (.I0(\enter_reg[11]_i_37_n_6 ),
        .I1(enter9_n_104),
        .I2(enter10_n_104),
        .O(\enter[7]_i_14_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[7]_i_15 
       (.I0(enter9_n_105),
        .I1(\enter_reg[11]_i_37_n_7 ),
        .I2(enter10_n_105),
        .O(\enter[7]_i_15_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[7]_i_16 
       (.I0(\enter_reg[11]_i_37_n_4 ),
        .I1(enter9_n_102),
        .I2(enter10_n_102),
        .I3(\enter[7]_i_13_n_0 ),
        .O(\enter[7]_i_16_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[7]_i_17 
       (.I0(\enter_reg[11]_i_37_n_5 ),
        .I1(enter9_n_103),
        .I2(enter10_n_103),
        .I3(\enter[7]_i_14_n_0 ),
        .O(\enter[7]_i_17_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[7]_i_18 
       (.I0(\enter_reg[11]_i_37_n_6 ),
        .I1(enter9_n_104),
        .I2(enter10_n_104),
        .I3(\enter[7]_i_15_n_0 ),
        .O(\enter[7]_i_18_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \enter[7]_i_19 
       (.I0(enter9_n_105),
        .I1(\enter_reg[11]_i_37_n_7 ),
        .I2(enter10_n_105),
        .O(\enter[7]_i_19_n_0 ));
  (* HLUTNM = "lutpair59" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[7]_i_2 
       (.I0(\enter_reg[11]_i_10_n_5 ),
        .I1(\enter_reg[11]_i_11_n_5 ),
        .I2(\enter_reg[11]_i_12_n_5 ),
        .O(\enter[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[7]_i_20 
       (.I0(enter5_n_103),
        .I1(enter3_n_103),
        .I2(enter4_n_103),
        .O(\enter[7]_i_20_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[7]_i_21 
       (.I0(enter5_n_104),
        .I1(enter3_n_104),
        .I2(enter4_n_104),
        .O(\enter[7]_i_21_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[7]_i_22 
       (.I0(enter3_n_105),
        .I1(enter5_n_105),
        .I2(enter4_n_105),
        .O(\enter[7]_i_22_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[7]_i_23 
       (.I0(enter5_n_102),
        .I1(enter3_n_102),
        .I2(enter4_n_102),
        .I3(\enter[7]_i_20_n_0 ),
        .O(\enter[7]_i_23_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[7]_i_24 
       (.I0(enter5_n_103),
        .I1(enter3_n_103),
        .I2(enter4_n_103),
        .I3(\enter[7]_i_21_n_0 ),
        .O(\enter[7]_i_24_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[7]_i_25 
       (.I0(enter5_n_104),
        .I1(enter3_n_104),
        .I2(enter4_n_104),
        .I3(\enter[7]_i_22_n_0 ),
        .O(\enter[7]_i_25_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \enter[7]_i_26 
       (.I0(enter3_n_105),
        .I1(enter5_n_105),
        .I2(enter4_n_105),
        .O(\enter[7]_i_26_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[7]_i_27 
       (.I0(enter8_n_103),
        .I1(enter6_n_103),
        .I2(enter7_n_103),
        .O(\enter[7]_i_27_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[7]_i_28 
       (.I0(enter8_n_104),
        .I1(enter6_n_104),
        .I2(enter7_n_104),
        .O(\enter[7]_i_28_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[7]_i_29 
       (.I0(enter6_n_105),
        .I1(enter8_n_105),
        .I2(enter7_n_105),
        .O(\enter[7]_i_29_n_0 ));
  (* HLUTNM = "lutpair58" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[7]_i_3 
       (.I0(\enter_reg[11]_i_10_n_6 ),
        .I1(\enter_reg[11]_i_11_n_6 ),
        .I2(\enter_reg[11]_i_12_n_6 ),
        .O(\enter[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[7]_i_30 
       (.I0(enter8_n_102),
        .I1(enter6_n_102),
        .I2(enter7_n_102),
        .I3(\enter[7]_i_27_n_0 ),
        .O(\enter[7]_i_30_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[7]_i_31 
       (.I0(enter8_n_103),
        .I1(enter6_n_103),
        .I2(enter7_n_103),
        .I3(\enter[7]_i_28_n_0 ),
        .O(\enter[7]_i_31_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[7]_i_32 
       (.I0(enter8_n_104),
        .I1(enter6_n_104),
        .I2(enter7_n_104),
        .I3(\enter[7]_i_29_n_0 ),
        .O(\enter[7]_i_32_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \enter[7]_i_33 
       (.I0(enter6_n_105),
        .I1(enter8_n_105),
        .I2(enter7_n_105),
        .O(\enter[7]_i_33_n_0 ));
  (* HLUTNM = "lutpair57" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[7]_i_4 
       (.I0(\enter_reg[11]_i_10_n_7 ),
        .I1(\enter_reg[11]_i_11_n_7 ),
        .I2(\enter_reg[11]_i_12_n_7 ),
        .O(\enter[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair56" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \enter[7]_i_5 
       (.I0(\enter_reg[7]_i_10_n_4 ),
        .I1(\enter_reg[7]_i_11_n_4 ),
        .I2(\enter_reg[7]_i_12_n_4 ),
        .O(\enter[7]_i_5_n_0 ));
  (* HLUTNM = "lutpair60" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[7]_i_6 
       (.I0(\enter_reg[11]_i_10_n_4 ),
        .I1(\enter_reg[11]_i_11_n_4 ),
        .I2(\enter_reg[11]_i_12_n_4 ),
        .I3(\enter[7]_i_2_n_0 ),
        .O(\enter[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair59" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[7]_i_7 
       (.I0(\enter_reg[11]_i_10_n_5 ),
        .I1(\enter_reg[11]_i_11_n_5 ),
        .I2(\enter_reg[11]_i_12_n_5 ),
        .I3(\enter[7]_i_3_n_0 ),
        .O(\enter[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair58" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[7]_i_8 
       (.I0(\enter_reg[11]_i_10_n_6 ),
        .I1(\enter_reg[11]_i_11_n_6 ),
        .I2(\enter_reg[11]_i_12_n_6 ),
        .I3(\enter[7]_i_4_n_0 ),
        .O(\enter[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair57" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \enter[7]_i_9 
       (.I0(\enter_reg[11]_i_10_n_7 ),
        .I1(\enter_reg[11]_i_11_n_7 ),
        .I2(\enter_reg[11]_i_12_n_7 ),
        .I3(\enter[7]_i_5_n_0 ),
        .O(\enter[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[0]),
        .Q(\enter_reg_n_0_[0] ),
        .R(busy_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[10]),
        .Q(\enter_reg_n_0_[10] ),
        .R(busy_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[11]),
        .Q(\enter_reg_n_0_[11] ),
        .R(busy_reg0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[11]_i_1 
       (.CI(\enter_reg[7]_i_1_n_0 ),
        .CO({\enter_reg[11]_i_1_n_0 ,\enter_reg[11]_i_1_n_1 ,\enter_reg[11]_i_1_n_2 ,\enter_reg[11]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[11]_i_2_n_0 ,\enter[11]_i_3_n_0 ,\enter[11]_i_4_n_0 ,\enter[11]_i_5_n_0 }),
        .O(in24[11:8]),
        .S({\enter[11]_i_6_n_0 ,\enter[11]_i_7_n_0 ,\enter[11]_i_8_n_0 ,\enter[11]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[11]_i_10 
       (.CI(\enter_reg[7]_i_10_n_0 ),
        .CO({\enter_reg[11]_i_10_n_0 ,\enter_reg[11]_i_10_n_1 ,\enter_reg[11]_i_10_n_2 ,\enter_reg[11]_i_10_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[11]_i_13_n_0 ,\enter[11]_i_14_n_0 ,\enter[11]_i_15_n_0 ,\enter[11]_i_16_n_0 }),
        .O({\enter_reg[11]_i_10_n_4 ,\enter_reg[11]_i_10_n_5 ,\enter_reg[11]_i_10_n_6 ,\enter_reg[11]_i_10_n_7 }),
        .S({\enter[11]_i_17_n_0 ,\enter[11]_i_18_n_0 ,\enter[11]_i_19_n_0 ,\enter[11]_i_20_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[11]_i_11 
       (.CI(\enter_reg[7]_i_11_n_0 ),
        .CO({\enter_reg[11]_i_11_n_0 ,\enter_reg[11]_i_11_n_1 ,\enter_reg[11]_i_11_n_2 ,\enter_reg[11]_i_11_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[11]_i_21_n_0 ,\enter[11]_i_22_n_0 ,\enter[11]_i_23_n_0 ,\enter[11]_i_24_n_0 }),
        .O({\enter_reg[11]_i_11_n_4 ,\enter_reg[11]_i_11_n_5 ,\enter_reg[11]_i_11_n_6 ,\enter_reg[11]_i_11_n_7 }),
        .S({\enter[11]_i_25_n_0 ,\enter[11]_i_26_n_0 ,\enter[11]_i_27_n_0 ,\enter[11]_i_28_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[11]_i_12 
       (.CI(\enter_reg[7]_i_12_n_0 ),
        .CO({\enter_reg[11]_i_12_n_0 ,\enter_reg[11]_i_12_n_1 ,\enter_reg[11]_i_12_n_2 ,\enter_reg[11]_i_12_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[11]_i_29_n_0 ,\enter[11]_i_30_n_0 ,\enter[11]_i_31_n_0 ,\enter[11]_i_32_n_0 }),
        .O({\enter_reg[11]_i_12_n_4 ,\enter_reg[11]_i_12_n_5 ,\enter_reg[11]_i_12_n_6 ,\enter_reg[11]_i_12_n_7 }),
        .S({\enter[11]_i_33_n_0 ,\enter[11]_i_34_n_0 ,\enter[11]_i_35_n_0 ,\enter[11]_i_36_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[11]_i_37 
       (.CI(\<const0> ),
        .CO({\enter_reg[11]_i_37_n_0 ,\enter_reg[11]_i_37_n_1 ,\enter_reg[11]_i_37_n_2 ,\enter_reg[11]_i_37_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[11]_i_38_n_0 ,\enter[11]_i_39_n_0 ,\enter[11]_i_40_n_0 ,\<const0> }),
        .O({\enter_reg[11]_i_37_n_4 ,\enter_reg[11]_i_37_n_5 ,\enter_reg[11]_i_37_n_6 ,\enter_reg[11]_i_37_n_7 }),
        .S({\enter[11]_i_41_n_0 ,\enter[11]_i_42_n_0 ,\enter[11]_i_43_n_0 ,\enter[11]_i_44_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[12]),
        .Q(\enter_reg_n_0_[12] ),
        .R(busy_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[13]),
        .Q(\enter_reg_n_0_[13] ),
        .R(busy_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[14]),
        .Q(\enter_reg_n_0_[14] ),
        .R(busy_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[15]),
        .Q(\enter_reg_n_0_[15] ),
        .R(busy_reg0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[15]_i_1 
       (.CI(\enter_reg[11]_i_1_n_0 ),
        .CO({\enter_reg[15]_i_1_n_0 ,\enter_reg[15]_i_1_n_1 ,\enter_reg[15]_i_1_n_2 ,\enter_reg[15]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[15]_i_2_n_0 ,\enter[15]_i_3_n_0 ,\enter[15]_i_4_n_0 ,\enter[15]_i_5_n_0 }),
        .O(in24[15:12]),
        .S({\enter[15]_i_6_n_0 ,\enter[15]_i_7_n_0 ,\enter[15]_i_8_n_0 ,\enter[15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[15]_i_10 
       (.CI(\enter_reg[11]_i_10_n_0 ),
        .CO({\enter_reg[15]_i_10_n_0 ,\enter_reg[15]_i_10_n_1 ,\enter_reg[15]_i_10_n_2 ,\enter_reg[15]_i_10_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[15]_i_13_n_0 ,\enter[15]_i_14_n_0 ,\enter[15]_i_15_n_0 ,\enter[15]_i_16_n_0 }),
        .O({\enter_reg[15]_i_10_n_4 ,\enter_reg[15]_i_10_n_5 ,\enter_reg[15]_i_10_n_6 ,\enter_reg[15]_i_10_n_7 }),
        .S({\enter[15]_i_17_n_0 ,\enter[15]_i_18_n_0 ,\enter[15]_i_19_n_0 ,\enter[15]_i_20_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[15]_i_11 
       (.CI(\enter_reg[11]_i_11_n_0 ),
        .CO({\enter_reg[15]_i_11_n_0 ,\enter_reg[15]_i_11_n_1 ,\enter_reg[15]_i_11_n_2 ,\enter_reg[15]_i_11_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[15]_i_21_n_0 ,\enter[15]_i_22_n_0 ,\enter[15]_i_23_n_0 ,\enter[15]_i_24_n_0 }),
        .O({\enter_reg[15]_i_11_n_4 ,\enter_reg[15]_i_11_n_5 ,\enter_reg[15]_i_11_n_6 ,\enter_reg[15]_i_11_n_7 }),
        .S({\enter[15]_i_25_n_0 ,\enter[15]_i_26_n_0 ,\enter[15]_i_27_n_0 ,\enter[15]_i_28_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[15]_i_12 
       (.CI(\enter_reg[11]_i_12_n_0 ),
        .CO({\enter_reg[15]_i_12_n_0 ,\enter_reg[15]_i_12_n_1 ,\enter_reg[15]_i_12_n_2 ,\enter_reg[15]_i_12_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[15]_i_29_n_0 ,\enter[15]_i_30_n_0 ,\enter[15]_i_31_n_0 ,\enter[15]_i_32_n_0 }),
        .O({\enter_reg[15]_i_12_n_4 ,\enter_reg[15]_i_12_n_5 ,\enter_reg[15]_i_12_n_6 ,\enter_reg[15]_i_12_n_7 }),
        .S({\enter[15]_i_33_n_0 ,\enter[15]_i_34_n_0 ,\enter[15]_i_35_n_0 ,\enter[15]_i_36_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[15]_i_37 
       (.CI(\enter_reg[11]_i_37_n_0 ),
        .CO({\enter_reg[15]_i_37_n_0 ,\enter_reg[15]_i_37_n_1 ,\enter_reg[15]_i_37_n_2 ,\enter_reg[15]_i_37_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[15]_i_38_n_0 ,\enter[15]_i_39_n_0 ,\enter[15]_i_40_n_0 ,\enter[15]_i_41_n_0 }),
        .O({\enter_reg[15]_i_37_n_4 ,\enter_reg[15]_i_37_n_5 ,\enter_reg[15]_i_37_n_6 ,\enter_reg[15]_i_37_n_7 }),
        .S({\enter[15]_i_42_n_0 ,\enter[15]_i_43_n_0 ,\enter[15]_i_44_n_0 ,\enter[15]_i_45_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[16]),
        .Q(\enter_reg_n_0_[16] ),
        .R(busy_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[17]),
        .Q(\enter_reg_n_0_[17] ),
        .R(busy_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[18]),
        .Q(\enter_reg_n_0_[18] ),
        .R(busy_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[19]),
        .Q(\enter_reg_n_0_[19] ),
        .R(busy_reg0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[19]_i_10 
       (.CI(\enter_reg[19]_i_13_n_0 ),
        .CO({\enter_reg[19]_i_10_n_1 ,\enter_reg[19]_i_10_n_2 ,\enter_reg[19]_i_10_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\enter[19]_i_16_n_0 ,\enter[19]_i_17_n_0 ,\enter[19]_i_18_n_0 }),
        .O({\enter_reg[19]_i_10_n_4 ,\enter_reg[19]_i_10_n_5 ,\enter_reg[19]_i_10_n_6 ,\enter_reg[19]_i_10_n_7 }),
        .S({\enter[19]_i_19_n_0 ,\enter[19]_i_20_n_0 ,\enter[19]_i_21_n_0 ,\enter[19]_i_22_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[19]_i_11 
       (.CI(\enter_reg[19]_i_14_n_0 ),
        .CO({\enter_reg[19]_i_11_n_1 ,\enter_reg[19]_i_11_n_2 ,\enter_reg[19]_i_11_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\enter[19]_i_23_n_0 ,\enter[19]_i_24_n_0 ,\enter[19]_i_25_n_0 }),
        .O({\enter_reg[19]_i_11_n_4 ,\enter_reg[19]_i_11_n_5 ,\enter_reg[19]_i_11_n_6 ,\enter_reg[19]_i_11_n_7 }),
        .S({\enter[19]_i_26_n_0 ,\enter[19]_i_27_n_0 ,\enter[19]_i_28_n_0 ,\enter[19]_i_29_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[19]_i_12 
       (.CI(\enter_reg[19]_i_15_n_0 ),
        .CO({\enter_reg[19]_i_12_n_1 ,\enter_reg[19]_i_12_n_2 ,\enter_reg[19]_i_12_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\enter[19]_i_30_n_0 ,\enter[19]_i_31_n_0 ,\enter[19]_i_32_n_0 }),
        .O({\enter_reg[19]_i_12_n_4 ,\enter_reg[19]_i_12_n_5 ,\enter_reg[19]_i_12_n_6 ,\enter_reg[19]_i_12_n_7 }),
        .S({\enter[19]_i_33_n_0 ,\enter[19]_i_34_n_0 ,\enter[19]_i_35_n_0 ,\enter[19]_i_36_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[19]_i_13 
       (.CI(\enter_reg[15]_i_10_n_0 ),
        .CO({\enter_reg[19]_i_13_n_0 ,\enter_reg[19]_i_13_n_1 ,\enter_reg[19]_i_13_n_2 ,\enter_reg[19]_i_13_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[19]_i_37_n_0 ,\enter[19]_i_38_n_0 ,\enter[19]_i_39_n_0 ,\enter[19]_i_40_n_0 }),
        .O({\enter_reg[19]_i_13_n_4 ,\enter_reg[19]_i_13_n_5 ,\enter_reg[19]_i_13_n_6 ,\enter_reg[19]_i_13_n_7 }),
        .S({\enter[19]_i_41_n_0 ,\enter[19]_i_42_n_0 ,\enter[19]_i_43_n_0 ,\enter[19]_i_44_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[19]_i_14 
       (.CI(\enter_reg[15]_i_11_n_0 ),
        .CO({\enter_reg[19]_i_14_n_0 ,\enter_reg[19]_i_14_n_1 ,\enter_reg[19]_i_14_n_2 ,\enter_reg[19]_i_14_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[19]_i_45_n_0 ,\enter[19]_i_46_n_0 ,\enter[19]_i_47_n_0 ,\enter[19]_i_48_n_0 }),
        .O({\enter_reg[19]_i_14_n_4 ,\enter_reg[19]_i_14_n_5 ,\enter_reg[19]_i_14_n_6 ,\enter_reg[19]_i_14_n_7 }),
        .S({\enter[19]_i_49_n_0 ,\enter[19]_i_50_n_0 ,\enter[19]_i_51_n_0 ,\enter[19]_i_52_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[19]_i_15 
       (.CI(\enter_reg[15]_i_12_n_0 ),
        .CO({\enter_reg[19]_i_15_n_0 ,\enter_reg[19]_i_15_n_1 ,\enter_reg[19]_i_15_n_2 ,\enter_reg[19]_i_15_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[19]_i_53_n_0 ,\enter[19]_i_54_n_0 ,\enter[19]_i_55_n_0 ,\enter[19]_i_56_n_0 }),
        .O({\enter_reg[19]_i_15_n_4 ,\enter_reg[19]_i_15_n_5 ,\enter_reg[19]_i_15_n_6 ,\enter_reg[19]_i_15_n_7 }),
        .S({\enter[19]_i_57_n_0 ,\enter[19]_i_58_n_0 ,\enter[19]_i_59_n_0 ,\enter[19]_i_60_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[19]_i_2 
       (.CI(\enter_reg[15]_i_1_n_0 ),
        .CO({\enter_reg[19]_i_2_n_1 ,\enter_reg[19]_i_2_n_2 ,\enter_reg[19]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\enter[19]_i_3_n_0 ,\enter[19]_i_4_n_0 ,\enter[19]_i_5_n_0 }),
        .O(in24[19:16]),
        .S({\enter[19]_i_6_n_0 ,\enter[19]_i_7_n_0 ,\enter[19]_i_8_n_0 ,\enter[19]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[19]_i_61 
       (.CI(\enter_reg[19]_i_62_n_0 ),
        .CO({\enter_reg[19]_i_61_n_1 ,\enter_reg[19]_i_61_n_2 ,\enter_reg[19]_i_61_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\enter[19]_i_77_n_0 ,\enter[19]_i_78_n_0 ,\enter[19]_i_79_n_0 }),
        .O({\enter_reg[19]_i_61_n_4 ,\enter_reg[19]_i_61_n_5 ,\enter_reg[19]_i_61_n_6 ,\enter_reg[19]_i_61_n_7 }),
        .S({\enter[19]_i_80_n_0 ,\enter[19]_i_81_n_0 ,\enter[19]_i_82_n_0 ,\enter[19]_i_83_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[19]_i_62 
       (.CI(\enter_reg[19]_i_76_n_0 ),
        .CO({\enter_reg[19]_i_62_n_0 ,\enter_reg[19]_i_62_n_1 ,\enter_reg[19]_i_62_n_2 ,\enter_reg[19]_i_62_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[19]_i_84_n_0 ,\enter[19]_i_85_n_0 ,\enter[19]_i_86_n_0 ,\enter[19]_i_87_n_0 }),
        .O({\enter_reg[19]_i_62_n_4 ,\enter_reg[19]_i_62_n_5 ,\enter_reg[19]_i_62_n_6 ,\enter_reg[19]_i_62_n_7 }),
        .S({\enter[19]_i_88_n_0 ,\enter[19]_i_89_n_0 ,\enter[19]_i_90_n_0 ,\enter[19]_i_91_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[19]_i_76 
       (.CI(\enter_reg[15]_i_37_n_0 ),
        .CO({\enter_reg[19]_i_76_n_0 ,\enter_reg[19]_i_76_n_1 ,\enter_reg[19]_i_76_n_2 ,\enter_reg[19]_i_76_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[19]_i_92_n_0 ,\enter[19]_i_93_n_0 ,\enter[19]_i_94_n_0 ,\enter[19]_i_95_n_0 }),
        .O({\enter_reg[19]_i_76_n_4 ,\enter_reg[19]_i_76_n_5 ,\enter_reg[19]_i_76_n_6 ,\enter_reg[19]_i_76_n_7 }),
        .S({\enter[19]_i_96_n_0 ,\enter[19]_i_97_n_0 ,\enter[19]_i_98_n_0 ,\enter[19]_i_99_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[1]),
        .Q(\enter_reg_n_0_[1] ),
        .R(busy_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[2]),
        .Q(\enter_reg_n_0_[2] ),
        .R(busy_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[3]),
        .Q(\enter_reg_n_0_[3] ),
        .R(busy_reg0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[3]_i_1 
       (.CI(\<const0> ),
        .CO({\enter_reg[3]_i_1_n_0 ,\enter_reg[3]_i_1_n_1 ,\enter_reg[3]_i_1_n_2 ,\enter_reg[3]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[3]_i_2_n_0 ,\enter[3]_i_3_n_0 ,\enter[3]_i_4_n_0 ,\<const0> }),
        .O(in24[3:0]),
        .S({\enter[3]_i_5_n_0 ,\enter[3]_i_6_n_0 ,\enter[3]_i_7_n_0 ,\enter[3]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[4]),
        .Q(\enter_reg_n_0_[4] ),
        .R(busy_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[5]),
        .Q(\enter_reg_n_0_[5] ),
        .R(busy_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[6]),
        .Q(\enter_reg_n_0_[6] ),
        .R(busy_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[7]),
        .Q(\enter_reg_n_0_[7] ),
        .R(busy_reg0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[7]_i_1 
       (.CI(\enter_reg[3]_i_1_n_0 ),
        .CO({\enter_reg[7]_i_1_n_0 ,\enter_reg[7]_i_1_n_1 ,\enter_reg[7]_i_1_n_2 ,\enter_reg[7]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[7]_i_2_n_0 ,\enter[7]_i_3_n_0 ,\enter[7]_i_4_n_0 ,\enter[7]_i_5_n_0 }),
        .O(in24[7:4]),
        .S({\enter[7]_i_6_n_0 ,\enter[7]_i_7_n_0 ,\enter[7]_i_8_n_0 ,\enter[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[7]_i_10 
       (.CI(\<const0> ),
        .CO({\enter_reg[7]_i_10_n_0 ,\enter_reg[7]_i_10_n_1 ,\enter_reg[7]_i_10_n_2 ,\enter_reg[7]_i_10_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[7]_i_13_n_0 ,\enter[7]_i_14_n_0 ,\enter[7]_i_15_n_0 ,\<const0> }),
        .O({\enter_reg[7]_i_10_n_4 ,\enter_reg[7]_i_10_n_5 ,\enter_reg[7]_i_10_n_6 ,\enter_reg[7]_i_10_n_7 }),
        .S({\enter[7]_i_16_n_0 ,\enter[7]_i_17_n_0 ,\enter[7]_i_18_n_0 ,\enter[7]_i_19_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[7]_i_11 
       (.CI(\<const0> ),
        .CO({\enter_reg[7]_i_11_n_0 ,\enter_reg[7]_i_11_n_1 ,\enter_reg[7]_i_11_n_2 ,\enter_reg[7]_i_11_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[7]_i_20_n_0 ,\enter[7]_i_21_n_0 ,\enter[7]_i_22_n_0 ,\<const0> }),
        .O({\enter_reg[7]_i_11_n_4 ,\enter_reg[7]_i_11_n_5 ,\enter_reg[7]_i_11_n_6 ,\enter_reg[7]_i_11_n_7 }),
        .S({\enter[7]_i_23_n_0 ,\enter[7]_i_24_n_0 ,\enter[7]_i_25_n_0 ,\enter[7]_i_26_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \enter_reg[7]_i_12 
       (.CI(\<const0> ),
        .CO({\enter_reg[7]_i_12_n_0 ,\enter_reg[7]_i_12_n_1 ,\enter_reg[7]_i_12_n_2 ,\enter_reg[7]_i_12_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\enter[7]_i_27_n_0 ,\enter[7]_i_28_n_0 ,\enter[7]_i_29_n_0 ,\<const0> }),
        .O({\enter_reg[7]_i_12_n_4 ,\enter_reg[7]_i_12_n_5 ,\enter_reg[7]_i_12_n_6 ,\enter_reg[7]_i_12_n_7 }),
        .S({\enter[7]_i_30_n_0 ,\enter[7]_i_31_n_0 ,\enter[7]_i_32_n_0 ,\enter[7]_i_33_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[8]),
        .Q(\enter_reg_n_0_[8] ),
        .R(busy_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \enter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(caddr_wr_reg),
        .D(in24[9]),
        .Q(\enter_reg_n_0_[9] ),
        .R(busy_reg0));
  OBUF \iaddr_OBUF[0]_inst 
       (.I(\<const0> ),
        .O(iaddr[0]));
  OBUF \iaddr_OBUF[10]_inst 
       (.I(\<const0> ),
        .O(iaddr[10]));
  OBUF \iaddr_OBUF[11]_inst 
       (.I(\<const0> ),
        .O(iaddr[11]));
  OBUF \iaddr_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(iaddr[1]));
  OBUF \iaddr_OBUF[2]_inst 
       (.I(\<const0> ),
        .O(iaddr[2]));
  OBUF \iaddr_OBUF[3]_inst 
       (.I(\<const0> ),
        .O(iaddr[3]));
  OBUF \iaddr_OBUF[4]_inst 
       (.I(\<const0> ),
        .O(iaddr[4]));
  OBUF \iaddr_OBUF[5]_inst 
       (.I(\<const0> ),
        .O(iaddr[5]));
  OBUF \iaddr_OBUF[6]_inst 
       (.I(\<const0> ),
        .O(iaddr[6]));
  OBUF \iaddr_OBUF[7]_inst 
       (.I(\<const0> ),
        .O(iaddr[7]));
  OBUF \iaddr_OBUF[8]_inst 
       (.I(\<const0> ),
        .O(iaddr[8]));
  OBUF \iaddr_OBUF[9]_inst 
       (.I(\<const0> ),
        .O(iaddr[9]));
  IBUF \idata_IBUF[0]_inst 
       (.I(idata[0]),
        .O(idata_IBUF[0]));
  IBUF \idata_IBUF[10]_inst 
       (.I(idata[10]),
        .O(idata_IBUF[10]));
  IBUF \idata_IBUF[11]_inst 
       (.I(idata[11]),
        .O(idata_IBUF[11]));
  IBUF \idata_IBUF[12]_inst 
       (.I(idata[12]),
        .O(idata_IBUF[12]));
  IBUF \idata_IBUF[13]_inst 
       (.I(idata[13]),
        .O(idata_IBUF[13]));
  IBUF \idata_IBUF[14]_inst 
       (.I(idata[14]),
        .O(idata_IBUF[14]));
  IBUF \idata_IBUF[15]_inst 
       (.I(idata[15]),
        .O(idata_IBUF[15]));
  IBUF \idata_IBUF[16]_inst 
       (.I(idata[16]),
        .O(idata_IBUF[16]));
  IBUF \idata_IBUF[17]_inst 
       (.I(idata[17]),
        .O(idata_IBUF[17]));
  IBUF \idata_IBUF[18]_inst 
       (.I(idata[18]),
        .O(idata_IBUF[18]));
  IBUF \idata_IBUF[19]_inst 
       (.I(idata[19]),
        .O(idata_IBUF[19]));
  IBUF \idata_IBUF[1]_inst 
       (.I(idata[1]),
        .O(idata_IBUF[1]));
  IBUF \idata_IBUF[2]_inst 
       (.I(idata[2]),
        .O(idata_IBUF[2]));
  IBUF \idata_IBUF[3]_inst 
       (.I(idata[3]),
        .O(idata_IBUF[3]));
  IBUF \idata_IBUF[4]_inst 
       (.I(idata[4]),
        .O(idata_IBUF[4]));
  IBUF \idata_IBUF[5]_inst 
       (.I(idata[5]),
        .O(idata_IBUF[5]));
  IBUF \idata_IBUF[6]_inst 
       (.I(idata[6]),
        .O(idata_IBUF[6]));
  IBUF \idata_IBUF[7]_inst 
       (.I(idata[7]),
        .O(idata_IBUF[7]));
  IBUF \idata_IBUF[8]_inst 
       (.I(idata[8]),
        .O(idata_IBUF[8]));
  IBUF \idata_IBUF[9]_inst 
       (.I(idata[9]),
        .O(idata_IBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \p0[0]_i_1 
       (.I0(caddr_wr_reg0_in[0]),
        .O(\p0[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \p0[31]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(reset_IBUF),
        .I4(csel_reg),
        .O(\p0[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03000002)) 
    \p0[31]_i_2 
       (.I0(reset_IBUF),
        .I1(state[2]),
        .I2(state[0]),
        .I3(csel_reg),
        .I4(state[1]),
        .O(\p0[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(\p0[0]_i_1_n_0 ),
        .Q(caddr_wr_reg0_in[0]),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[10]),
        .Q(caddr_wr_reg0_in[10]),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[11]),
        .Q(caddr_wr_reg0_in[11]),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[12]),
        .Q(\p0_reg_n_0_[12] ),
        .R(\p0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p0_reg[12]_i_1 
       (.CI(\p0_reg[8]_i_1_n_0 ),
        .CO({\p0_reg[12]_i_1_n_0 ,\p0_reg[12]_i_1_n_1 ,\p0_reg[12]_i_1_n_2 ,\p0_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in4[12:9]),
        .S({\p0_reg_n_0_[12] ,caddr_wr_reg0_in[11:9]}));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[13]),
        .Q(\p0_reg_n_0_[13] ),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[14]),
        .Q(\p0_reg_n_0_[14] ),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[15]),
        .Q(\p0_reg_n_0_[15] ),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[16]),
        .Q(\p0_reg_n_0_[16] ),
        .R(\p0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p0_reg[16]_i_1 
       (.CI(\p0_reg[12]_i_1_n_0 ),
        .CO({\p0_reg[16]_i_1_n_0 ,\p0_reg[16]_i_1_n_1 ,\p0_reg[16]_i_1_n_2 ,\p0_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in4[16:13]),
        .S({\p0_reg_n_0_[16] ,\p0_reg_n_0_[15] ,\p0_reg_n_0_[14] ,\p0_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[17]),
        .Q(\p0_reg_n_0_[17] ),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[18]),
        .Q(\p0_reg_n_0_[18] ),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[19]),
        .Q(\p0_reg_n_0_[19] ),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[1]),
        .Q(caddr_wr_reg0_in[1]),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[20]),
        .Q(\p0_reg_n_0_[20] ),
        .R(\p0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p0_reg[20]_i_1 
       (.CI(\p0_reg[16]_i_1_n_0 ),
        .CO({\p0_reg[20]_i_1_n_0 ,\p0_reg[20]_i_1_n_1 ,\p0_reg[20]_i_1_n_2 ,\p0_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in4[20:17]),
        .S({\p0_reg_n_0_[20] ,\p0_reg_n_0_[19] ,\p0_reg_n_0_[18] ,\p0_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[21]),
        .Q(\p0_reg_n_0_[21] ),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[22]),
        .Q(\p0_reg_n_0_[22] ),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[23]),
        .Q(\p0_reg_n_0_[23] ),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[24]),
        .Q(\p0_reg_n_0_[24] ),
        .R(\p0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p0_reg[24]_i_1 
       (.CI(\p0_reg[20]_i_1_n_0 ),
        .CO({\p0_reg[24]_i_1_n_0 ,\p0_reg[24]_i_1_n_1 ,\p0_reg[24]_i_1_n_2 ,\p0_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in4[24:21]),
        .S({\p0_reg_n_0_[24] ,\p0_reg_n_0_[23] ,\p0_reg_n_0_[22] ,\p0_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[25]),
        .Q(\p0_reg_n_0_[25] ),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[26]),
        .Q(\p0_reg_n_0_[26] ),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[27]),
        .Q(\p0_reg_n_0_[27] ),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[28]),
        .Q(\p0_reg_n_0_[28] ),
        .R(\p0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p0_reg[28]_i_1 
       (.CI(\p0_reg[24]_i_1_n_0 ),
        .CO({\p0_reg[28]_i_1_n_0 ,\p0_reg[28]_i_1_n_1 ,\p0_reg[28]_i_1_n_2 ,\p0_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in4[28:25]),
        .S({\p0_reg_n_0_[28] ,\p0_reg_n_0_[27] ,\p0_reg_n_0_[26] ,\p0_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[29]),
        .Q(\p0_reg_n_0_[29] ),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[2]),
        .Q(caddr_wr_reg0_in[2]),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[30]),
        .Q(\p0_reg_n_0_[30] ),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[31]),
        .Q(\p0_reg_n_0_[31] ),
        .R(\p0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p0_reg[31]_i_3 
       (.CI(\p0_reg[28]_i_1_n_0 ),
        .CO({\p0_reg[31]_i_3_n_2 ,\p0_reg[31]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in4[31:29]),
        .S({\<const0> ,\p0_reg_n_0_[31] ,\p0_reg_n_0_[30] ,\p0_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[3]),
        .Q(caddr_wr_reg0_in[3]),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[4]),
        .Q(caddr_wr_reg0_in[4]),
        .R(\p0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p0_reg[4]_i_1 
       (.CI(\<const0> ),
        .CO({\p0_reg[4]_i_1_n_0 ,\p0_reg[4]_i_1_n_1 ,\p0_reg[4]_i_1_n_2 ,\p0_reg[4]_i_1_n_3 }),
        .CYINIT(caddr_wr_reg0_in[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in4[4:1]),
        .S(caddr_wr_reg0_in[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[5]),
        .Q(caddr_wr_reg0_in[5]),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[6]),
        .Q(caddr_wr_reg0_in[6]),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[7]),
        .Q(caddr_wr_reg0_in[7]),
        .R(\p0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[8]),
        .Q(caddr_wr_reg0_in[8]),
        .R(\p0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p0_reg[8]_i_1 
       (.CI(\p0_reg[4]_i_1_n_0 ),
        .CO({\p0_reg[8]_i_1_n_0 ,\p0_reg[8]_i_1_n_1 ,\p0_reg[8]_i_1_n_2 ,\p0_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in4[8:5]),
        .S(caddr_wr_reg0_in[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \p0_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\p0[31]_i_2_n_0 ),
        .D(in4[9]),
        .Q(caddr_wr_reg0_in[9]),
        .R(\p0[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][-1111111110]_i_1 
       (.I0(cdata_rd_IBUF[18]),
        .I1(state[0]),
        .I2(idata_IBUF[18]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][-1111111110]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][-1111111111]_i_1 
       (.I0(cdata_rd_IBUF[17]),
        .I1(state[0]),
        .I2(idata_IBUF[17]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][-1111111111]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][0]_i_1 
       (.I0(cdata_rd_IBUF[0]),
        .I1(state[0]),
        .I2(idata_IBUF[0]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][10]_i_1 
       (.I0(cdata_rd_IBUF[10]),
        .I1(state[0]),
        .I2(idata_IBUF[10]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][11]_i_1 
       (.I0(cdata_rd_IBUF[11]),
        .I1(state[0]),
        .I2(idata_IBUF[11]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][12]_i_1 
       (.I0(cdata_rd_IBUF[12]),
        .I1(state[0]),
        .I2(idata_IBUF[12]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][13]_i_1 
       (.I0(cdata_rd_IBUF[13]),
        .I1(state[0]),
        .I2(idata_IBUF[13]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][14]_i_1 
       (.I0(cdata_rd_IBUF[14]),
        .I1(state[0]),
        .I2(idata_IBUF[14]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][15]_i_1 
       (.I0(cdata_rd_IBUF[15]),
        .I1(state[0]),
        .I2(idata_IBUF[15]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0140)) 
    \pix[0][16]_i_1 
       (.I0(state[1]),
        .I1(csel_reg),
        .I2(state[2]),
        .I3(state[0]),
        .O(\pix[0][16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[0][16]_i_11 
       (.I0(\p0_reg_n_0_[23] ),
        .I1(\p0_reg_n_0_[22] ),
        .O(\pix[0][16]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[0][16]_i_12 
       (.I0(\p0_reg_n_0_[21] ),
        .I1(\p0_reg_n_0_[20] ),
        .O(\pix[0][16]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[0][16]_i_13 
       (.I0(\p0_reg_n_0_[18] ),
        .I1(\p0_reg_n_0_[19] ),
        .O(\pix[0][16]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[0][16]_i_14 
       (.I0(\p0_reg_n_0_[17] ),
        .I1(\p0_reg_n_0_[16] ),
        .O(\pix[0][16]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[0][16]_i_16 
       (.I0(\p0_reg_n_0_[15] ),
        .I1(\p0_reg_n_0_[14] ),
        .O(\pix[0][16]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[0][16]_i_17 
       (.I0(\p0_reg_n_0_[12] ),
        .I1(\p0_reg_n_0_[13] ),
        .O(\pix[0][16]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[0][16]_i_18 
       (.I0(caddr_wr_reg0_in[10]),
        .I1(caddr_wr_reg0_in[11]),
        .O(\pix[0][16]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[0][16]_i_19 
       (.I0(caddr_wr_reg0_in[8]),
        .I1(caddr_wr_reg0_in[9]),
        .O(\pix[0][16]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][16]_i_2 
       (.I0(cdata_rd_IBUF[16]),
        .I1(state[0]),
        .I2(idata_IBUF[16]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \pix[0][16]_i_20 
       (.I0(caddr_wr_reg0_in[5]),
        .I1(caddr_wr_reg0_in[4]),
        .O(\pix[0][16]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \pix[0][16]_i_21 
       (.I0(caddr_wr_reg0_in[3]),
        .I1(caddr_wr_reg0_in[2]),
        .O(\pix[0][16]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \pix[0][16]_i_22 
       (.I0(caddr_wr_reg0_in[1]),
        .I1(caddr_wr_reg0_in[0]),
        .O(\pix[0][16]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[0][16]_i_23 
       (.I0(caddr_wr_reg0_in[6]),
        .I1(caddr_wr_reg0_in[7]),
        .O(\pix[0][16]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pix[0][16]_i_24 
       (.I0(caddr_wr_reg0_in[4]),
        .I1(caddr_wr_reg0_in[5]),
        .O(\pix[0][16]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pix[0][16]_i_25 
       (.I0(caddr_wr_reg0_in[2]),
        .I1(caddr_wr_reg0_in[3]),
        .O(\pix[0][16]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pix[0][16]_i_26 
       (.I0(caddr_wr_reg0_in[0]),
        .I1(caddr_wr_reg0_in[1]),
        .O(\pix[0][16]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pix[0][16]_i_3 
       (.I0(caddr_wr_reg0_in[3]),
        .I1(caddr_wr_reg0_in[2]),
        .I2(caddr_wr_reg0_in[4]),
        .I3(caddr_wr_reg0_in[5]),
        .I4(caddr_wr_reg0_in[0]),
        .I5(caddr_wr_reg0_in[1]),
        .O(\pix[0][16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[0][16]_i_6 
       (.I0(\p0_reg_n_0_[31] ),
        .I1(\p0_reg_n_0_[30] ),
        .O(\pix[0][16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[0][16]_i_7 
       (.I0(\p0_reg_n_0_[29] ),
        .I1(\p0_reg_n_0_[28] ),
        .O(\pix[0][16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[0][16]_i_8 
       (.I0(\p0_reg_n_0_[27] ),
        .I1(\p0_reg_n_0_[26] ),
        .O(\pix[0][16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[0][16]_i_9 
       (.I0(\p0_reg_n_0_[25] ),
        .I1(\p0_reg_n_0_[24] ),
        .O(\pix[0][16]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][1]_i_1 
       (.I0(cdata_rd_IBUF[1]),
        .I1(state[0]),
        .I2(idata_IBUF[1]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][2]_i_1 
       (.I0(cdata_rd_IBUF[2]),
        .I1(state[0]),
        .I2(idata_IBUF[2]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][3]_i_1 
       (.I0(cdata_rd_IBUF[3]),
        .I1(state[0]),
        .I2(idata_IBUF[3]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][4]_i_1 
       (.I0(cdata_rd_IBUF[4]),
        .I1(state[0]),
        .I2(idata_IBUF[4]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][5]_i_1 
       (.I0(cdata_rd_IBUF[5]),
        .I1(state[0]),
        .I2(idata_IBUF[5]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][6]_i_1 
       (.I0(cdata_rd_IBUF[6]),
        .I1(state[0]),
        .I2(idata_IBUF[6]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][7]_i_1 
       (.I0(cdata_rd_IBUF[7]),
        .I1(state[0]),
        .I2(idata_IBUF[7]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][8]_i_1 
       (.I0(cdata_rd_IBUF[8]),
        .I1(state[0]),
        .I2(idata_IBUF[8]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \pix[0][9]_i_1 
       (.I0(cdata_rd_IBUF[9]),
        .I1(state[0]),
        .I2(idata_IBUF[9]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .I4(addr24_in),
        .O(\pix[0][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \pix[1][-1111111109]_i_1 
       (.I0(cdata_rd_IBUF[19]),
        .I1(state[0]),
        .I2(idata_IBUF[19]),
        .I3(addr24_in),
        .O(\pix[1][-1111111109]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \pix[1][-1111111110]_i_1 
       (.I0(cdata_rd_IBUF[18]),
        .I1(state[0]),
        .I2(idata_IBUF[18]),
        .I3(addr24_in),
        .O(\pix[1][-1111111110]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][-1111111111]_i_1 
       (.I0(idata_IBUF[17]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[17]),
        .I3(state[0]),
        .O(\pix[1][-1111111111]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][0]_i_1 
       (.I0(idata_IBUF[0]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[0]),
        .I3(state[0]),
        .O(\pix[1][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][10]_i_1 
       (.I0(idata_IBUF[10]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[10]),
        .I3(state[0]),
        .O(\pix[1][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][11]_i_1 
       (.I0(idata_IBUF[11]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[11]),
        .I3(state[0]),
        .O(\pix[1][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][12]_i_1 
       (.I0(idata_IBUF[12]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[12]),
        .I3(state[0]),
        .O(\pix[1][12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][13]_i_1 
       (.I0(idata_IBUF[13]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[13]),
        .I3(state[0]),
        .O(\pix[1][13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][14]_i_1 
       (.I0(idata_IBUF[14]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[14]),
        .I3(state[0]),
        .O(\pix[1][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][15]_i_1 
       (.I0(idata_IBUF[15]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[15]),
        .I3(state[0]),
        .O(\pix[1][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4002)) 
    \pix[1][16]_i_1 
       (.I0(state[1]),
        .I1(csel_reg),
        .I2(state[2]),
        .I3(state[0]),
        .O(\pix[1][16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][16]_i_2 
       (.I0(idata_IBUF[16]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[16]),
        .I3(state[0]),
        .O(\pix[1][16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][1]_i_1 
       (.I0(idata_IBUF[1]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[1]),
        .I3(state[0]),
        .O(\pix[1][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][2]_i_1 
       (.I0(idata_IBUF[2]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[2]),
        .I3(state[0]),
        .O(\pix[1][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][3]_i_1 
       (.I0(idata_IBUF[3]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[3]),
        .I3(state[0]),
        .O(\pix[1][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][4]_i_1 
       (.I0(idata_IBUF[4]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[4]),
        .I3(state[0]),
        .O(\pix[1][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][5]_i_1 
       (.I0(idata_IBUF[5]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[5]),
        .I3(state[0]),
        .O(\pix[1][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][6]_i_1 
       (.I0(idata_IBUF[6]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[6]),
        .I3(state[0]),
        .O(\pix[1][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][7]_i_1 
       (.I0(idata_IBUF[7]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[7]),
        .I3(state[0]),
        .O(\pix[1][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][8]_i_1 
       (.I0(idata_IBUF[8]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[8]),
        .I3(state[0]),
        .O(\pix[1][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \pix[1][9]_i_1 
       (.I0(idata_IBUF[9]),
        .I1(addr24_in),
        .I2(cdata_rd_IBUF[9]),
        .I3(state[0]),
        .O(\pix[1][9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \pix[2][-1111111109]_i_1 
       (.I0(addr24_in),
        .I1(idata_IBUF[19]),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(cdata_rd_IBUF[19]),
        .O(\pix[2][-1111111109]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][-1111111110]_i_1 
       (.I0(cdata_rd_IBUF[18]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[18]),
        .O(\pix[2][-1111111110]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][-1111111111]_i_1 
       (.I0(cdata_rd_IBUF[17]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[17]),
        .O(\pix[2][-1111111111]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][0]_i_1 
       (.I0(cdata_rd_IBUF[0]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[0]),
        .O(\pix[2][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][10]_i_1 
       (.I0(cdata_rd_IBUF[10]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[10]),
        .O(\pix[2][10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][11]_i_1 
       (.I0(cdata_rd_IBUF[11]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[11]),
        .O(\pix[2][11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][12]_i_1 
       (.I0(cdata_rd_IBUF[12]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[12]),
        .O(\pix[2][12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][13]_i_1 
       (.I0(cdata_rd_IBUF[13]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[13]),
        .O(\pix[2][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][14]_i_1 
       (.I0(cdata_rd_IBUF[14]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[14]),
        .O(\pix[2][14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][15]_i_1 
       (.I0(cdata_rd_IBUF[15]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[15]),
        .O(\pix[2][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0280)) 
    \pix[2][16]_i_1 
       (.I0(state[1]),
        .I1(csel_reg),
        .I2(state[2]),
        .I3(state[0]),
        .O(\pix[2][16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][16]_i_2 
       (.I0(cdata_rd_IBUF[16]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[16]),
        .O(\pix[2][16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \pix[2][16]_i_3 
       (.I0(in4[2]),
        .I1(in4[3]),
        .I2(in4[1]),
        .I3(caddr_wr_reg0_in[0]),
        .I4(in4[5]),
        .I5(in4[4]),
        .O(\pix[2][16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][1]_i_1 
       (.I0(cdata_rd_IBUF[1]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[1]),
        .O(\pix[2][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][2]_i_1 
       (.I0(cdata_rd_IBUF[2]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[2]),
        .O(\pix[2][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][3]_i_1 
       (.I0(cdata_rd_IBUF[3]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[3]),
        .O(\pix[2][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][4]_i_1 
       (.I0(cdata_rd_IBUF[4]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[4]),
        .O(\pix[2][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][5]_i_1 
       (.I0(cdata_rd_IBUF[5]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[5]),
        .O(\pix[2][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][6]_i_1 
       (.I0(cdata_rd_IBUF[6]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[6]),
        .O(\pix[2][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][7]_i_1 
       (.I0(cdata_rd_IBUF[7]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[7]),
        .O(\pix[2][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][8]_i_1 
       (.I0(cdata_rd_IBUF[8]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[8]),
        .O(\pix[2][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03AA00AA)) 
    \pix[2][9]_i_1 
       (.I0(cdata_rd_IBUF[9]),
        .I1(addr24_in),
        .I2(\pix[2][16]_i_3_n_0 ),
        .I3(state[0]),
        .I4(idata_IBUF[9]),
        .O(\pix[2][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][-1111111111]_i_1 
       (.I0(cdata_rd_IBUF[17]),
        .I1(state[0]),
        .I2(idata_IBUF[17]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][-1111111111]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][0]_i_1 
       (.I0(cdata_rd_IBUF[0]),
        .I1(state[0]),
        .I2(idata_IBUF[0]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][10]_i_1 
       (.I0(cdata_rd_IBUF[10]),
        .I1(state[0]),
        .I2(idata_IBUF[10]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][11]_i_1 
       (.I0(cdata_rd_IBUF[11]),
        .I1(state[0]),
        .I2(idata_IBUF[11]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][12]_i_1 
       (.I0(cdata_rd_IBUF[12]),
        .I1(state[0]),
        .I2(idata_IBUF[12]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][13]_i_1 
       (.I0(cdata_rd_IBUF[13]),
        .I1(state[0]),
        .I2(idata_IBUF[13]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][14]_i_1 
       (.I0(cdata_rd_IBUF[14]),
        .I1(state[0]),
        .I2(idata_IBUF[14]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][15]_i_1 
       (.I0(cdata_rd_IBUF[15]),
        .I1(state[0]),
        .I2(idata_IBUF[15]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8002)) 
    \pix[3][16]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(csel_reg),
        .O(\pix[3][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][16]_i_2 
       (.I0(cdata_rd_IBUF[16]),
        .I1(state[0]),
        .I2(idata_IBUF[16]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][1]_i_1 
       (.I0(cdata_rd_IBUF[1]),
        .I1(state[0]),
        .I2(idata_IBUF[1]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][2]_i_1 
       (.I0(cdata_rd_IBUF[2]),
        .I1(state[0]),
        .I2(idata_IBUF[2]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][3]_i_1 
       (.I0(cdata_rd_IBUF[3]),
        .I1(state[0]),
        .I2(idata_IBUF[3]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][4]_i_1 
       (.I0(cdata_rd_IBUF[4]),
        .I1(state[0]),
        .I2(idata_IBUF[4]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][5]_i_1 
       (.I0(cdata_rd_IBUF[5]),
        .I1(state[0]),
        .I2(idata_IBUF[5]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][6]_i_1 
       (.I0(cdata_rd_IBUF[6]),
        .I1(state[0]),
        .I2(idata_IBUF[6]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][7]_i_1 
       (.I0(cdata_rd_IBUF[7]),
        .I1(state[0]),
        .I2(idata_IBUF[7]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][8]_i_1 
       (.I0(cdata_rd_IBUF[8]),
        .I1(state[0]),
        .I2(idata_IBUF[8]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \pix[3][9]_i_1 
       (.I0(cdata_rd_IBUF[9]),
        .I1(state[0]),
        .I2(idata_IBUF[9]),
        .I3(\pix[0][16]_i_3_n_0 ),
        .O(\pix[3][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \pix[4][19]_i_1 
       (.I0(csel_reg),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\pix[4][19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \pix[5][16]_i_1 
       (.I0(\pix[2][16]_i_3_n_0 ),
        .I1(state[2]),
        .I2(csel_reg),
        .I3(state[1]),
        .I4(state[0]),
        .O(\pix[5][16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \pix[5][16]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(csel_reg),
        .I3(state[2]),
        .O(\pix[5][16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \pix[6][-1111111109]_i_1 
       (.I0(idata_IBUF[19]),
        .I1(\pix[0][16]_i_3_n_0 ),
        .I2(\pix_reg[6][16]_i_4_n_0 ),
        .I3(\pix[6][16]_i_2_n_0 ),
        .I4(\pix_reg[6][-_n_0_1111111109] ),
        .O(\pix[6][-1111111109]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \pix[6][-1111111110]_i_1 
       (.I0(idata_IBUF[18]),
        .I1(\pix[0][16]_i_3_n_0 ),
        .I2(\pix_reg[6][16]_i_4_n_0 ),
        .I3(\pix[6][16]_i_2_n_0 ),
        .I4(\pix_reg[6][-_n_0_1111111110] ),
        .O(\pix[6][-1111111110]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][-1111111111]_i_1 
       (.I0(idata_IBUF[17]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][-1111111111]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][0]_i_1 
       (.I0(idata_IBUF[0]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][10]_i_1 
       (.I0(idata_IBUF[10]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][11]_i_1 
       (.I0(idata_IBUF[11]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][12]_i_1 
       (.I0(idata_IBUF[12]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][13]_i_1 
       (.I0(idata_IBUF[13]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][14]_i_1 
       (.I0(idata_IBUF[14]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][15]_i_1 
       (.I0(idata_IBUF[15]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \pix[6][16]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(csel_reg),
        .I4(\pix[0][16]_i_3_n_0 ),
        .O(\pix[6][16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[6][16]_i_10 
       (.I0(\p0_reg_n_0_[31] ),
        .I1(\p0_reg_n_0_[30] ),
        .O(\pix[6][16]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[6][16]_i_11 
       (.I0(\p0_reg_n_0_[29] ),
        .I1(\p0_reg_n_0_[28] ),
        .O(\pix[6][16]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[6][16]_i_12 
       (.I0(\p0_reg_n_0_[27] ),
        .I1(\p0_reg_n_0_[26] ),
        .O(\pix[6][16]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[6][16]_i_13 
       (.I0(\p0_reg_n_0_[25] ),
        .I1(\p0_reg_n_0_[24] ),
        .O(\pix[6][16]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pix[6][16]_i_15 
       (.I0(\p0_reg_n_0_[22] ),
        .I1(\p0_reg_n_0_[23] ),
        .O(\pix[6][16]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pix[6][16]_i_16 
       (.I0(\p0_reg_n_0_[20] ),
        .I1(\p0_reg_n_0_[21] ),
        .O(\pix[6][16]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pix[6][16]_i_17 
       (.I0(\p0_reg_n_0_[19] ),
        .I1(\p0_reg_n_0_[18] ),
        .O(\pix[6][16]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pix[6][16]_i_18 
       (.I0(\p0_reg_n_0_[16] ),
        .I1(\p0_reg_n_0_[17] ),
        .O(\pix[6][16]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[6][16]_i_19 
       (.I0(\p0_reg_n_0_[23] ),
        .I1(\p0_reg_n_0_[22] ),
        .O(\pix[6][16]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \pix[6][16]_i_2 
       (.I0(csel_reg),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\pix[6][16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[6][16]_i_20 
       (.I0(\p0_reg_n_0_[21] ),
        .I1(\p0_reg_n_0_[20] ),
        .O(\pix[6][16]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[6][16]_i_21 
       (.I0(\p0_reg_n_0_[18] ),
        .I1(\p0_reg_n_0_[19] ),
        .O(\pix[6][16]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[6][16]_i_22 
       (.I0(\p0_reg_n_0_[17] ),
        .I1(\p0_reg_n_0_[16] ),
        .O(\pix[6][16]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pix[6][16]_i_24 
       (.I0(\p0_reg_n_0_[14] ),
        .I1(\p0_reg_n_0_[15] ),
        .O(\pix[6][16]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pix[6][16]_i_25 
       (.I0(\p0_reg_n_0_[13] ),
        .I1(\p0_reg_n_0_[12] ),
        .O(\pix[6][16]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[6][16]_i_26 
       (.I0(\p0_reg_n_0_[15] ),
        .I1(\p0_reg_n_0_[14] ),
        .O(\pix[6][16]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[6][16]_i_27 
       (.I0(\p0_reg_n_0_[12] ),
        .I1(\p0_reg_n_0_[13] ),
        .O(\pix[6][16]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pix[6][16]_i_28 
       (.I0(caddr_wr_reg0_in[11]),
        .I1(caddr_wr_reg0_in[10]),
        .O(\pix[6][16]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pix[6][16]_i_29 
       (.I0(caddr_wr_reg0_in[9]),
        .I1(caddr_wr_reg0_in[8]),
        .O(\pix[6][16]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][16]_i_3 
       (.I0(idata_IBUF[16]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pix[6][16]_i_30 
       (.I0(caddr_wr_reg0_in[4]),
        .I1(caddr_wr_reg0_in[5]),
        .O(\pix[6][16]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pix[6][16]_i_31 
       (.I0(caddr_wr_reg0_in[2]),
        .I1(caddr_wr_reg0_in[3]),
        .O(\pix[6][16]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pix[6][16]_i_32 
       (.I0(caddr_wr_reg0_in[0]),
        .I1(caddr_wr_reg0_in[1]),
        .O(\pix[6][16]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pix[6][16]_i_33 
       (.I0(caddr_wr_reg0_in[7]),
        .I1(caddr_wr_reg0_in[6]),
        .O(\pix[6][16]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[6][16]_i_34 
       (.I0(caddr_wr_reg0_in[5]),
        .I1(caddr_wr_reg0_in[4]),
        .O(\pix[6][16]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[6][16]_i_35 
       (.I0(caddr_wr_reg0_in[3]),
        .I1(caddr_wr_reg0_in[2]),
        .O(\pix[6][16]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pix[6][16]_i_36 
       (.I0(caddr_wr_reg0_in[1]),
        .I1(caddr_wr_reg0_in[0]),
        .O(\pix[6][16]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][16]_i_6 
       (.I0(\p0_reg_n_0_[30] ),
        .I1(\p0_reg_n_0_[31] ),
        .O(\pix[6][16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pix[6][16]_i_7 
       (.I0(\p0_reg_n_0_[28] ),
        .I1(\p0_reg_n_0_[29] ),
        .O(\pix[6][16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pix[6][16]_i_8 
       (.I0(\p0_reg_n_0_[26] ),
        .I1(\p0_reg_n_0_[27] ),
        .O(\pix[6][16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pix[6][16]_i_9 
       (.I0(\p0_reg_n_0_[24] ),
        .I1(\p0_reg_n_0_[25] ),
        .O(\pix[6][16]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][1]_i_1 
       (.I0(idata_IBUF[1]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][2]_i_1 
       (.I0(idata_IBUF[2]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][3]_i_1 
       (.I0(idata_IBUF[3]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][4]_i_1 
       (.I0(idata_IBUF[4]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][5]_i_1 
       (.I0(idata_IBUF[5]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][6]_i_1 
       (.I0(idata_IBUF[6]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][7]_i_1 
       (.I0(idata_IBUF[7]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][8]_i_1 
       (.I0(idata_IBUF[8]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pix[6][9]_i_1 
       (.I0(idata_IBUF[9]),
        .I1(\pix_reg[6][16]_i_4_n_0 ),
        .O(\pix[6][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \pix[7][16]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(csel_reg),
        .O(\pix[7][16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \pix[8][-1111111109]_i_1 
       (.I0(idata_IBUF[19]),
        .I1(\pix[2][16]_i_3_n_0 ),
        .I2(\pix_reg[6][16]_i_4_n_0 ),
        .I3(pix),
        .I4(\pix_reg[8][-_n_0_1111111109] ),
        .O(\pix[8][-1111111109]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \pix[8][-1111111110]_i_1 
       (.I0(idata_IBUF[18]),
        .I1(\pix[2][16]_i_3_n_0 ),
        .I2(\pix_reg[6][16]_i_4_n_0 ),
        .I3(pix),
        .I4(\pix_reg[8][-_n_0_1111111110] ),
        .O(\pix[8][-1111111110]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \pix[8][16]_i_1 
       (.I0(\pix[2][16]_i_3_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(csel_reg),
        .I4(state[2]),
        .O(\pix[8][16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \pix[8][16]_i_2 
       (.I0(state[2]),
        .I1(csel_reg),
        .I2(state[1]),
        .I3(state[0]),
        .O(pix));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][-1111111110] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][-1111111110]_i_1_n_0 ),
        .Q(\pix_reg[0][-_n_0_1111111110] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][-1111111111] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][-1111111111]_i_1_n_0 ),
        .Q(\pix_reg[0][-_n_0_1111111111] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][0]_i_1_n_0 ),
        .Q(\pix_reg[0] [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][10]_i_1_n_0 ),
        .Q(\pix_reg[0] [10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][11]_i_1_n_0 ),
        .Q(\pix_reg[0] [11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][12]_i_1_n_0 ),
        .Q(\pix_reg[0] [12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][13]_i_1_n_0 ),
        .Q(\pix_reg[0] [13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][14]_i_1_n_0 ),
        .Q(\pix_reg[0] [14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][15]_i_1_n_0 ),
        .Q(\pix_reg[0] [15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][16]_i_2_n_0 ),
        .Q(\pix_reg[0] [16]),
        .R(\<const0> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \pix_reg[0][16]_i_10 
       (.CI(\pix_reg[0][16]_i_15_n_0 ),
        .CO({\pix_reg[0][16]_i_10_n_0 ,\pix_reg[0][16]_i_10_n_1 ,\pix_reg[0][16]_i_10_n_2 ,\pix_reg[0][16]_i_10_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\pix[0][16]_i_16_n_0 ,\pix[0][16]_i_17_n_0 ,\pix[0][16]_i_18_n_0 ,\pix[0][16]_i_19_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \pix_reg[0][16]_i_15 
       (.CI(\<const0> ),
        .CO({\pix_reg[0][16]_i_15_n_0 ,\pix_reg[0][16]_i_15_n_1 ,\pix_reg[0][16]_i_15_n_2 ,\pix_reg[0][16]_i_15_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\pix[0][16]_i_20_n_0 ,\pix[0][16]_i_21_n_0 ,\pix[0][16]_i_22_n_0 }),
        .S({\pix[0][16]_i_23_n_0 ,\pix[0][16]_i_24_n_0 ,\pix[0][16]_i_25_n_0 ,\pix[0][16]_i_26_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \pix_reg[0][16]_i_4 
       (.CI(\pix_reg[0][16]_i_5_n_0 ),
        .CO({addr24_in,\pix_reg[0][16]_i_4_n_1 ,\pix_reg[0][16]_i_4_n_2 ,\pix_reg[0][16]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\p0_reg_n_0_[31] ,\<const0> ,\<const0> ,\<const0> }),
        .S({\pix[0][16]_i_6_n_0 ,\pix[0][16]_i_7_n_0 ,\pix[0][16]_i_8_n_0 ,\pix[0][16]_i_9_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \pix_reg[0][16]_i_5 
       (.CI(\pix_reg[0][16]_i_10_n_0 ),
        .CO({\pix_reg[0][16]_i_5_n_0 ,\pix_reg[0][16]_i_5_n_1 ,\pix_reg[0][16]_i_5_n_2 ,\pix_reg[0][16]_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\pix[0][16]_i_11_n_0 ,\pix[0][16]_i_12_n_0 ,\pix[0][16]_i_13_n_0 ,\pix[0][16]_i_14_n_0 }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][1]_i_1_n_0 ),
        .Q(\pix_reg[0] [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][2]_i_1_n_0 ),
        .Q(\pix_reg[0] [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][3]_i_1_n_0 ),
        .Q(\pix_reg[0] [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][4]_i_1_n_0 ),
        .Q(\pix_reg[0] [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][5]_i_1_n_0 ),
        .Q(\pix_reg[0] [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][6]_i_1_n_0 ),
        .Q(\pix_reg[0] [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][7]_i_1_n_0 ),
        .Q(\pix_reg[0] [7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][8]_i_1_n_0 ),
        .Q(\pix_reg[0] [8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[0][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[0][16]_i_1_n_0 ),
        .D(\pix[0][9]_i_1_n_0 ),
        .Q(\pix_reg[0] [9]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][-1111111109] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][-1111111109]_i_1_n_0 ),
        .Q(\pix_reg[1][-_n_0_1111111109] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][-1111111110] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][-1111111110]_i_1_n_0 ),
        .Q(\pix_reg[1][-_n_0_1111111110] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][-1111111111] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][-1111111111]_i_1_n_0 ),
        .Q(\pix_reg[1][-_n_0_1111111111] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][0]_i_1_n_0 ),
        .Q(\pix_reg[1] [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][10]_i_1_n_0 ),
        .Q(\pix_reg[1] [10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][11]_i_1_n_0 ),
        .Q(\pix_reg[1] [11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][12]_i_1_n_0 ),
        .Q(\pix_reg[1] [12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][13]_i_1_n_0 ),
        .Q(\pix_reg[1] [13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][14]_i_1_n_0 ),
        .Q(\pix_reg[1] [14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][15]_i_1_n_0 ),
        .Q(\pix_reg[1] [15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][16]_i_2_n_0 ),
        .Q(\pix_reg[1] [16]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][1]_i_1_n_0 ),
        .Q(\pix_reg[1] [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][2]_i_1_n_0 ),
        .Q(\pix_reg[1] [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][3]_i_1_n_0 ),
        .Q(\pix_reg[1] [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][4]_i_1_n_0 ),
        .Q(\pix_reg[1] [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][5]_i_1_n_0 ),
        .Q(\pix_reg[1] [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][6]_i_1_n_0 ),
        .Q(\pix_reg[1] [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][7]_i_1_n_0 ),
        .Q(\pix_reg[1] [7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][8]_i_1_n_0 ),
        .Q(\pix_reg[1] [8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[1][16]_i_1_n_0 ),
        .D(\pix[1][9]_i_1_n_0 ),
        .Q(\pix_reg[1] [9]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][-1111111109] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][-1111111109]_i_1_n_0 ),
        .Q(\pix_reg[2][-_n_0_1111111109] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][-1111111110] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][-1111111110]_i_1_n_0 ),
        .Q(\pix_reg[2][-_n_0_1111111110] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][-1111111111] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][-1111111111]_i_1_n_0 ),
        .Q(\pix_reg[2][-_n_0_1111111111] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][0]_i_1_n_0 ),
        .Q(\pix_reg[2] [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][10]_i_1_n_0 ),
        .Q(\pix_reg[2] [10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][11]_i_1_n_0 ),
        .Q(\pix_reg[2] [11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][12]_i_1_n_0 ),
        .Q(\pix_reg[2] [12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][13]_i_1_n_0 ),
        .Q(\pix_reg[2] [13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][14]_i_1_n_0 ),
        .Q(\pix_reg[2] [14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][15]_i_1_n_0 ),
        .Q(\pix_reg[2] [15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][16]_i_2_n_0 ),
        .Q(\pix_reg[2] [16]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][1]_i_1_n_0 ),
        .Q(\pix_reg[2] [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][2]_i_1_n_0 ),
        .Q(\pix_reg[2] [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][3]_i_1_n_0 ),
        .Q(\pix_reg[2] [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][4]_i_1_n_0 ),
        .Q(\pix_reg[2] [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][5]_i_1_n_0 ),
        .Q(\pix_reg[2] [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][6]_i_1_n_0 ),
        .Q(\pix_reg[2] [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][7]_i_1_n_0 ),
        .Q(\pix_reg[2] [7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][8]_i_1_n_0 ),
        .Q(\pix_reg[2] [8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[2][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[2][16]_i_1_n_0 ),
        .D(\pix[2][9]_i_1_n_0 ),
        .Q(\pix_reg[2] [9]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][-1111111111] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][-1111111111]_i_1_n_0 ),
        .Q(\pix_reg[3][-_n_0_1111111111] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][0]_i_1_n_0 ),
        .Q(\pix_reg[3] [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][10]_i_1_n_0 ),
        .Q(\pix_reg[3] [10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][11]_i_1_n_0 ),
        .Q(\pix_reg[3] [11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][12]_i_1_n_0 ),
        .Q(\pix_reg[3] [12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][13]_i_1_n_0 ),
        .Q(\pix_reg[3] [13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][14]_i_1_n_0 ),
        .Q(\pix_reg[3] [14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][15]_i_1_n_0 ),
        .Q(\pix_reg[3] [15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][16]_i_2_n_0 ),
        .Q(\pix_reg[3] [16]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][1]_i_1_n_0 ),
        .Q(\pix_reg[3] [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][2]_i_1_n_0 ),
        .Q(\pix_reg[3] [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][3]_i_1_n_0 ),
        .Q(\pix_reg[3] [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][4]_i_1_n_0 ),
        .Q(\pix_reg[3] [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][5]_i_1_n_0 ),
        .Q(\pix_reg[3] [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][6]_i_1_n_0 ),
        .Q(\pix_reg[3] [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][7]_i_1_n_0 ),
        .Q(\pix_reg[3] [7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][8]_i_1_n_0 ),
        .Q(\pix_reg[3] [8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[3][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[3][16]_i_1_n_0 ),
        .D(\pix[3][9]_i_1_n_0 ),
        .Q(\pix_reg[3] [9]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[0]),
        .Q(\pix_reg[4] [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[10]),
        .Q(\pix_reg[4] [10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[11]),
        .Q(\pix_reg[4] [11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[12]),
        .Q(\pix_reg[4] [12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[13]),
        .Q(\pix_reg[4] [13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[14]),
        .Q(\pix_reg[4] [14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[15]),
        .Q(\pix_reg[4] [15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[16]),
        .Q(\pix_reg[4] [16]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][17] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[17]),
        .Q(\pix_reg[4] [17]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][18] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[18]),
        .Q(\pix_reg[4] [18]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][19] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[19]),
        .Q(\pix_reg[4] [19]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[1]),
        .Q(\pix_reg[4] [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[2]),
        .Q(\pix_reg[4] [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[3]),
        .Q(\pix_reg[4] [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[4]),
        .Q(\pix_reg[4] [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[5]),
        .Q(\pix_reg[4] [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[6]),
        .Q(\pix_reg[4] [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[7]),
        .Q(\pix_reg[4] [7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[8]),
        .Q(\pix_reg[4] [8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[4][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[4][19]_i_1_n_0 ),
        .D(idata_IBUF[9]),
        .Q(\pix_reg[4] [9]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][-1111111111] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[17]),
        .Q(\pix_reg[5][-_n_0_1111111111] ),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[0]),
        .Q(\pix_reg[5] [0]),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[10]),
        .Q(\pix_reg[5] [10]),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[11]),
        .Q(\pix_reg[5] [11]),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[12]),
        .Q(\pix_reg[5] [12]),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[13]),
        .Q(\pix_reg[5] [13]),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[14]),
        .Q(\pix_reg[5] [14]),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[15]),
        .Q(\pix_reg[5] [15]),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[16]),
        .Q(\pix_reg[5] [16]),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[1]),
        .Q(\pix_reg[5] [1]),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[2]),
        .Q(\pix_reg[5] [2]),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[3]),
        .Q(\pix_reg[5] [3]),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[4]),
        .Q(\pix_reg[5] [4]),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[5]),
        .Q(\pix_reg[5] [5]),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[6]),
        .Q(\pix_reg[5] [6]),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[7]),
        .Q(\pix_reg[5] [7]),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[8]),
        .Q(\pix_reg[5] [8]),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[5][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[5][16]_i_2_n_0 ),
        .D(idata_IBUF[9]),
        .Q(\pix_reg[5] [9]),
        .R(\pix[5][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][-1111111109] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\pix[6][-1111111109]_i_1_n_0 ),
        .Q(\pix_reg[6][-_n_0_1111111109] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][-1111111110] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\pix[6][-1111111110]_i_1_n_0 ),
        .Q(\pix_reg[6][-_n_0_1111111110] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][-1111111111] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][-1111111111]_i_1_n_0 ),
        .Q(\pix_reg[6][-_n_0_1111111111] ),
        .R(\pix[6][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][0]_i_1_n_0 ),
        .Q(\pix_reg[6] [0]),
        .R(\pix[6][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][10]_i_1_n_0 ),
        .Q(\pix_reg[6] [10]),
        .R(\pix[6][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][11]_i_1_n_0 ),
        .Q(\pix_reg[6] [11]),
        .R(\pix[6][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][12]_i_1_n_0 ),
        .Q(\pix_reg[6] [12]),
        .R(\pix[6][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][13]_i_1_n_0 ),
        .Q(\pix_reg[6] [13]),
        .R(\pix[6][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][14]_i_1_n_0 ),
        .Q(\pix_reg[6] [14]),
        .R(\pix[6][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][15]_i_1_n_0 ),
        .Q(\pix_reg[6] [15]),
        .R(\pix[6][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][16]_i_3_n_0 ),
        .Q(\pix_reg[6] [16]),
        .R(\pix[6][16]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \pix_reg[6][16]_i_14 
       (.CI(\pix_reg[6][16]_i_23_n_0 ),
        .CO({\pix_reg[6][16]_i_14_n_0 ,\pix_reg[6][16]_i_14_n_1 ,\pix_reg[6][16]_i_14_n_2 ,\pix_reg[6][16]_i_14_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\pix[6][16]_i_24_n_0 ,\pix[6][16]_i_25_n_0 ,\<const0> ,\<const0> }),
        .S({\pix[6][16]_i_26_n_0 ,\pix[6][16]_i_27_n_0 ,\pix[6][16]_i_28_n_0 ,\pix[6][16]_i_29_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \pix_reg[6][16]_i_23 
       (.CI(\<const0> ),
        .CO({\pix_reg[6][16]_i_23_n_0 ,\pix_reg[6][16]_i_23_n_1 ,\pix_reg[6][16]_i_23_n_2 ,\pix_reg[6][16]_i_23_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\pix[6][16]_i_30_n_0 ,\pix[6][16]_i_31_n_0 ,\pix[6][16]_i_32_n_0 }),
        .S({\pix[6][16]_i_33_n_0 ,\pix[6][16]_i_34_n_0 ,\pix[6][16]_i_35_n_0 ,\pix[6][16]_i_36_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \pix_reg[6][16]_i_4 
       (.CI(\pix_reg[6][16]_i_5_n_0 ),
        .CO({\pix_reg[6][16]_i_4_n_0 ,\pix_reg[6][16]_i_4_n_1 ,\pix_reg[6][16]_i_4_n_2 ,\pix_reg[6][16]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\pix[6][16]_i_6_n_0 ,\pix[6][16]_i_7_n_0 ,\pix[6][16]_i_8_n_0 ,\pix[6][16]_i_9_n_0 }),
        .S({\pix[6][16]_i_10_n_0 ,\pix[6][16]_i_11_n_0 ,\pix[6][16]_i_12_n_0 ,\pix[6][16]_i_13_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \pix_reg[6][16]_i_5 
       (.CI(\pix_reg[6][16]_i_14_n_0 ),
        .CO({\pix_reg[6][16]_i_5_n_0 ,\pix_reg[6][16]_i_5_n_1 ,\pix_reg[6][16]_i_5_n_2 ,\pix_reg[6][16]_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\pix[6][16]_i_15_n_0 ,\pix[6][16]_i_16_n_0 ,\pix[6][16]_i_17_n_0 ,\pix[6][16]_i_18_n_0 }),
        .S({\pix[6][16]_i_19_n_0 ,\pix[6][16]_i_20_n_0 ,\pix[6][16]_i_21_n_0 ,\pix[6][16]_i_22_n_0 }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][1]_i_1_n_0 ),
        .Q(\pix_reg[6] [1]),
        .R(\pix[6][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][2]_i_1_n_0 ),
        .Q(\pix_reg[6] [2]),
        .R(\pix[6][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][3]_i_1_n_0 ),
        .Q(\pix_reg[6] [3]),
        .R(\pix[6][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][4]_i_1_n_0 ),
        .Q(\pix_reg[6] [4]),
        .R(\pix[6][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][5]_i_1_n_0 ),
        .Q(\pix_reg[6] [5]),
        .R(\pix[6][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][6]_i_1_n_0 ),
        .Q(\pix_reg[6] [6]),
        .R(\pix[6][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][7]_i_1_n_0 ),
        .Q(\pix_reg[6] [7]),
        .R(\pix[6][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][8]_i_1_n_0 ),
        .Q(\pix_reg[6] [8]),
        .R(\pix[6][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[6][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[6][16]_i_2_n_0 ),
        .D(\pix[6][9]_i_1_n_0 ),
        .Q(\pix_reg[6] [9]),
        .R(\pix[6][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][-1111111111] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][-1111111111]_i_1_n_0 ),
        .Q(\pix_reg[7][-_n_0_1111111111] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][0]_i_1_n_0 ),
        .Q(\pix_reg[7] [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][10]_i_1_n_0 ),
        .Q(\pix_reg[7] [10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][11]_i_1_n_0 ),
        .Q(\pix_reg[7] [11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][12]_i_1_n_0 ),
        .Q(\pix_reg[7] [12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][13]_i_1_n_0 ),
        .Q(\pix_reg[7] [13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][14]_i_1_n_0 ),
        .Q(\pix_reg[7] [14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][15]_i_1_n_0 ),
        .Q(\pix_reg[7] [15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][16] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][16]_i_3_n_0 ),
        .Q(\pix_reg[7] [16]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][1]_i_1_n_0 ),
        .Q(\pix_reg[7] [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][2]_i_1_n_0 ),
        .Q(\pix_reg[7] [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][3]_i_1_n_0 ),
        .Q(\pix_reg[7] [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][4]_i_1_n_0 ),
        .Q(\pix_reg[7] [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][5]_i_1_n_0 ),
        .Q(\pix_reg[7] [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][6]_i_1_n_0 ),
        .Q(\pix_reg[7] [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][7]_i_1_n_0 ),
        .Q(\pix_reg[7] [7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][8]_i_1_n_0 ),
        .Q(\pix_reg[7] [8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[7][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\pix[7][16]_i_1_n_0 ),
        .D(\pix[6][9]_i_1_n_0 ),
        .Q(\pix_reg[7] [9]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][-1111111109] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\pix[8][-1111111109]_i_1_n_0 ),
        .Q(\pix_reg[8][-_n_0_1111111109] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][-1111111110] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\pix[8][-1111111110]_i_1_n_0 ),
        .Q(\pix_reg[8][-_n_0_1111111110] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][-1111111111] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][-1111111111]_i_1_n_0 ),
        .Q(\pix_reg[8][-_n_0_1111111111] ),
        .R(\pix[8][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][0] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][0]_i_1_n_0 ),
        .Q(\pix_reg[8] [0]),
        .R(\pix[8][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][10] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][10]_i_1_n_0 ),
        .Q(\pix_reg[8] [10]),
        .R(\pix[8][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][11] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][11]_i_1_n_0 ),
        .Q(\pix_reg[8] [11]),
        .R(\pix[8][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][12] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][12]_i_1_n_0 ),
        .Q(\pix_reg[8] [12]),
        .R(\pix[8][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][13] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][13]_i_1_n_0 ),
        .Q(\pix_reg[8] [13]),
        .R(\pix[8][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][14] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][14]_i_1_n_0 ),
        .Q(\pix_reg[8] [14]),
        .R(\pix[8][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][15] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][15]_i_1_n_0 ),
        .Q(\pix_reg[8] [15]),
        .R(\pix[8][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][16] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][16]_i_3_n_0 ),
        .Q(\pix_reg[8] [16]),
        .R(\pix[8][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][1] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][1]_i_1_n_0 ),
        .Q(\pix_reg[8] [1]),
        .R(\pix[8][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][2] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][2]_i_1_n_0 ),
        .Q(\pix_reg[8] [2]),
        .R(\pix[8][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][3] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][3]_i_1_n_0 ),
        .Q(\pix_reg[8] [3]),
        .R(\pix[8][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][4] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][4]_i_1_n_0 ),
        .Q(\pix_reg[8] [4]),
        .R(\pix[8][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][5] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][5]_i_1_n_0 ),
        .Q(\pix_reg[8] [5]),
        .R(\pix[8][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][6] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][6]_i_1_n_0 ),
        .Q(\pix_reg[8] [6]),
        .R(\pix[8][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][7] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][7]_i_1_n_0 ),
        .Q(\pix_reg[8] [7]),
        .R(\pix[8][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][8] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][8]_i_1_n_0 ),
        .Q(\pix_reg[8] [8]),
        .R(\pix[8][16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pix_reg[8][9] 
       (.C(clk_IBUF_BUFG),
        .CE(pix),
        .D(\pix[6][9]_i_1_n_0 ),
        .Q(\pix_reg[8] [9]),
        .R(\pix[8][16]_i_1_n_0 ));
  IBUF ready_IBUF_inst
       (.I(ready),
        .O(ready_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule
