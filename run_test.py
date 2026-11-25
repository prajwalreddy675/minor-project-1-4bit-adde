import subprocess
vecs=[(1,3,0),(5,6,1),(15,15,0),(0,0,0),(15,15,1)]
def pwl(vals):
    return " ".join(f"{i*20}n {v*1.8} {i*20+19.9}n {v*1.8}" for i,v in enumerate(vals))
tb=""".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include fa.spice
VDD VDD 0 1.8
"""
for b in range(4):
    tb+=f"VA{b} A{b} 0 PWL({pwl([(a>>b)&1 for a,_,_ in vecs])})\n"
    tb+=f"VB{b} B{b} 0 PWL({pwl([(x>>b)&1 for _,x,_ in vecs])})\n"
tb+=f"VCIN Cin 0 PWL({pwl([c for _,_,c in vecs])})\n"
tb+="""X0 A0 B0 Cin S0 c1 VDD 0 fa
X1 A1 B1 c1 S1 c2 VDD 0 fa
X2 A2 B2 c2 S2 c3 VDD 0 fa
X3 A3 B3 c3 S3 Cout VDD 0 fa
.tran 0.05n 100n
.control
run
wrdata out.txt v(S0) v(S1) v(S2) v(S3) v(Cout)
quit
.endc
.end
"""
open("tb.spice","w").write(tb)
subprocess.run(["ngspice","-b","tb.spice"],stdout=subprocess.DEVNULL)
rows=[list(map(float,l.split())) for l in open("out.txt")]
for i,(a,b,c) in enumerate(vecs):
    t=(i*20+19)*1e-9
    r=min(rows,key=lambda r:abs(r[0]-t))
    bits=[1 if r[k]>0.9 else 0 for k in (1,3,5,7,9)]
    got=bits[0]+2*bits[1]+4*bits[2]+8*bits[3]+16*bits[4]
    print(f"{a}+{b}+{c} = {a+b+c} -> circuit gave {got}", "PASS" if got==a+b+c else "FAIL")
