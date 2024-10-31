`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2024 10:16:01 AM
// Design Name: 
// Module Name: ALU_design
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU_design(
    output reg [3:0] x,y,
    input [3:0] a,b,opcode
    );
    always@(a,b,opcode)
    case(opcode)
    4'b0000: x[0]=|a;
     4'b0001: x[0]=&a;
      4'b0010: x[0]=^a;
       4'b0011: x=a&b;
        4'b0100: x=a|b;
         4'b0101: x=a^b; 
          4'b0110: x[0]=a>b;
           4'b0111: x[0]=a<b;
            4'b1000: x[0]=!a;
             4'b1001: x[0]=a==b;
              4'b1010: {y[0],x}=a+b;
               4'b1011: x=a-b;
                4'b1100: {y,x}=a*b;
                4'b1101: {y,x}=a>>b;
                 4'b1110: {y,x}=a<<b;
                  4'b1111: x=~a;
                  default:$display("error");
                  endcase
                  
endmodule
