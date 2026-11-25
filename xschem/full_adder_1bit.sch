v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {sky130_fd_pr/nfet3_01v8.sym} 200 0 0 0 {name=M1
L=0.15
W=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X}
C {lab_pin.sym} 180 0 0 0 {name=l1 sig_type=std_logic lab=A}
C {lab_pin.sym} 220 -30 3 0 {name=l2 sig_type=std_logic lab=Cb}
C {lab_pin.sym} 220 30 1 0 {name=l3 sig_type=std_logic lab=n1}
C {sky130_fd_pr/nfet3_01v8.sym} 370 0 0 0 {name=M2
L=0.15
W=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X}
C {lab_pin.sym} 350 0 0 0 {name=l4 sig_type=std_logic lab=B}
C {lab_pin.sym} 390 -30 3 0 {name=l5 sig_type=std_logic lab=n1}
C {lab_pin.sym} 390 30 1 0 {name=l6 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet3_01v8.sym} 540 0 0 0 {name=M3
L=0.15
W=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X}
C {lab_pin.sym} 520 0 0 0 {name=l7 sig_type=std_logic lab=Cin}
C {lab_pin.sym} 560 -30 3 0 {name=l8 sig_type=std_logic lab=Cb}
C {lab_pin.sym} 560 30 1 0 {name=l9 sig_type=std_logic lab=n2}
C {sky130_fd_pr/nfet3_01v8.sym} 710 0 0 0 {name=M4
L=0.15
W=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X}
C {lab_pin.sym} 690 0 0 0 {name=l10 sig_type=std_logic lab=A}
C {lab_pin.sym} 730 -30 3 0 {name=l11 sig_type=std_logic lab=n2}
C {lab_pin.sym} 730 30 1 0 {name=l12 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet3_01v8.sym} 880 0 0 0 {name=M5
L=0.15
W=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X}
C {lab_pin.sym} 860 0 0 0 {name=l13 sig_type=std_logic lab=B}
C {lab_pin.sym} 900 -30 3 0 {name=l14 sig_type=std_logic lab=n2}
C {lab_pin.sym} 900 30 1 0 {name=l15 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 200 250 0 0 {name=M6
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X}
C {lab_pin.sym} 180 250 0 0 {name=l16 sig_type=std_logic lab=A}
C {lab_pin.sym} 220 280 1 0 {name=l17 sig_type=std_logic lab=p1}
C {lab_pin.sym} 220 220 3 0 {name=l18 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet3_01v8.sym} 370 250 0 0 {name=M7
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X}
C {lab_pin.sym} 350 250 0 0 {name=l19 sig_type=std_logic lab=B}
C {lab_pin.sym} 390 280 1 0 {name=l20 sig_type=std_logic lab=Cb}
C {lab_pin.sym} 390 220 3 0 {name=l21 sig_type=std_logic lab=p1}
C {sky130_fd_pr/pfet3_01v8.sym} 540 250 0 0 {name=M8
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X}
C {lab_pin.sym} 520 250 0 0 {name=l22 sig_type=std_logic lab=Cin}
C {lab_pin.sym} 560 280 1 0 {name=l23 sig_type=std_logic lab=p2}
C {lab_pin.sym} 560 220 3 0 {name=l24 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet3_01v8.sym} 710 250 0 0 {name=M9
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X}
C {lab_pin.sym} 690 250 0 0 {name=l25 sig_type=std_logic lab=A}
C {lab_pin.sym} 730 280 1 0 {name=l26 sig_type=std_logic lab=Cb}
C {lab_pin.sym} 730 220 3 0 {name=l27 sig_type=std_logic lab=p2}
C {sky130_fd_pr/pfet3_01v8.sym} 880 250 0 0 {name=M10
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X}
C {lab_pin.sym} 860 250 0 0 {name=l28 sig_type=std_logic lab=B}
C {lab_pin.sym} 900 280 1 0 {name=l29 sig_type=std_logic lab=Cb}
C {lab_pin.sym} 900 220 3 0 {name=l30 sig_type=std_logic lab=p2}
C {sky130_fd_pr/nfet3_01v8.sym} 200 600 0 0 {name=M11
L=0.15
W=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X}
C {lab_pin.sym} 180 600 0 0 {name=l31 sig_type=std_logic lab=A}
C {lab_pin.sym} 220 570 3 0 {name=l32 sig_type=std_logic lab=Sb}
C {lab_pin.sym} 220 630 1 0 {name=l33 sig_type=std_logic lab=s1}
C {sky130_fd_pr/nfet3_01v8.sym} 370 600 0 0 {name=M12
L=0.15
W=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X}
C {lab_pin.sym} 350 600 0 0 {name=l34 sig_type=std_logic lab=B}
C {lab_pin.sym} 390 570 3 0 {name=l35 sig_type=std_logic lab=s1}
C {lab_pin.sym} 390 630 1 0 {name=l36 sig_type=std_logic lab=s2}
C {sky130_fd_pr/nfet3_01v8.sym} 540 600 0 0 {name=M13
L=0.15
W=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X}
C {lab_pin.sym} 520 600 0 0 {name=l37 sig_type=std_logic lab=Cin}
C {lab_pin.sym} 560 570 3 0 {name=l38 sig_type=std_logic lab=s2}
C {lab_pin.sym} 560 630 1 0 {name=l39 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet3_01v8.sym} 710 600 0 0 {name=M14
L=0.15
W=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X}
C {lab_pin.sym} 690 600 0 0 {name=l40 sig_type=std_logic lab=A}
C {lab_pin.sym} 730 570 3 0 {name=l41 sig_type=std_logic lab=Sb}
C {lab_pin.sym} 730 630 1 0 {name=l42 sig_type=std_logic lab=s3}
C {sky130_fd_pr/nfet3_01v8.sym} 880 600 0 0 {name=M15
L=0.15
W=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X}
C {lab_pin.sym} 860 600 0 0 {name=l43 sig_type=std_logic lab=B}
C {lab_pin.sym} 900 570 3 0 {name=l44 sig_type=std_logic lab=Sb}
C {lab_pin.sym} 900 630 1 0 {name=l45 sig_type=std_logic lab=s3}
C {sky130_fd_pr/nfet3_01v8.sym} 1050 600 0 0 {name=M16
L=0.15
W=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X}
C {lab_pin.sym} 1030 600 0 0 {name=l46 sig_type=std_logic lab=Cin}
C {lab_pin.sym} 1070 570 3 0 {name=l47 sig_type=std_logic lab=Sb}
C {lab_pin.sym} 1070 630 1 0 {name=l48 sig_type=std_logic lab=s3}
C {sky130_fd_pr/nfet3_01v8.sym} 1220 600 0 0 {name=M17
L=0.15
W=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X}
C {lab_pin.sym} 1200 600 0 0 {name=l49 sig_type=std_logic lab=Cb}
C {lab_pin.sym} 1240 570 3 0 {name=l50 sig_type=std_logic lab=s3}
C {lab_pin.sym} 1240 630 1 0 {name=l51 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 200 850 0 0 {name=M18
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X}
C {lab_pin.sym} 180 850 0 0 {name=l52 sig_type=std_logic lab=A}
C {lab_pin.sym} 220 880 1 0 {name=l53 sig_type=std_logic lab=q1}
C {lab_pin.sym} 220 820 3 0 {name=l54 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet3_01v8.sym} 370 850 0 0 {name=M19
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X}
C {lab_pin.sym} 350 850 0 0 {name=l55 sig_type=std_logic lab=B}
C {lab_pin.sym} 390 880 1 0 {name=l56 sig_type=std_logic lab=q2}
C {lab_pin.sym} 390 820 3 0 {name=l57 sig_type=std_logic lab=q1}
C {sky130_fd_pr/pfet3_01v8.sym} 540 850 0 0 {name=M20
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X}
C {lab_pin.sym} 520 850 0 0 {name=l58 sig_type=std_logic lab=Cin}
C {lab_pin.sym} 560 880 1 0 {name=l59 sig_type=std_logic lab=Sb}
C {lab_pin.sym} 560 820 3 0 {name=l60 sig_type=std_logic lab=q2}
C {sky130_fd_pr/pfet3_01v8.sym} 710 850 0 0 {name=M24
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X}
C {lab_pin.sym} 690 850 0 0 {name=l61 sig_type=std_logic lab=Cb}
C {lab_pin.sym} 730 880 1 0 {name=l62 sig_type=std_logic lab=q3}
C {lab_pin.sym} 730 820 3 0 {name=l63 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet3_01v8.sym} 880 850 0 0 {name=M21
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X}
C {lab_pin.sym} 860 850 0 0 {name=l64 sig_type=std_logic lab=A}
C {lab_pin.sym} 900 880 1 0 {name=l65 sig_type=std_logic lab=Sb}
C {lab_pin.sym} 900 820 3 0 {name=l66 sig_type=std_logic lab=q3}
C {sky130_fd_pr/pfet3_01v8.sym} 1050 850 0 0 {name=M22
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X}
C {lab_pin.sym} 1030 850 0 0 {name=l67 sig_type=std_logic lab=B}
C {lab_pin.sym} 1070 880 1 0 {name=l68 sig_type=std_logic lab=Sb}
C {lab_pin.sym} 1070 820 3 0 {name=l69 sig_type=std_logic lab=q3}
C {sky130_fd_pr/pfet3_01v8.sym} 1220 850 0 0 {name=M23
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X}
C {lab_pin.sym} 1200 850 0 0 {name=l70 sig_type=std_logic lab=Cin}
C {lab_pin.sym} 1240 880 1 0 {name=l71 sig_type=std_logic lab=Sb}
C {lab_pin.sym} 1240 820 3 0 {name=l72 sig_type=std_logic lab=q3}
C {sky130_fd_pr/nfet3_01v8.sym} 200 1200 0 0 {name=M25
L=0.15
W=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X}
C {lab_pin.sym} 180 1200 0 0 {name=l73 sig_type=std_logic lab=Cb}
C {lab_pin.sym} 220 1170 3 0 {name=l74 sig_type=std_logic lab=Cout}
C {lab_pin.sym} 220 1230 1 0 {name=l75 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 370 1200 0 0 {name=M26
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X}
C {lab_pin.sym} 350 1200 0 0 {name=l76 sig_type=std_logic lab=Cb}
C {lab_pin.sym} 390 1230 1 0 {name=l77 sig_type=std_logic lab=Cout}
C {lab_pin.sym} 390 1170 3 0 {name=l78 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet3_01v8.sym} 540 1200 0 0 {name=M27
L=0.15
W=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X}
C {lab_pin.sym} 520 1200 0 0 {name=l79 sig_type=std_logic lab=Sb}
C {lab_pin.sym} 560 1170 3 0 {name=l80 sig_type=std_logic lab=Sum}
C {lab_pin.sym} 560 1230 1 0 {name=l81 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 710 1200 0 0 {name=M28
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X}
C {lab_pin.sym} 690 1200 0 0 {name=l82 sig_type=std_logic lab=Sb}
C {lab_pin.sym} 730 1230 1 0 {name=l83 sig_type=std_logic lab=Sum}
C {lab_pin.sym} 730 1170 3 0 {name=l84 sig_type=std_logic lab=VDD}
C {ipin.sym} -200 -50 0 0 {name=p1 lab=A}
C {ipin.sym} -200 0 0 0 {name=p2 lab=B}
C {ipin.sym} -200 50 0 0 {name=p3 lab=Cin}
C {opin.sym} -200 150 0 0 {name=p4 lab=Sum}
C {opin.sym} -200 200 0 0 {name=p5 lab=Cout}
C {iopin.sym} -200 300 0 0 {name=p6 lab=VDD}
C {iopin.sym} -200 350 0 0 {name=p7 lab=GND}
