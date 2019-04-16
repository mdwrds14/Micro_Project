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
	op = 6'b0; zero = 0;
	//add
	funct = 6'b10_0000; #10;
	//sub
	funct = 6'b10_0010; #10;
	//and
	funct = 6'b10_0100; #10;
	//or
	funct = 6'b10_0101; #10;
	//slt
	funct = 6'b10_1010; #10;

	//LW
	op = 6'b10_0011; #10;

	//SW
	op = 6'b10_1011; #10;

	//BEQ
	op = 6'b00_0100; zero = 0; #10;
				     zero = 1; #10;

	//ADDI
	op = 6'b00_1000; #10;

	//J
	op = 6'b00_0010; #10;
$finish;
end
endmodule



