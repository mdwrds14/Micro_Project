`timescale 1ns/1ps
module TB_alu ();
logic [31:0] srca, srcb;
logic [2:0] alucontrol;
logic [31:0] aluout;
logic zero;
alu32 myalu (srca, srcb, alucontrol, aluout, zero);
initial begin
	// ADD
	srca = 32'h00000000; srcb = 32'h00000000; alucontrol = 3'h2; #10;
	srca = 32'h00000000; srcb = 32'hFFFFFFFF; alucontrol = 3'h2; #10;
	srca = 32'h00000001; srcb = 32'hFFFFFFFF; alucontrol = 3'h2; #10;
	srca = 32'h000000FF; srcb = 32'h00000001; alucontrol = 3'h2; #10;
	// SUB
	srca = 32'h00000000; srcb = 32'h00000000; alucontrol = 3'h6; #10;
	srca = 32'h00000000; srcb = 32'hFFFFFFFF; alucontrol = 3'h6; #10;
	srca = 32'h00000001; srcb = 32'h00000001; alucontrol = 3'h6; #10;
	srca = 32'h00000100; srcb = 32'h00000001; alucontrol = 3'h6; #10;
	// SLT
	srca = 32'h00000000; srcb = 32'h00000000; alucontrol = 3'h7; #10;
	srca = 32'h00000000; srcb = 32'h00000001; alucontrol = 3'h7; #10;
	srca = 32'h00000000; srcb = 32'hFFFFFFFF; alucontrol = 3'h7; #10;
	srca = 32'h00000001; srcb = 32'h00000000; alucontrol = 3'h7; #10;
	srca = 32'hFFFFFFFF; srcb = 32'h00000000; alucontrol = 3'h7; #10;
	// AND
	srca = 32'hFFFFFFFF; srcb = 32'hFFFFFFFF; alucontrol = 3'h0; #10;
	srca = 32'hFFFFFFFF; srcb = 32'h12345678; alucontrol = 3'h0; #10;
	srca = 32'h12345678; srcb = 32'h87654321; alucontrol = 3'h0; #10;
	srca = 32'h00000000; srcb = 32'hFFFFFFFF; alucontrol = 3'h0; #10;
	// OR
	srca = 32'hFFFFFFFF; srcb = 32'hFFFFFFFF; alucontrol = 3'h1; #10;
	srca = 32'h12345678; srcb = 32'h87654321; alucontrol = 3'h1; #10;
	srca = 32'h00000000; srcb = 32'hFFFFFFFF; alucontrol = 3'h1; #10;
	srca = 32'h00000000; srcb = 32'h00000000; alucontrol = 3'h1; #10;  
$finish;
end
endmodule
