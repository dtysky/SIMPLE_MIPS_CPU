//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.2 (win64) Build 928826 Thu Jun  5 18:21:07 MDT 2014
//Date        : Mon Jan 19 10:35:47 2015
//Host        : Dtysky running 64-bit major release  (build 9200)
//Command     : generate_target MIPS_CPU.bd
//Design      : MIPS_CPU
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "MIPS_CPU,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=6,numHierBlks=0,maxHierDepth=0}" *) 
module MIPS_CPU
   (inclk,
    reset);
  input inclk;
  input reset;

  wire [31:0]ALU32_0_r;
  wire ALU32_0_z;
  wire [3:0]CONTROL_UNIT_0_aluc;
  wire CONTROL_UNIT_0_aluimm;
  wire CONTROL_UNIT_0_jal;
  wire CONTROL_UNIT_0_m2reg;
  wire [1:0]CONTROL_UNIT_0_pcsource;
  wire CONTROL_UNIT_0_regrt;
  wire CONTROL_UNIT_0_sext;
  wire CONTROL_UNIT_0_shfit;
  wire CONTROL_UNIT_0_wmem;
  wire CONTROL_UNIT_0_wreg;
  wire [31:0]DATAPATH_0_alu_a;
  wire [31:0]DATAPATH_0_alu_aluc;
  wire [31:0]DATAPATH_0_alu_b;
  wire [5:0]DATAPATH_0_con_func;
  wire [5:0]DATAPATH_0_con_op;
  wire DATAPATH_0_con_z;
  wire [31:0]DATAPATH_0_data_a;
  wire [31:0]DATAPATH_0_data_di;
  wire DATAPATH_0_data_we;
  wire [31:0]DATAPATH_0_inst_a;
  wire [31:0]DATAPATH_0_reg_d;
  wire [4:0]DATAPATH_0_reg_rna;
  wire [4:0]DATAPATH_0_reg_rnb;
  wire DATAPATH_0_reg_we;
  wire [4:0]DATAPATH_0_reg_wn;
  wire [31:0]DATA_MEM_0_data_out;
  wire [31:0]INST_MEM_0_inst;
  wire [31:0]REGFILE_0_qa;
  wire [31:0]REGFILE_0_qb;
  wire clk_wiz_0_clk_out1;
  wire inclk_1;
  wire reset_1;

  assign inclk_1 = inclk;
  assign reset_1 = reset;
MIPS_CPU_ALU32_0_0 ALU32_0
       (.a(DATAPATH_0_alu_a),
        .aluc(DATAPATH_0_alu_aluc),
        .b(DATAPATH_0_alu_b),
        .r(ALU32_0_r),
        .z(ALU32_0_z));
MIPS_CPU_CONTROL_UNIT_0_0 CONTROL_UNIT_0
       (.aluc(CONTROL_UNIT_0_aluc),
        .aluimm(CONTROL_UNIT_0_aluimm),
        .func(DATAPATH_0_con_func),
        .jal(CONTROL_UNIT_0_jal),
        .m2reg(CONTROL_UNIT_0_m2reg),
        .op(DATAPATH_0_con_op),
        .pcsource(CONTROL_UNIT_0_pcsource),
        .regrt(CONTROL_UNIT_0_regrt),
        .sext(CONTROL_UNIT_0_sext),
        .shfit(CONTROL_UNIT_0_shfit),
        .wmem(CONTROL_UNIT_0_wmem),
        .wreg(CONTROL_UNIT_0_wreg),
        .z(DATAPATH_0_con_z));
MIPS_CPU_DATAPATH_0_0 DATAPATH_0
       (.alu_a(DATAPATH_0_alu_a),
        .alu_aluc(DATAPATH_0_alu_aluc),
        .alu_b(DATAPATH_0_alu_b),
        .alu_r(ALU32_0_r),
        .alu_z(ALU32_0_z),
        .clk(clk_wiz_0_clk_out1),
        .con_aluc(CONTROL_UNIT_0_aluc),
        .con_aluimm(CONTROL_UNIT_0_aluimm),
        .con_func(DATAPATH_0_con_func),
        .con_jal(CONTROL_UNIT_0_jal),
        .con_m2reg(CONTROL_UNIT_0_m2reg),
        .con_op(DATAPATH_0_con_op),
        .con_pcsource(CONTROL_UNIT_0_pcsource),
        .con_regrt(CONTROL_UNIT_0_regrt),
        .con_sext(CONTROL_UNIT_0_sext),
        .con_shfit(CONTROL_UNIT_0_shfit),
        .con_wmem(CONTROL_UNIT_0_wmem),
        .con_wreg(CONTROL_UNIT_0_wreg),
        .con_z(DATAPATH_0_con_z),
        .data_a(DATAPATH_0_data_a),
        .data_di(DATAPATH_0_data_di),
        .data_do(DATA_MEM_0_data_out),
        .data_we(DATAPATH_0_data_we),
        .inst_a(DATAPATH_0_inst_a),
        .inst_do(INST_MEM_0_inst),
        .reg_d(DATAPATH_0_reg_d),
        .reg_qa(REGFILE_0_qa),
        .reg_qb(REGFILE_0_qb),
        .reg_rna(DATAPATH_0_reg_rna),
        .reg_rnb(DATAPATH_0_reg_rnb),
        .reg_we(DATAPATH_0_reg_we),
        .reg_wn(DATAPATH_0_reg_wn));
MIPS_CPU_DATA_MEM_0_0 DATA_MEM_0
       (.addr(DATAPATH_0_data_a),
        .clk(clk_wiz_0_clk_out1),
        .data_in(DATAPATH_0_data_di),
        .data_out(DATA_MEM_0_data_out),
        .we(DATAPATH_0_data_we));
MIPS_CPU_INST_MEM_0_1 INST_MEM_0
       (.a(DATAPATH_0_inst_a),
        .inst(INST_MEM_0_inst));
MIPS_CPU_REGFILE_0_0 REGFILE_0
       (.clk(clk_wiz_0_clk_out1),
        .clrn(reset_1),
        .d(DATAPATH_0_reg_d),
        .qa(REGFILE_0_qa),
        .qb(REGFILE_0_qb),
        .rna(DATAPATH_0_reg_rna),
        .rnb(DATAPATH_0_reg_rnb),
        .we(DATAPATH_0_reg_we),
        .wn(DATAPATH_0_reg_wn));
MIPS_CPU_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(inclk_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_1));
endmodule
