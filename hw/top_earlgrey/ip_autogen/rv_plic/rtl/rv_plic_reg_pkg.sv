// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Package auto-generated by `reggen` containing data structure

package rv_plic_reg_pkg;

  // Param list
  parameter int NumSrc = 186;
  parameter int NumTarget = 1;
  parameter int PrioWidth = 2;
  parameter int NumAlerts = 1;

  // Address widths within the block
  parameter int BlockAw = 27;

  // Number of registers for every interface
  parameter int NumRegs = 202;

  ////////////////////////////
  // Typedefs for registers //
  ////////////////////////////

  typedef struct packed {
    logic [1:0]  q;
  } rv_plic_reg2hw_prio_mreg_t;

  typedef struct packed {
    logic        q;
  } rv_plic_reg2hw_ie0_mreg_t;

  typedef struct packed {
    logic [1:0]  q;
  } rv_plic_reg2hw_threshold0_reg_t;

  typedef struct packed {
    logic [7:0]  q;
    logic        qe;
    logic        re;
  } rv_plic_reg2hw_cc0_reg_t;

  typedef struct packed {
    logic        q;
  } rv_plic_reg2hw_msip0_reg_t;

  typedef struct packed {
    logic        q;
    logic        qe;
  } rv_plic_reg2hw_alert_test_reg_t;

  typedef struct packed {
    logic        d;
    logic        de;
  } rv_plic_hw2reg_ip_mreg_t;

  typedef struct packed {
    logic [7:0]  d;
  } rv_plic_hw2reg_cc0_reg_t;

  // Register -> HW type
  typedef struct packed {
    rv_plic_reg2hw_prio_mreg_t [185:0] prio; // [572:201]
    rv_plic_reg2hw_ie0_mreg_t [185:0] ie0; // [200:15]
    rv_plic_reg2hw_threshold0_reg_t threshold0; // [14:13]
    rv_plic_reg2hw_cc0_reg_t cc0; // [12:3]
    rv_plic_reg2hw_msip0_reg_t msip0; // [2:2]
    rv_plic_reg2hw_alert_test_reg_t alert_test; // [1:0]
  } rv_plic_reg2hw_t;

  // HW -> register type
  typedef struct packed {
    rv_plic_hw2reg_ip_mreg_t [185:0] ip; // [379:8]
    rv_plic_hw2reg_cc0_reg_t cc0; // [7:0]
  } rv_plic_hw2reg_t;

  // Register offsets
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_0_OFFSET = 27'h 0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_1_OFFSET = 27'h 4;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_2_OFFSET = 27'h 8;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_3_OFFSET = 27'h c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_4_OFFSET = 27'h 10;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_5_OFFSET = 27'h 14;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_6_OFFSET = 27'h 18;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_7_OFFSET = 27'h 1c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_8_OFFSET = 27'h 20;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_9_OFFSET = 27'h 24;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_10_OFFSET = 27'h 28;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_11_OFFSET = 27'h 2c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_12_OFFSET = 27'h 30;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_13_OFFSET = 27'h 34;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_14_OFFSET = 27'h 38;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_15_OFFSET = 27'h 3c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_16_OFFSET = 27'h 40;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_17_OFFSET = 27'h 44;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_18_OFFSET = 27'h 48;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_19_OFFSET = 27'h 4c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_20_OFFSET = 27'h 50;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_21_OFFSET = 27'h 54;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_22_OFFSET = 27'h 58;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_23_OFFSET = 27'h 5c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_24_OFFSET = 27'h 60;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_25_OFFSET = 27'h 64;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_26_OFFSET = 27'h 68;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_27_OFFSET = 27'h 6c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_28_OFFSET = 27'h 70;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_29_OFFSET = 27'h 74;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_30_OFFSET = 27'h 78;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_31_OFFSET = 27'h 7c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_32_OFFSET = 27'h 80;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_33_OFFSET = 27'h 84;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_34_OFFSET = 27'h 88;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_35_OFFSET = 27'h 8c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_36_OFFSET = 27'h 90;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_37_OFFSET = 27'h 94;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_38_OFFSET = 27'h 98;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_39_OFFSET = 27'h 9c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_40_OFFSET = 27'h a0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_41_OFFSET = 27'h a4;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_42_OFFSET = 27'h a8;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_43_OFFSET = 27'h ac;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_44_OFFSET = 27'h b0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_45_OFFSET = 27'h b4;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_46_OFFSET = 27'h b8;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_47_OFFSET = 27'h bc;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_48_OFFSET = 27'h c0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_49_OFFSET = 27'h c4;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_50_OFFSET = 27'h c8;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_51_OFFSET = 27'h cc;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_52_OFFSET = 27'h d0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_53_OFFSET = 27'h d4;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_54_OFFSET = 27'h d8;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_55_OFFSET = 27'h dc;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_56_OFFSET = 27'h e0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_57_OFFSET = 27'h e4;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_58_OFFSET = 27'h e8;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_59_OFFSET = 27'h ec;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_60_OFFSET = 27'h f0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_61_OFFSET = 27'h f4;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_62_OFFSET = 27'h f8;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_63_OFFSET = 27'h fc;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_64_OFFSET = 27'h 100;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_65_OFFSET = 27'h 104;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_66_OFFSET = 27'h 108;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_67_OFFSET = 27'h 10c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_68_OFFSET = 27'h 110;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_69_OFFSET = 27'h 114;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_70_OFFSET = 27'h 118;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_71_OFFSET = 27'h 11c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_72_OFFSET = 27'h 120;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_73_OFFSET = 27'h 124;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_74_OFFSET = 27'h 128;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_75_OFFSET = 27'h 12c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_76_OFFSET = 27'h 130;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_77_OFFSET = 27'h 134;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_78_OFFSET = 27'h 138;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_79_OFFSET = 27'h 13c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_80_OFFSET = 27'h 140;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_81_OFFSET = 27'h 144;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_82_OFFSET = 27'h 148;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_83_OFFSET = 27'h 14c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_84_OFFSET = 27'h 150;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_85_OFFSET = 27'h 154;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_86_OFFSET = 27'h 158;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_87_OFFSET = 27'h 15c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_88_OFFSET = 27'h 160;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_89_OFFSET = 27'h 164;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_90_OFFSET = 27'h 168;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_91_OFFSET = 27'h 16c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_92_OFFSET = 27'h 170;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_93_OFFSET = 27'h 174;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_94_OFFSET = 27'h 178;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_95_OFFSET = 27'h 17c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_96_OFFSET = 27'h 180;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_97_OFFSET = 27'h 184;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_98_OFFSET = 27'h 188;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_99_OFFSET = 27'h 18c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_100_OFFSET = 27'h 190;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_101_OFFSET = 27'h 194;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_102_OFFSET = 27'h 198;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_103_OFFSET = 27'h 19c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_104_OFFSET = 27'h 1a0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_105_OFFSET = 27'h 1a4;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_106_OFFSET = 27'h 1a8;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_107_OFFSET = 27'h 1ac;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_108_OFFSET = 27'h 1b0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_109_OFFSET = 27'h 1b4;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_110_OFFSET = 27'h 1b8;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_111_OFFSET = 27'h 1bc;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_112_OFFSET = 27'h 1c0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_113_OFFSET = 27'h 1c4;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_114_OFFSET = 27'h 1c8;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_115_OFFSET = 27'h 1cc;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_116_OFFSET = 27'h 1d0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_117_OFFSET = 27'h 1d4;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_118_OFFSET = 27'h 1d8;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_119_OFFSET = 27'h 1dc;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_120_OFFSET = 27'h 1e0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_121_OFFSET = 27'h 1e4;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_122_OFFSET = 27'h 1e8;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_123_OFFSET = 27'h 1ec;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_124_OFFSET = 27'h 1f0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_125_OFFSET = 27'h 1f4;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_126_OFFSET = 27'h 1f8;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_127_OFFSET = 27'h 1fc;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_128_OFFSET = 27'h 200;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_129_OFFSET = 27'h 204;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_130_OFFSET = 27'h 208;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_131_OFFSET = 27'h 20c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_132_OFFSET = 27'h 210;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_133_OFFSET = 27'h 214;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_134_OFFSET = 27'h 218;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_135_OFFSET = 27'h 21c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_136_OFFSET = 27'h 220;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_137_OFFSET = 27'h 224;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_138_OFFSET = 27'h 228;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_139_OFFSET = 27'h 22c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_140_OFFSET = 27'h 230;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_141_OFFSET = 27'h 234;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_142_OFFSET = 27'h 238;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_143_OFFSET = 27'h 23c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_144_OFFSET = 27'h 240;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_145_OFFSET = 27'h 244;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_146_OFFSET = 27'h 248;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_147_OFFSET = 27'h 24c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_148_OFFSET = 27'h 250;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_149_OFFSET = 27'h 254;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_150_OFFSET = 27'h 258;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_151_OFFSET = 27'h 25c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_152_OFFSET = 27'h 260;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_153_OFFSET = 27'h 264;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_154_OFFSET = 27'h 268;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_155_OFFSET = 27'h 26c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_156_OFFSET = 27'h 270;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_157_OFFSET = 27'h 274;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_158_OFFSET = 27'h 278;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_159_OFFSET = 27'h 27c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_160_OFFSET = 27'h 280;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_161_OFFSET = 27'h 284;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_162_OFFSET = 27'h 288;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_163_OFFSET = 27'h 28c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_164_OFFSET = 27'h 290;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_165_OFFSET = 27'h 294;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_166_OFFSET = 27'h 298;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_167_OFFSET = 27'h 29c;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_168_OFFSET = 27'h 2a0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_169_OFFSET = 27'h 2a4;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_170_OFFSET = 27'h 2a8;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_171_OFFSET = 27'h 2ac;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_172_OFFSET = 27'h 2b0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_173_OFFSET = 27'h 2b4;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_174_OFFSET = 27'h 2b8;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_175_OFFSET = 27'h 2bc;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_176_OFFSET = 27'h 2c0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_177_OFFSET = 27'h 2c4;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_178_OFFSET = 27'h 2c8;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_179_OFFSET = 27'h 2cc;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_180_OFFSET = 27'h 2d0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_181_OFFSET = 27'h 2d4;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_182_OFFSET = 27'h 2d8;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_183_OFFSET = 27'h 2dc;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_184_OFFSET = 27'h 2e0;
  parameter logic [BlockAw-1:0] RV_PLIC_PRIO_185_OFFSET = 27'h 2e4;
  parameter logic [BlockAw-1:0] RV_PLIC_IP_0_OFFSET = 27'h 1000;
  parameter logic [BlockAw-1:0] RV_PLIC_IP_1_OFFSET = 27'h 1004;
  parameter logic [BlockAw-1:0] RV_PLIC_IP_2_OFFSET = 27'h 1008;
  parameter logic [BlockAw-1:0] RV_PLIC_IP_3_OFFSET = 27'h 100c;
  parameter logic [BlockAw-1:0] RV_PLIC_IP_4_OFFSET = 27'h 1010;
  parameter logic [BlockAw-1:0] RV_PLIC_IP_5_OFFSET = 27'h 1014;
  parameter logic [BlockAw-1:0] RV_PLIC_IE0_0_OFFSET = 27'h 2000;
  parameter logic [BlockAw-1:0] RV_PLIC_IE0_1_OFFSET = 27'h 2004;
  parameter logic [BlockAw-1:0] RV_PLIC_IE0_2_OFFSET = 27'h 2008;
  parameter logic [BlockAw-1:0] RV_PLIC_IE0_3_OFFSET = 27'h 200c;
  parameter logic [BlockAw-1:0] RV_PLIC_IE0_4_OFFSET = 27'h 2010;
  parameter logic [BlockAw-1:0] RV_PLIC_IE0_5_OFFSET = 27'h 2014;
  parameter logic [BlockAw-1:0] RV_PLIC_THRESHOLD0_OFFSET = 27'h 200000;
  parameter logic [BlockAw-1:0] RV_PLIC_CC0_OFFSET = 27'h 200004;
  parameter logic [BlockAw-1:0] RV_PLIC_MSIP0_OFFSET = 27'h 4000000;
  parameter logic [BlockAw-1:0] RV_PLIC_ALERT_TEST_OFFSET = 27'h 4004000;

  // Reset values for hwext registers and their fields
  parameter logic [7:0] RV_PLIC_CC0_RESVAL = 8'h 0;
  parameter logic [0:0] RV_PLIC_ALERT_TEST_RESVAL = 1'h 0;

  // Register index
  typedef enum int {
    RV_PLIC_PRIO_0,
    RV_PLIC_PRIO_1,
    RV_PLIC_PRIO_2,
    RV_PLIC_PRIO_3,
    RV_PLIC_PRIO_4,
    RV_PLIC_PRIO_5,
    RV_PLIC_PRIO_6,
    RV_PLIC_PRIO_7,
    RV_PLIC_PRIO_8,
    RV_PLIC_PRIO_9,
    RV_PLIC_PRIO_10,
    RV_PLIC_PRIO_11,
    RV_PLIC_PRIO_12,
    RV_PLIC_PRIO_13,
    RV_PLIC_PRIO_14,
    RV_PLIC_PRIO_15,
    RV_PLIC_PRIO_16,
    RV_PLIC_PRIO_17,
    RV_PLIC_PRIO_18,
    RV_PLIC_PRIO_19,
    RV_PLIC_PRIO_20,
    RV_PLIC_PRIO_21,
    RV_PLIC_PRIO_22,
    RV_PLIC_PRIO_23,
    RV_PLIC_PRIO_24,
    RV_PLIC_PRIO_25,
    RV_PLIC_PRIO_26,
    RV_PLIC_PRIO_27,
    RV_PLIC_PRIO_28,
    RV_PLIC_PRIO_29,
    RV_PLIC_PRIO_30,
    RV_PLIC_PRIO_31,
    RV_PLIC_PRIO_32,
    RV_PLIC_PRIO_33,
    RV_PLIC_PRIO_34,
    RV_PLIC_PRIO_35,
    RV_PLIC_PRIO_36,
    RV_PLIC_PRIO_37,
    RV_PLIC_PRIO_38,
    RV_PLIC_PRIO_39,
    RV_PLIC_PRIO_40,
    RV_PLIC_PRIO_41,
    RV_PLIC_PRIO_42,
    RV_PLIC_PRIO_43,
    RV_PLIC_PRIO_44,
    RV_PLIC_PRIO_45,
    RV_PLIC_PRIO_46,
    RV_PLIC_PRIO_47,
    RV_PLIC_PRIO_48,
    RV_PLIC_PRIO_49,
    RV_PLIC_PRIO_50,
    RV_PLIC_PRIO_51,
    RV_PLIC_PRIO_52,
    RV_PLIC_PRIO_53,
    RV_PLIC_PRIO_54,
    RV_PLIC_PRIO_55,
    RV_PLIC_PRIO_56,
    RV_PLIC_PRIO_57,
    RV_PLIC_PRIO_58,
    RV_PLIC_PRIO_59,
    RV_PLIC_PRIO_60,
    RV_PLIC_PRIO_61,
    RV_PLIC_PRIO_62,
    RV_PLIC_PRIO_63,
    RV_PLIC_PRIO_64,
    RV_PLIC_PRIO_65,
    RV_PLIC_PRIO_66,
    RV_PLIC_PRIO_67,
    RV_PLIC_PRIO_68,
    RV_PLIC_PRIO_69,
    RV_PLIC_PRIO_70,
    RV_PLIC_PRIO_71,
    RV_PLIC_PRIO_72,
    RV_PLIC_PRIO_73,
    RV_PLIC_PRIO_74,
    RV_PLIC_PRIO_75,
    RV_PLIC_PRIO_76,
    RV_PLIC_PRIO_77,
    RV_PLIC_PRIO_78,
    RV_PLIC_PRIO_79,
    RV_PLIC_PRIO_80,
    RV_PLIC_PRIO_81,
    RV_PLIC_PRIO_82,
    RV_PLIC_PRIO_83,
    RV_PLIC_PRIO_84,
    RV_PLIC_PRIO_85,
    RV_PLIC_PRIO_86,
    RV_PLIC_PRIO_87,
    RV_PLIC_PRIO_88,
    RV_PLIC_PRIO_89,
    RV_PLIC_PRIO_90,
    RV_PLIC_PRIO_91,
    RV_PLIC_PRIO_92,
    RV_PLIC_PRIO_93,
    RV_PLIC_PRIO_94,
    RV_PLIC_PRIO_95,
    RV_PLIC_PRIO_96,
    RV_PLIC_PRIO_97,
    RV_PLIC_PRIO_98,
    RV_PLIC_PRIO_99,
    RV_PLIC_PRIO_100,
    RV_PLIC_PRIO_101,
    RV_PLIC_PRIO_102,
    RV_PLIC_PRIO_103,
    RV_PLIC_PRIO_104,
    RV_PLIC_PRIO_105,
    RV_PLIC_PRIO_106,
    RV_PLIC_PRIO_107,
    RV_PLIC_PRIO_108,
    RV_PLIC_PRIO_109,
    RV_PLIC_PRIO_110,
    RV_PLIC_PRIO_111,
    RV_PLIC_PRIO_112,
    RV_PLIC_PRIO_113,
    RV_PLIC_PRIO_114,
    RV_PLIC_PRIO_115,
    RV_PLIC_PRIO_116,
    RV_PLIC_PRIO_117,
    RV_PLIC_PRIO_118,
    RV_PLIC_PRIO_119,
    RV_PLIC_PRIO_120,
    RV_PLIC_PRIO_121,
    RV_PLIC_PRIO_122,
    RV_PLIC_PRIO_123,
    RV_PLIC_PRIO_124,
    RV_PLIC_PRIO_125,
    RV_PLIC_PRIO_126,
    RV_PLIC_PRIO_127,
    RV_PLIC_PRIO_128,
    RV_PLIC_PRIO_129,
    RV_PLIC_PRIO_130,
    RV_PLIC_PRIO_131,
    RV_PLIC_PRIO_132,
    RV_PLIC_PRIO_133,
    RV_PLIC_PRIO_134,
    RV_PLIC_PRIO_135,
    RV_PLIC_PRIO_136,
    RV_PLIC_PRIO_137,
    RV_PLIC_PRIO_138,
    RV_PLIC_PRIO_139,
    RV_PLIC_PRIO_140,
    RV_PLIC_PRIO_141,
    RV_PLIC_PRIO_142,
    RV_PLIC_PRIO_143,
    RV_PLIC_PRIO_144,
    RV_PLIC_PRIO_145,
    RV_PLIC_PRIO_146,
    RV_PLIC_PRIO_147,
    RV_PLIC_PRIO_148,
    RV_PLIC_PRIO_149,
    RV_PLIC_PRIO_150,
    RV_PLIC_PRIO_151,
    RV_PLIC_PRIO_152,
    RV_PLIC_PRIO_153,
    RV_PLIC_PRIO_154,
    RV_PLIC_PRIO_155,
    RV_PLIC_PRIO_156,
    RV_PLIC_PRIO_157,
    RV_PLIC_PRIO_158,
    RV_PLIC_PRIO_159,
    RV_PLIC_PRIO_160,
    RV_PLIC_PRIO_161,
    RV_PLIC_PRIO_162,
    RV_PLIC_PRIO_163,
    RV_PLIC_PRIO_164,
    RV_PLIC_PRIO_165,
    RV_PLIC_PRIO_166,
    RV_PLIC_PRIO_167,
    RV_PLIC_PRIO_168,
    RV_PLIC_PRIO_169,
    RV_PLIC_PRIO_170,
    RV_PLIC_PRIO_171,
    RV_PLIC_PRIO_172,
    RV_PLIC_PRIO_173,
    RV_PLIC_PRIO_174,
    RV_PLIC_PRIO_175,
    RV_PLIC_PRIO_176,
    RV_PLIC_PRIO_177,
    RV_PLIC_PRIO_178,
    RV_PLIC_PRIO_179,
    RV_PLIC_PRIO_180,
    RV_PLIC_PRIO_181,
    RV_PLIC_PRIO_182,
    RV_PLIC_PRIO_183,
    RV_PLIC_PRIO_184,
    RV_PLIC_PRIO_185,
    RV_PLIC_IP_0,
    RV_PLIC_IP_1,
    RV_PLIC_IP_2,
    RV_PLIC_IP_3,
    RV_PLIC_IP_4,
    RV_PLIC_IP_5,
    RV_PLIC_IE0_0,
    RV_PLIC_IE0_1,
    RV_PLIC_IE0_2,
    RV_PLIC_IE0_3,
    RV_PLIC_IE0_4,
    RV_PLIC_IE0_5,
    RV_PLIC_THRESHOLD0,
    RV_PLIC_CC0,
    RV_PLIC_MSIP0,
    RV_PLIC_ALERT_TEST
  } rv_plic_id_e;

  // Register width information to check illegal writes
  parameter logic [3:0] RV_PLIC_PERMIT [202] = '{
    4'b 0001, // index[  0] RV_PLIC_PRIO_0
    4'b 0001, // index[  1] RV_PLIC_PRIO_1
    4'b 0001, // index[  2] RV_PLIC_PRIO_2
    4'b 0001, // index[  3] RV_PLIC_PRIO_3
    4'b 0001, // index[  4] RV_PLIC_PRIO_4
    4'b 0001, // index[  5] RV_PLIC_PRIO_5
    4'b 0001, // index[  6] RV_PLIC_PRIO_6
    4'b 0001, // index[  7] RV_PLIC_PRIO_7
    4'b 0001, // index[  8] RV_PLIC_PRIO_8
    4'b 0001, // index[  9] RV_PLIC_PRIO_9
    4'b 0001, // index[ 10] RV_PLIC_PRIO_10
    4'b 0001, // index[ 11] RV_PLIC_PRIO_11
    4'b 0001, // index[ 12] RV_PLIC_PRIO_12
    4'b 0001, // index[ 13] RV_PLIC_PRIO_13
    4'b 0001, // index[ 14] RV_PLIC_PRIO_14
    4'b 0001, // index[ 15] RV_PLIC_PRIO_15
    4'b 0001, // index[ 16] RV_PLIC_PRIO_16
    4'b 0001, // index[ 17] RV_PLIC_PRIO_17
    4'b 0001, // index[ 18] RV_PLIC_PRIO_18
    4'b 0001, // index[ 19] RV_PLIC_PRIO_19
    4'b 0001, // index[ 20] RV_PLIC_PRIO_20
    4'b 0001, // index[ 21] RV_PLIC_PRIO_21
    4'b 0001, // index[ 22] RV_PLIC_PRIO_22
    4'b 0001, // index[ 23] RV_PLIC_PRIO_23
    4'b 0001, // index[ 24] RV_PLIC_PRIO_24
    4'b 0001, // index[ 25] RV_PLIC_PRIO_25
    4'b 0001, // index[ 26] RV_PLIC_PRIO_26
    4'b 0001, // index[ 27] RV_PLIC_PRIO_27
    4'b 0001, // index[ 28] RV_PLIC_PRIO_28
    4'b 0001, // index[ 29] RV_PLIC_PRIO_29
    4'b 0001, // index[ 30] RV_PLIC_PRIO_30
    4'b 0001, // index[ 31] RV_PLIC_PRIO_31
    4'b 0001, // index[ 32] RV_PLIC_PRIO_32
    4'b 0001, // index[ 33] RV_PLIC_PRIO_33
    4'b 0001, // index[ 34] RV_PLIC_PRIO_34
    4'b 0001, // index[ 35] RV_PLIC_PRIO_35
    4'b 0001, // index[ 36] RV_PLIC_PRIO_36
    4'b 0001, // index[ 37] RV_PLIC_PRIO_37
    4'b 0001, // index[ 38] RV_PLIC_PRIO_38
    4'b 0001, // index[ 39] RV_PLIC_PRIO_39
    4'b 0001, // index[ 40] RV_PLIC_PRIO_40
    4'b 0001, // index[ 41] RV_PLIC_PRIO_41
    4'b 0001, // index[ 42] RV_PLIC_PRIO_42
    4'b 0001, // index[ 43] RV_PLIC_PRIO_43
    4'b 0001, // index[ 44] RV_PLIC_PRIO_44
    4'b 0001, // index[ 45] RV_PLIC_PRIO_45
    4'b 0001, // index[ 46] RV_PLIC_PRIO_46
    4'b 0001, // index[ 47] RV_PLIC_PRIO_47
    4'b 0001, // index[ 48] RV_PLIC_PRIO_48
    4'b 0001, // index[ 49] RV_PLIC_PRIO_49
    4'b 0001, // index[ 50] RV_PLIC_PRIO_50
    4'b 0001, // index[ 51] RV_PLIC_PRIO_51
    4'b 0001, // index[ 52] RV_PLIC_PRIO_52
    4'b 0001, // index[ 53] RV_PLIC_PRIO_53
    4'b 0001, // index[ 54] RV_PLIC_PRIO_54
    4'b 0001, // index[ 55] RV_PLIC_PRIO_55
    4'b 0001, // index[ 56] RV_PLIC_PRIO_56
    4'b 0001, // index[ 57] RV_PLIC_PRIO_57
    4'b 0001, // index[ 58] RV_PLIC_PRIO_58
    4'b 0001, // index[ 59] RV_PLIC_PRIO_59
    4'b 0001, // index[ 60] RV_PLIC_PRIO_60
    4'b 0001, // index[ 61] RV_PLIC_PRIO_61
    4'b 0001, // index[ 62] RV_PLIC_PRIO_62
    4'b 0001, // index[ 63] RV_PLIC_PRIO_63
    4'b 0001, // index[ 64] RV_PLIC_PRIO_64
    4'b 0001, // index[ 65] RV_PLIC_PRIO_65
    4'b 0001, // index[ 66] RV_PLIC_PRIO_66
    4'b 0001, // index[ 67] RV_PLIC_PRIO_67
    4'b 0001, // index[ 68] RV_PLIC_PRIO_68
    4'b 0001, // index[ 69] RV_PLIC_PRIO_69
    4'b 0001, // index[ 70] RV_PLIC_PRIO_70
    4'b 0001, // index[ 71] RV_PLIC_PRIO_71
    4'b 0001, // index[ 72] RV_PLIC_PRIO_72
    4'b 0001, // index[ 73] RV_PLIC_PRIO_73
    4'b 0001, // index[ 74] RV_PLIC_PRIO_74
    4'b 0001, // index[ 75] RV_PLIC_PRIO_75
    4'b 0001, // index[ 76] RV_PLIC_PRIO_76
    4'b 0001, // index[ 77] RV_PLIC_PRIO_77
    4'b 0001, // index[ 78] RV_PLIC_PRIO_78
    4'b 0001, // index[ 79] RV_PLIC_PRIO_79
    4'b 0001, // index[ 80] RV_PLIC_PRIO_80
    4'b 0001, // index[ 81] RV_PLIC_PRIO_81
    4'b 0001, // index[ 82] RV_PLIC_PRIO_82
    4'b 0001, // index[ 83] RV_PLIC_PRIO_83
    4'b 0001, // index[ 84] RV_PLIC_PRIO_84
    4'b 0001, // index[ 85] RV_PLIC_PRIO_85
    4'b 0001, // index[ 86] RV_PLIC_PRIO_86
    4'b 0001, // index[ 87] RV_PLIC_PRIO_87
    4'b 0001, // index[ 88] RV_PLIC_PRIO_88
    4'b 0001, // index[ 89] RV_PLIC_PRIO_89
    4'b 0001, // index[ 90] RV_PLIC_PRIO_90
    4'b 0001, // index[ 91] RV_PLIC_PRIO_91
    4'b 0001, // index[ 92] RV_PLIC_PRIO_92
    4'b 0001, // index[ 93] RV_PLIC_PRIO_93
    4'b 0001, // index[ 94] RV_PLIC_PRIO_94
    4'b 0001, // index[ 95] RV_PLIC_PRIO_95
    4'b 0001, // index[ 96] RV_PLIC_PRIO_96
    4'b 0001, // index[ 97] RV_PLIC_PRIO_97
    4'b 0001, // index[ 98] RV_PLIC_PRIO_98
    4'b 0001, // index[ 99] RV_PLIC_PRIO_99
    4'b 0001, // index[100] RV_PLIC_PRIO_100
    4'b 0001, // index[101] RV_PLIC_PRIO_101
    4'b 0001, // index[102] RV_PLIC_PRIO_102
    4'b 0001, // index[103] RV_PLIC_PRIO_103
    4'b 0001, // index[104] RV_PLIC_PRIO_104
    4'b 0001, // index[105] RV_PLIC_PRIO_105
    4'b 0001, // index[106] RV_PLIC_PRIO_106
    4'b 0001, // index[107] RV_PLIC_PRIO_107
    4'b 0001, // index[108] RV_PLIC_PRIO_108
    4'b 0001, // index[109] RV_PLIC_PRIO_109
    4'b 0001, // index[110] RV_PLIC_PRIO_110
    4'b 0001, // index[111] RV_PLIC_PRIO_111
    4'b 0001, // index[112] RV_PLIC_PRIO_112
    4'b 0001, // index[113] RV_PLIC_PRIO_113
    4'b 0001, // index[114] RV_PLIC_PRIO_114
    4'b 0001, // index[115] RV_PLIC_PRIO_115
    4'b 0001, // index[116] RV_PLIC_PRIO_116
    4'b 0001, // index[117] RV_PLIC_PRIO_117
    4'b 0001, // index[118] RV_PLIC_PRIO_118
    4'b 0001, // index[119] RV_PLIC_PRIO_119
    4'b 0001, // index[120] RV_PLIC_PRIO_120
    4'b 0001, // index[121] RV_PLIC_PRIO_121
    4'b 0001, // index[122] RV_PLIC_PRIO_122
    4'b 0001, // index[123] RV_PLIC_PRIO_123
    4'b 0001, // index[124] RV_PLIC_PRIO_124
    4'b 0001, // index[125] RV_PLIC_PRIO_125
    4'b 0001, // index[126] RV_PLIC_PRIO_126
    4'b 0001, // index[127] RV_PLIC_PRIO_127
    4'b 0001, // index[128] RV_PLIC_PRIO_128
    4'b 0001, // index[129] RV_PLIC_PRIO_129
    4'b 0001, // index[130] RV_PLIC_PRIO_130
    4'b 0001, // index[131] RV_PLIC_PRIO_131
    4'b 0001, // index[132] RV_PLIC_PRIO_132
    4'b 0001, // index[133] RV_PLIC_PRIO_133
    4'b 0001, // index[134] RV_PLIC_PRIO_134
    4'b 0001, // index[135] RV_PLIC_PRIO_135
    4'b 0001, // index[136] RV_PLIC_PRIO_136
    4'b 0001, // index[137] RV_PLIC_PRIO_137
    4'b 0001, // index[138] RV_PLIC_PRIO_138
    4'b 0001, // index[139] RV_PLIC_PRIO_139
    4'b 0001, // index[140] RV_PLIC_PRIO_140
    4'b 0001, // index[141] RV_PLIC_PRIO_141
    4'b 0001, // index[142] RV_PLIC_PRIO_142
    4'b 0001, // index[143] RV_PLIC_PRIO_143
    4'b 0001, // index[144] RV_PLIC_PRIO_144
    4'b 0001, // index[145] RV_PLIC_PRIO_145
    4'b 0001, // index[146] RV_PLIC_PRIO_146
    4'b 0001, // index[147] RV_PLIC_PRIO_147
    4'b 0001, // index[148] RV_PLIC_PRIO_148
    4'b 0001, // index[149] RV_PLIC_PRIO_149
    4'b 0001, // index[150] RV_PLIC_PRIO_150
    4'b 0001, // index[151] RV_PLIC_PRIO_151
    4'b 0001, // index[152] RV_PLIC_PRIO_152
    4'b 0001, // index[153] RV_PLIC_PRIO_153
    4'b 0001, // index[154] RV_PLIC_PRIO_154
    4'b 0001, // index[155] RV_PLIC_PRIO_155
    4'b 0001, // index[156] RV_PLIC_PRIO_156
    4'b 0001, // index[157] RV_PLIC_PRIO_157
    4'b 0001, // index[158] RV_PLIC_PRIO_158
    4'b 0001, // index[159] RV_PLIC_PRIO_159
    4'b 0001, // index[160] RV_PLIC_PRIO_160
    4'b 0001, // index[161] RV_PLIC_PRIO_161
    4'b 0001, // index[162] RV_PLIC_PRIO_162
    4'b 0001, // index[163] RV_PLIC_PRIO_163
    4'b 0001, // index[164] RV_PLIC_PRIO_164
    4'b 0001, // index[165] RV_PLIC_PRIO_165
    4'b 0001, // index[166] RV_PLIC_PRIO_166
    4'b 0001, // index[167] RV_PLIC_PRIO_167
    4'b 0001, // index[168] RV_PLIC_PRIO_168
    4'b 0001, // index[169] RV_PLIC_PRIO_169
    4'b 0001, // index[170] RV_PLIC_PRIO_170
    4'b 0001, // index[171] RV_PLIC_PRIO_171
    4'b 0001, // index[172] RV_PLIC_PRIO_172
    4'b 0001, // index[173] RV_PLIC_PRIO_173
    4'b 0001, // index[174] RV_PLIC_PRIO_174
    4'b 0001, // index[175] RV_PLIC_PRIO_175
    4'b 0001, // index[176] RV_PLIC_PRIO_176
    4'b 0001, // index[177] RV_PLIC_PRIO_177
    4'b 0001, // index[178] RV_PLIC_PRIO_178
    4'b 0001, // index[179] RV_PLIC_PRIO_179
    4'b 0001, // index[180] RV_PLIC_PRIO_180
    4'b 0001, // index[181] RV_PLIC_PRIO_181
    4'b 0001, // index[182] RV_PLIC_PRIO_182
    4'b 0001, // index[183] RV_PLIC_PRIO_183
    4'b 0001, // index[184] RV_PLIC_PRIO_184
    4'b 0001, // index[185] RV_PLIC_PRIO_185
    4'b 1111, // index[186] RV_PLIC_IP_0
    4'b 1111, // index[187] RV_PLIC_IP_1
    4'b 1111, // index[188] RV_PLIC_IP_2
    4'b 1111, // index[189] RV_PLIC_IP_3
    4'b 1111, // index[190] RV_PLIC_IP_4
    4'b 1111, // index[191] RV_PLIC_IP_5
    4'b 1111, // index[192] RV_PLIC_IE0_0
    4'b 1111, // index[193] RV_PLIC_IE0_1
    4'b 1111, // index[194] RV_PLIC_IE0_2
    4'b 1111, // index[195] RV_PLIC_IE0_3
    4'b 1111, // index[196] RV_PLIC_IE0_4
    4'b 1111, // index[197] RV_PLIC_IE0_5
    4'b 0001, // index[198] RV_PLIC_THRESHOLD0
    4'b 0001, // index[199] RV_PLIC_CC0
    4'b 0001, // index[200] RV_PLIC_MSIP0
    4'b 0001  // index[201] RV_PLIC_ALERT_TEST
  };

endpackage
