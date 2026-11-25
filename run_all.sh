#!/bin/bash
# One command to re-run everything that can run without the GUI.
set -e
cd "$(dirname "$0")"
echo "== 1. Verilog simulation =="
(cd verilog && iverilog -o /tmp/adder tb_four_bit_adder.v four_bit_adder.v full_adder.v && vvp /tmp/adder | grep -E "PASS|FAIL|ERRORS")
echo "== 2. Regenerate Xschem schematics (reads the Sky130 symbols for exact pins) =="
(cd xschem && python3 gen_xschem.py)
echo "== 3. Transistor-level Ngspice test (slow: several minutes) =="
(cd spice && python3 run_test.py)
