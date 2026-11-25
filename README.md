# Minor Project 1 - 4-bit adder using CMOS logic (Sky130)

## What is in this folder
| Folder | Contents | Status |
|---|---|---|
| `verilog/` | full adder, 4-bit adder, self-checking testbench (your 5 test cases + all 512 combinations) | tested, all pass |
| `spice/` | `fa.spice` (28-transistor mirror adder), `adder4.spice`, `run_test.py` | `fa.spice` + test passed on your PC (5/5 PASS) |
| `xschem/` | `full_adder_1bit.sch/.sym`, `adder_4bit.sch/.sym`, generator script | connectivity + logic checked offline; not yet opened in Xschem |
| `layout_lvs/` | LVS script and Magic steps | layout is NOT included (you draw it in Magic) |

## Steps to run
1. **Verilog**
   cd verilog
   iverilog -o adder tb_four_bit_adder.v four_bit_adder.v full_adder.v
   vvp adder
   gtkwave adder.vcd          (screenshot for the report)
2. **Schematics**: in WSL, `export PDK_ROOT=/usr/local/share/pdk PDK=sky130A`, then
   cd xschem && python3 gen_xschem.py
   cp $PDK_ROOT/$PDK/libs.tech/xschem/xschemrc .
   echo 'append XSCHEM_LIBRARY_PATH :/usr/local/share/pdk/sky130A/libs.tech/xschem' >> xschemrc
   xschem full_adder_1bit.sch &        (then open adder_4bit.sch the same way)
   The script reads the real pin positions from the PDK symbols, so the labels land on the pins.
3. **Ngspice**: `cd spice && python3 run_test.py` (several minutes; the Sky130 library loads slowly in WSL).
4. **Netlist from Xschem** (for LVS): open `full_adder_1bit.sch`, click *Netlist*, then copy the .spice file from `~/.xschem/simulations/` or the folder Xschem shows into `xschem/`.
5. **Layout + DRC** in Magic: see `layout_lvs/magic_steps.txt`.
6. **LVS**: `cd layout_lvs && ./lvs.sh full_adder_1bit` -> look for "Circuits match uniquely."

## Notes
* The adder pins are single bits (A0..A3, B0..B3, S0..S3) rather than buses A[3:0]; this avoids bus-syntax problems in Xschem.
* **Test case 2 in the project guide is wrong**: 5 + 6 + 1 = 12, so Sum = 1100 and Cout = 0 (the guide says 1000 / 1).
* Sizes: NMOS W=1 L=0.15, PMOS W=2 L=0.15 (um).
