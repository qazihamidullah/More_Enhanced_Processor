//###############################################
// Author:  Qazi Hamid Ullah (hamidullahqazi12@gmail.com)
// Date:    6/15/2023
// Module:  segment.v       
// Description: flop module with enable
//  
//###############################################

//Verilog module.
module segment(
     input      [3:0] bcd,
     output reg [6:0] seg
    );


//always block for converting bcd digit into 7 segment format
    always @(bcd)
    begin
        case (bcd) //case statement
            0 : seg = 7'b1000000;
            1 : seg = 7'b1111001;
            2 : seg = 7'b0100100;
            3 : seg = 7'b0110000;
            4 : seg = 7'b0011001;
            5 : seg = 7'b0010010;
            6 : seg = 7'b0000010;
            7 : seg = 7'b1111000;
            8 : seg = 7'b0000000;
            9 : seg = 7'b0010000;
            10: seg = 7'b0001000;
            11: seg = 7'b0000011;
            12: seg = 7'b1000110;
            13: seg = 7'b0100001;
            14: seg = 7'b0000110;
            15: seg = 7'b0001110;
            //switch off 7 segment character when the bcd digit is not a decimal number.
            default : seg = 7'b1111111; 
        endcase
    end
    
endmodule
