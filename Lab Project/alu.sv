module alu (input logic  [31:0] srca, srcb,
			input logic  [2:0]  alucontrol,
			output logic [31:0] aluout,
			output logic	    zero);
	logic [31:0] srcBout, Sum;
	
	assign srcBout = F[2] ? ~srcb : srcb;
	assign Sum = arca + srcBout + F[2];
	assign zero = (aluout == 32'b0);
	
	always @ (*)
	case (alucontrol[1:0])
		2'b00: aluout <= srca&srcBout;
		2'b01: aluout <= srca|srcBout;
		2'b10: aluout <= Sum;
		2'b11: aluout <= Sum[31];
	endcase
endmodule