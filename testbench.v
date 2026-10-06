module adder_tb;
    reg [3:0] a;
    reg [3:0] b;
    wire [4:0] sum;

    adder uut (
        .a(a),
        .b(b),
        .sum(sum)
    );

    initial begin
        // Test case 1
        a = 4'b0011; // 3
        b = 4'b0101; // 5
        #10; // Wait for 10 time units
        $display("Test case 1: a=%b, b=%b, sum=%b", a, b, sum);

        // Test case 2
        a = 4'b1111; // 15
        b = 4'b0001; // 1
        #10; // Wait for 10 time units
        $display("Test case 2: a=%b, b=%b, sum=%b", a, b, sum);

        // Test case 3
        a = 4'b1010; // 10
        b = 4'b0101; // 5
        #10; // Wait for 10 time units
        $display("Test case 3: a=%b, b=%b, sum=%b", a, b, sum);

        $finish; // End simulation
    end
endmodule