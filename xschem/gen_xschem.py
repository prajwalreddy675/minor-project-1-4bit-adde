#!/usr/bin/env python3
"""Generate Xschem files for the 4-bit adder project:
     full_adder_1bit.sch / .sym   (28-transistor mirror adder, Sky130)
     adder_4bit.sch / .sym        (4 x full_adder_1bit, ripple carry)
Pin positions of the Sky130 transistor symbols are read from the installed PDK
(so the labels land exactly on the pins); defaults are used if it is not found.
Run:  python3 gen_xschem.py     (inside this folder)"""
import os, re

PDK_ROOT = os.environ.get("PDK_ROOT", "/usr/local/share/pdk")
SYMDIR = f"{PDK_ROOT}/sky130A/libs.tech/xschem/sky130_fd_pr"
HDR = "v {xschem version=3.4.5 file_version=1.2}\nG {}\nK {}\nV {}\nS {}\nE {}\n"

def read_pins(symfile, default):
    """Return {pin_name: (x, y)} parsed from an xschem .sym file."""
    pins = {}
    try:
        for line in open(symfile):
            m = re.match(r"B 5 (\S+) (\S+) (\S+) (\S+) \{(.*)", line)
            if m:
                n = re.search(r"name=(\S+)", m.group(5))
                if n:
                    x1, y1, x2, y2 = map(float, m.groups()[:4])
                    pins[n.group(1)] = (round((x1 + x2) / 2), round((y1 + y2) / 2))
    except OSError:
        pass
    if not {"D", "G", "S"} <= set(pins):
        print(f"  (using default pin positions for {os.path.basename(symfile)})")
        return default
    return pins

NPIN = read_pins(f"{SYMDIR}/nfet3_01v8.sym", {"D": (20, -30), "G": (-20, 0), "S": (20, 30)})
PPIN = read_pins(f"{SYMDIR}/pfet3_01v8.sym", {"D": (20, 30), "G": (-20, 0), "S": (20, -30)})

# (name, type, Gate, Drain, Source)  -- identical to spice/fa.spice
T = [
 ("M1","n","A","Cb","n1"),   ("M2","n","B","n1","GND"),  ("M3","n","Cin","Cb","n2"),
 ("M4","n","A","n2","GND"),  ("M5","n","B","n2","GND"),
 ("M6","p","A","p1","VDD"),  ("M7","p","B","Cb","p1"),   ("M8","p","Cin","p2","VDD"),
 ("M9","p","A","Cb","p2"),   ("M10","p","B","Cb","p2"),
 ("M11","n","A","Sb","s1"),  ("M12","n","B","s1","s2"),  ("M13","n","Cin","s2","GND"),
 ("M14","n","A","Sb","s3"),  ("M15","n","B","Sb","s3"),  ("M16","n","Cin","Sb","s3"),
 ("M17","n","Cb","s3","GND"),
 ("M18","p","A","q1","VDD"), ("M19","p","B","q2","q1"),  ("M20","p","Cin","Sb","q2"),
 ("M24","p","Cb","q3","VDD"),("M21","p","A","Sb","q3"),  ("M22","p","B","Sb","q3"),
 ("M23","p","Cin","Sb","q3"),
 ("M25","n","Cb","Cout","GND"), ("M26","p","Cb","Cout","VDD"),
 ("M27","n","Sb","Sum","GND"),  ("M28","p","Sb","Sum","VDD"),
]
# rows (y position) and which transistors go in each row
ROWS = [
 (   0, ["M1","M2","M3","M4","M5"]),
 ( 250, ["M6","M7","M8","M9","M10"]),
 ( 600, ["M11","M12","M13","M14","M15","M16","M17"]),
 ( 850, ["M18","M19","M20","M24","M21","M22","M23"]),
 (1200, ["M25","M26","M27","M28"]),
]
DX = 170
SYM = {"n": "sky130_fd_pr/nfet3_01v8.sym", "p": "sky130_fd_pr/pfet3_01v8.sym"}

