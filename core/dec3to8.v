//###############################################
// Author:  Qazi Hamid Ullah (hamidullahqazi12@gmail.com)
// Date:    6/15/2023
// Module:  dec3to8.v       
// Description: Generate enable signals for registers
//  according to RX
//###############################################

module dec3to8(W, Y);     
    input [2:0] W;
    output [0:7] Y;
    reg [0:7] Y;
   
    always @(*)
        case (W)
            3'b000: Y = 8'b10000000;      //RO
            3'b001: Y = 8'b01000000;      //R1
            3'b010: Y = 8'b00100000;      //R2
            3'b011: Y = 8'b00010000;      //R3
            3'b100: Y = 8'b00001000;      //R4
            3'b101: Y = 8'b00000100;      //R5
            3'b110: Y = 8'b00000010;      //R6
            3'b111: Y = 8'b00000001;      //R7 | Program Counter
        endcase
endmodule
