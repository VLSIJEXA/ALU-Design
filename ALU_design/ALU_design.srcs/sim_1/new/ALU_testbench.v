`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2024 10:42:37 AM
// Design Name: 
// Module Name: ALU_testbench
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


module ALU_testbench;
    reg [3:0] a, b, opcode;
    wire [3:0] x, y;

    // Instantiate the ALU module
    ALU_design alu (
        .x(x),
        .y(y),
        .a(a),
        .b(b),
        .opcode(opcode)
    );

    initial begin
        // Test case 1: Logical OR (a | b)
        a = 4'b1101; b = 4'b1010; opcode = 4'b0100; #10;
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (OR)", opcode, a, b, x, y);

        // Test case 2: Logical AND (a & b)
        a = 4'b1101; b = 4'b1010; opcode = 4'b0011; #10;
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (AND)", opcode, a, b, x, y);

        // Test case 3: Addition (a + b)
        a = 4'b0011; b = 4'b0001; opcode = 4'b1010; #10;
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (Addition)", opcode, a, b, x, y);

        // Test case 4: Subtraction (a - b)
        a = 4'b0110; b = 4'b0011; opcode = 4'b1011; #10;
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (Subtraction)", opcode, a, b, x, y);

        // Test case 5: Greater than (a > b)
        a = 4'b1000; b = 4'b0111; opcode = 4'b0110; #10;
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (Greater than)", opcode, a, b, x, y);

        // Test case 6: Less than (a < b)
        a = 4'b0111; b = 4'b1000; opcode = 4'b0111; #10;
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (Less than)", opcode, a, b, x, y);

        // Test case 7: Bitwise NOT (~a)
        a = 4'b1010; opcode = 4'b1111; #10;
        $display("Opcode: %b, a: %b => x: %b, y: %b (Bitwise NOT)", opcode, a, x, y);

        // Test case 8: Left shift (a << 1)
        a = 4'b0011; b = 4'b0001; opcode = 4'b1110; #10;
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (Left Shift)", opcode, a, b, x, y);

        // Test case 9: Right shift (a >> 1)
        a = 4'b1100; b = 4'b0001; opcode = 4'b1101; #10;
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (Right Shift)", opcode, a, b, x, y);

        // Test case 10: Equality (a == b)
        a = 4'b1101; b = 4'b1101; opcode = 4'b1001; #10;
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (Equality)", opcode, a, b, x, y);

        // Test case 11: Multiplication (a * b)
        a = 4'b0010; b = 4'b0011; opcode = 4'b1100; #10;
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (Multiplication)", opcode, a, b, x, y);

        // End simulation
        $finish;
    end
endmodule