def transistor(name, kind, x, y):
    w, body = ("1", "GND") if kind == "n" else ("2", "VDD")
    model = "nfet_01v8" if kind == "n" else "pfet_01v8"
    props = (f'name={name}\nL=0.15\nW={w}\nbody={body}\nnf=1\nmult=1\n'
             f'ad="expr(\'int((@nf + 1)/2) * @W / @nf * 0.29\')"\n'
             f'pd="expr(\'2*int((@nf + 1)/2) * (@W / @nf + 0.29)\')"\n'
             f'as="expr(\'int((@nf + 2)/2) * @W / @nf * 0.29\')"\n'
             f'ps="expr(\'2*int((@nf + 2)/2) * (@W / @nf + 0.29)\')"\n'
             f'nrd="expr(\'0.29 / @W \')" nrs="expr(\'0.29 / @W \')"\n'
             f'sa=0 sb=0 sd=0\nmodel={model}\nspiceprefix=X')
    return f"C {{{SYM[kind]}}} {x} {y} 0 0 {{{props}}}\n"

def build_full_adder():
    out = [HDR]
    byname = {t[0]: t for t in T}
    cnt = 0
    for y, names in ROWS:
        for i, nm in enumerate(names):
            _, kind, g, d, s = byname[nm]
            x = 200 + i * DX
            out.append(transistor(nm, kind, x, y))
            pins = NPIN if kind == "n" else PPIN
            for pin, net in (("G", g), ("D", d), ("S", s)):
                px, py = pins[pin]
                rot = 0 if pin == "G" else (3 if py < 0 else 1)
                cnt += 1
                out.append(f"C {{lab_pin.sym}} {x+px} {y+py} {rot} 0 {{name=l{cnt} sig_type=std_logic lab={net}}}\n")
    # ports (net names come from lab=)
    ports = [("ipin.sym","A",-200,-50),("ipin.sym","B",-200,0),("ipin.sym","Cin",-200,50),
             ("opin.sym","Sum",-200,150),("opin.sym","Cout",-200,200),
             ("iopin.sym","VDD",-200,300),("iopin.sym","GND",-200,350)]
    for k,(sym, net, px, py) in enumerate(ports):
        out.append(f"C {{{sym}}} {px} {py} 0 0 {{name=p{k+1} lab={net}}}\n")
    return "".join(out)

def sym_file(name, left, right, top, bottom):
    """Simple box symbol. left/right/top/bottom = lists of (pin, dir)."""
    h = max(len(left), len(right), 1) * 20 + 20
    wd = 80
    s = [HDR.replace("K {}", f'K {{type=subcircuit\nformat="@name @pinlist @symname"\ntemplate="name=x1"}}')]
    s.append(f"L 4 {-wd} {-h} {wd} {-h} {{}}\nL 4 {wd} {-h} {wd} {h} {{}}\n"
             f"L 4 {wd} {h} {-wd} {h} {{}}\nL 4 {-wd} {h} {-wd} {-h} {{}}\n")
    for i,(p,d) in enumerate(left):
        y = -h + 30 + i*20 if False else -h + 30 + i*40
        s.append(f"L 4 {-wd-20} {y} {-wd} {y} {{}}\nB 5 {-wd-22.5} {y-2.5} {-wd-17.5} {y+2.5} {{name={p} dir={d}}}\nT {{{p}}} {-wd+5} {y-4} 0 0 0.2 0.2 {{}}\n")
    for i,(p,d) in enumerate(right):
        y = -h + 30 + i*40
        s.append(f"L 4 {wd} {y} {wd+20} {y} {{}}\nB 5 {wd+17.5} {y-2.5} {wd+22.5} {y+2.5} {{name={p} dir={d}}}\nT {{{p}}} {wd-5} {y-4} 0 1 0.2 0.2 {{}}\n")
    for i,(p,d) in enumerate(top):
        s.append(f"L 4 0 {-h-20} 0 {-h} {{}}\nB 5 -2.5 {-h-22.5} 2.5 {-h-17.5} {{name={p} dir={d}}}\nT {{{p}}} 5 {-h+2} 0 0 0.2 0.2 {{}}\n")
    for i,(p,d) in enumerate(bottom):
        s.append(f"L 4 0 {h} 0 {h+20} {{}}\nB 5 -2.5 {h+17.5} 2.5 {h+22.5} {{name={p} dir={d}}}\nT {{{p}}} 5 {h-12} 0 0 0.2 0.2 {{}}\n")
    s.append(f"T {{@symname}} {-wd+5} {-h-20} 0 0 0.3 0.3 {{}}\nT {{@name}} {wd-5} {-h-20} 0 1 0.2 0.2 {{}}\n")
    return "".join(s)

