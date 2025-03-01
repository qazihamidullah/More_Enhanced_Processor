//###############################################
// Author:  Qazi Hamid Ullah (hamidullahqazi12@gmail.com)
// Date:    6/15/2023
// Module:  seg7.v       
// Description: 7 segment decoder module which operates on posedge clk
//  
//###############################################

// Data written to registers R0 to R5 are sent to the H digits
module seg7 (Data, Addr, Sel, Resetn, Clock, H5, H4, H3, H2, H1, H0);
    input [6:0] Data;
    input [2:0] Addr;
    input Sel, Resetn, Clock;
    output [6:0] H5, H4, H3, H2, H1, H0;

    wire [6:0] nData;
    assign nData = ~Data;

    regne reg_R0 (nData, Clock, Resetn, Sel & (Addr == 3'b000), H0);
	 // ... add code here
	 regne reg_R1 (nData, Clock, Resetn, Sel & (Addr == 3'b001), H1);
	 regne reg_R2 (nData, Clock, Resetn, Sel & (Addr == 3'b010), H2);
	 regne reg_R3 (nData, Clock, Resetn, Sel & (Addr == 3'b011), H3);
	 regne reg_R4 (nData, Clock, Resetn, Sel & (Addr == 3'b100), H4);
	 regne reg_R5 (nData, Clock, Resetn, Sel & (Addr == 3'b101), H5);
	 regne reg_R6 (nData, Clock, Resetn, Sel & (Addr == 3'b110), H6);
endmodule



