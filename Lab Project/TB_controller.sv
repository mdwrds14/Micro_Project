//TB_controller
`timescale 1ns/1ps
module TB_controller();
logic [5:0] op, funct;
logic zero;
logic memtoreg, memwrite, pcsrc, alusrc, regdst, regwrite, jump;
logic [2:0] alucontrol;

controller c (op, funct, zero, memtoreg, memwrite, pcsrc, alusrc, regdst, regwrite, jump, alucontrol);

initial begin
	// R-Type
	op = 6'b0;
	funct = 

