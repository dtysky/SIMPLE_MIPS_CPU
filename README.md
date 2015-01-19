# SIMPLE_MIPS_CPU
A simple MIPS CPU, 32bits, designed with verilogHDL.  

**TOTAL----95%.**   

**ALU----100%.**  
**REGFILE----100%.**  
**CONTROL_UNIT----100%.**  
**DATAPATH----100%.**

Files:  
-----
**MIPS_CPU（MIPS_CPU.srcs）:**  
Connect all sub IPCore.  

**ALU（ALU\ALU.srcs）:**  
1. ALU.v: ALU  
2. LOGIC.v: AND/OR/XOR/LUI    
3. MATH.v: ADD/SUB  
4. SHIFT.v: SLL,SRL,SRA  
5. ALU_TB.sv: TestBench for ALU.  

**REGFILE（REGFILE\REGFILE.srcs）:**  
1. REGFILE.v: REGFILE  
2. REGFILE_TB.sv: TestBench for REGFILE.

**CONTROL_UNIT（CONTROL_UNIT\CONTROL_UNIT.srcs）:**  
1. CONTROL_UNIT.v: CONTROL_UNIT  
2. CONTROL_UNIT.sv: TestBench for CONTROL_UNIT.

**DATAPATH（DATAPATH\DATAPATH.srcs）:**  
1. DATAPATH.v: DATAPATH  

**INST_MEM（INST_MEM\INST_MEM.srcs）:**  
1. INST_MEM.v: A list which has some inst, for test.    

**DATA_MEM（DATA_MEM\DATA_MEM.srcs）:**  
1. DATA_MEM.v: A ram, for test.    