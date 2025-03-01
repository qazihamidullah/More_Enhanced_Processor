//###############################################
// Author:  Qazi Hamid Ullah (hamidullahqazi12@gmail.com)
// Date:    6/15/2023
// Module:  regne.v       
// Description: flop module with enable
//  
//###############################################

module regne # (parameter n = 7)
        (input      [n-1:0] R,
         input              Clock,
         input              Resetn,
         input              E,
         output reg [n-1:0] Q
         );
	
    always @(posedge Clock)
        if (Resetn == 0)
            Q <= {n{1'b1}};  // turn OFF all segments on reset
        else if (E)
            Q <= R;
endmodule