FA_LEFT  = [("A","in"),("B","in"),("Cin","in")]
FA_RIGHT = [("Sum","out"),("Cout","out")]
FA_SYM = sym_file("full_adder_1bit", FA_LEFT, FA_RIGHT, [("VDD","inout")], [("GND","inout")])

def pin_pos(left, right, top, bottom):
    """Absolute pin positions of the box symbol (rot 0) - mirrors sym_file()."""
    h = max(len(left), len(right), 1) * 20 + 20; wd = 80; pos = {}
    for i,(p,_) in enumerate(left):   pos[p] = (-wd-20, -h+30+i*40)
    for i,(p,_) in enumerate(right):  pos[p] = (wd+20, -h+30+i*40)
    for p,_ in top:                   pos[p] = (0, -h-20)
    for p,_ in bottom:                pos[p] = (0, h+20)
    return pos
FA_POS = pin_pos(FA_LEFT, FA_RIGHT, [("VDD","inout")], [("GND","inout")])

def build_adder4():
    out = [HDR]; cnt = 0
    carries = ["Cin","c1","c2","c3","Cout"]
    for i in range(4):
        x, y = 600, i*400
        out.append(f"C {{full_adder_1bit.sym}} {x} {y} 0 0 {{name=X{i}}}\n")
        nets = {"A":f"A{i}","B":f"B{i}","Cin":carries[i],"Sum":f"S{i}","Cout":carries[i+1],
                "VDD":"VDD","GND":"GND"}
        for pin,net in nets.items():
            px,py = FA_POS[pin]; cnt += 1
            rot = {"A":0,"B":0,"Cin":0,"Sum":2,"Cout":2,"VDD":3,"GND":1}[pin]
            out.append(f"C {{lab_pin.sym}} {x+px} {y+py} {rot} 0 {{name=l{cnt} sig_type=std_logic lab={net}}}\n")
    ins  = [f"A{i}" for i in range(4)] + [f"B{i}" for i in range(4)] + ["Cin"]
    outs = [f"S{i}" for i in range(4)] + ["Cout"]
    for k,n in enumerate(ins):  out.append(f"C {{ipin.sym}} 0 {k*50} 0 0 {{name=pi{k} lab={n}}}\n")
    for k,n in enumerate(outs): out.append(f"C {{opin.sym}} 0 {600+k*50} 0 0 {{name=po{k} lab={n}}}\n")
    out.append("C {iopin.sym} 0 900 0 0 {name=pv1 lab=VDD}\nC {iopin.sym} 0 950 0 0 {name=pv2 lab=GND}\n")
    return "".join(out)

A4_LEFT  = [(f"A{i}","in") for i in range(4)] + [(f"B{i}","in") for i in range(4)] + [("Cin","in")]
A4_RIGHT = [(f"S{i}","out") for i in range(4)] + [("Cout","out")]
A4_SYM = sym_file("adder_4bit", A4_LEFT, A4_RIGHT, [("VDD","inout")], [("GND","inout")])

if __name__ == "__main__":
    for fn, txt in (("full_adder_1bit.sch", build_full_adder()), ("full_adder_1bit.sym", FA_SYM),
                    ("adder_4bit.sch", build_adder4()), ("adder_4bit.sym", A4_SYM)):
        open(fn, "w").write(txt); print("wrote", fn)
