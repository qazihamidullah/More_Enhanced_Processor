//###############################################
// Author:  Qazi Hamid Ullah (hamidullahqazi12@gmail.com)
// Date:    6/15/2023
// Module:  flipflop.v       
// Description: flop module which operates on posedge clk
//  
//###############################################

module flipflop (
    input   D,
    input   Resetn,
    input   Clock,
    output reg Q
    );
	
	always @(posedge Clock)
		if (Resetn == 0)
			Q <= 1'b0;
		else
			Q <= D;
endmodule
