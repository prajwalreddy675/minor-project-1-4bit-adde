#!/usr/bin/env python3
"""Run the 5 project test cases on the transistor-level 4-bit adder with ngspice.
Usage:  python3 run_test.py        (takes several minutes under WSL: the Sky130
library alone needs ~2.5 min to load)."""
import subprocess, os
PDK = os.environ.get("PDK_ROOT", "/usr/local/share/pdk")
LIB = f"{PDK}/sky130A/libs.tech/ngspice/sky130.lib.spice"
vecs = [(1,3,0),(5,6,1),(15,15,0),(0,0,0),(15,15,1)]   # (A, B, Cin)
def pwl(vals):
    return " ".join(f"{i*20}n {v*1.8} {i*20+19.9}n {v*1.8}" for i,v in enumerate(vals))
tb = f".lib {LIB} tt\n.include adder4.spice\nVDD VDD 0 1.8\n"
for b in range(4):
    tb += f"VA{b} A{b} 0 PWL({pwl([(a>>b)&1 for a,_,_ in vecs])})\n"
    tb += f"VB{b} B{b} 0 PWL({pwl([(x>>b)&1 for _,x,_ in vecs])})\n"
tb += f"VCIN Cin 0 PWL({pwl([c for _,_,c in vecs])})\n"
tb += """XDUT A0 A1 A2 A3 B0 B1 B2 B3 Cin S0 S1 S2 S3 Cout VDD 0 adder4
.tran 0.1n 100n
.control
run
wrdata out.txt v(S0) v(S1) v(S2) v(S3) v(Cout)
quit
.endc
.end
"""
open("tb_adder4.spice","w").write(tb)
subprocess.run(["ngspice","-b","tb_adder4.spice"], stdin=subprocess.DEVNULL, stdout=subprocess.DEVNULL)
rows = [list(map(float,l.split())) for l in open("out.txt")]
ok = True
for i,(a,b,c) in enumerate(vecs):
    t = (i*20+19)*1e-9
    r = min(rows, key=lambda r: abs(r[0]-t))
    bits = [1 if r[k] > 0.9 else 0 for k in (1,3,5,7,9)]
    got = sum(bit << n for n,bit in enumerate(bits))
    good = got == a+b+c; ok &= good
    print(f"{a:2d}+{b:2d}+{c} = {a+b+c:2d} -> circuit gave {got:2d}", "PASS" if good else "FAIL")
print("ALL PASS" if ok else "SOME FAILED")
