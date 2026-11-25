// Self-checking testbench: the 5 project test cases + exhaustive check
module tb_four_bit_adder();
reg  [3:0] A, B;
reg        Cin;
wire [3:0] Sum;
wire       Cout;
integer    errors;
integer    i, j, k;

four_bit_adder uut (A, B, Cin, Sum, Cout);

task check(input [3:0] a, b, input cin);
  reg [4:0] expected;
  begin
    A = a; B = b; Cin = cin; #10;
    expected = a + b + cin;
    if ({Cout, Sum} === expected)
      $display("PASS: %2d + %2d + %0d = %2d  (Cout=%b Sum=%b)", a, b, cin, expected, Cout, Sum);
    else begin
      $display("FAIL: %2d + %2d + %0d -> got Cout=%b Sum=%b, expected %b", a, b, cin, Cout, Sum, expected);
      errors = errors + 1;
    end
  end
endtask

initial begin
    $dumpfile("adder.vcd");
    $dumpvars(0, tb_four_bit_adder);
    errors = 0;

    $display("--- Project test cases ---");
    check(4'b0001, 4'b0011, 0);  // TC1: 1 + 3       = 4   , Cout 0
    check(4'b0101, 4'b0110, 1);  // TC2: 5 + 6 + 1   = 12  , Cout 0
    check(4'b1111, 4'b1111, 0);  // TC3: 15 + 15     = 30  , Sum 1110, Cout 1
    check(4'b0000, 4'b0000, 0);  // TC4: 0 + 0       = 0
    check(4'b1111, 4'b1111, 1);  // TC5: 15 + 15 + 1 = 31  , Sum 1111, Cout 1

    $display("--- Exhaustive check (all 512 input combinations) ---");
    for (i = 0; i < 16; i = i + 1)
      for (j = 0; j < 16; j = j + 1)
        for (k = 0; k < 2; k = k + 1) begin
          A = i; B = j; Cin = k; #1;
          if ({Cout, Sum} !== i + j + k) errors = errors + 1;
        end

    if (errors == 0) $display("ALL TESTS PASSED");
    else             $display("%0d ERRORS", errors);
    $finish;
end
endmodule
