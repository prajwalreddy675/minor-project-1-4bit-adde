# Test results (4-bit adder)
| # | A | B | Cin | Expected (decimal) | Sum | Cout | Verilog | Ngspice (Sky130, transistor level) |
|---|---|---|---|---|---|---|---|---|
| 1 | 0001 | 0011 | 0 | 4  | 0100 | 0 | PASS | PASS |
| 2 | 0101 | 0110 | 1 | 12 | 1100 | 0 | PASS | PASS |
| 3 | 1111 | 1111 | 0 | 30 | 1110 | 1 | PASS | PASS |
| 4 | 0000 | 0000 | 0 | 0  | 0000 | 0 | PASS | PASS |
| 5 | 1111 | 1111 | 1 | 31 | 1111 | 1 | PASS | PASS |
Note: the project guide lists test case 2 as Sum=1000, Cout=1; the correct result is Sum=1100, Cout=0.
