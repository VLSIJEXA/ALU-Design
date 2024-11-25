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
        // Test cases
        a = 4'b1101; b = 4'b1010; opcode = 4'b0100; #10; // OR
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (OR)", opcode, a, b, x, y);

        a = 4'b1101; b = 4'b1010; opcode = 4'b0011; #10; // AND
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (AND)", opcode, a, b, x, y);

        a = 4'b0011; b = 4'b0001; opcode = 4'b1010; #10; // Addition
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (Addition)", opcode, a, b, x, y);

        a = 4'b0110; b = 4'b0011; opcode = 4'b1011; #10; // Subtraction
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (Subtraction)", opcode, a, b, x, y);

        a = 4'b1000; b = 4'b0111; opcode = 4'b0110; #10; // Greater than
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (Greater than)", opcode, a, b, x, y);

        a = 4'b0111; b = 4'b1000; opcode = 4'b0111; #10; // Less than
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (Less than)", opcode, a, b, x, y);

        a = 4'b1010; opcode = 4'b1111; #10; // Bitwise NOT
        $display("Opcode: %b, a: %b => x: %b, y: %b (Bitwise NOT)", opcode, a, x, y);

        a = 4'b0011; b = 4'b0001; opcode = 4'b1110; #10; // Left Shift
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (Left Shift)", opcode, a, b, x, y);

        a = 4'b1100; b = 4'b0001; opcode = 4'b1101; #10; // Right Shift
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (Right Shift)", opcode, a, b, x, y);

        a = 4'b1101; b = 4'b1101; opcode = 4'b1001; #10; // Equality
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (Equality)", opcode, a, b, x, y);

        a = 4'b0010; b = 4'b0011; opcode = 4'b1100; #10; // Multiplication
        $display("Opcode: %b, a: %b, b: %b => x: %b, y: %b (Multiplication)", opcode, a, b, x, y);

        // End simulation
        $finish;
    end
endmodule
