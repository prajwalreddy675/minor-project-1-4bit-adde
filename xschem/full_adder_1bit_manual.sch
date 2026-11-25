v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {lab=VDD}
E {}
C {sky130_fd_pr/nfet3_01v8.sym} 100 -50 0 0 {name=M1
W=1
L=0.15
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
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 370 -50 0 0 {name=M2
W=1
L=0.15
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
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 640 -50 0 0 {name=M3
W=1
L=0.15
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
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 930 -40 0 0 {name=M4
W=1
L=0.15
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
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1210 -50 0 0 {name=M5
W=1
L=0.15
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
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 110 150 0 0 {nname=M6
W=2
L=0.15
body=VDD
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 340 150 0 0 {nname=M7
W=2
L=0.15
body=VDD
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 640 150 0 0 {nname=M8
W=2
L=0.15
body=VDD
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 920 150 0 0 {nname=M9
W=2
L=0.15
body=VDD
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1210 160 0 0 {name=M7
W=2
L=0.15
body=VDD
spiceprefix=X
}
C {lab_pin.sym} 80 -50 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} 120 -80 1 0 {name=p2 sig_type=std_logic lab="Cb"}
C {lab_pin.sym} 120 -20 3 0 {name=p3 sig_type=std_logic lab="n1"}
C {lab_pin.sym} 390 -20 3 0 {name=p4 sig_type=std_logic lab="GND"}
C {lab_pin.sym} 390 -80 1 0 {name=p5 sig_type=std_logic lab="n1"}
C {lab_pin.sym} 350 -50 0 0 {name=p6 sig_type=std_logic lab="B"}
C {lab_pin.sym} 660 -20 3 0 {name=p7 sig_type=std_logic lab="n2"}
C {lab_pin.sym} 950 -10 3 0 {name=p8 sig_type=std_logic lab="GND"}
C {lab_pin.sym} 1230 -20 3 0 {name=p9 sig_type=std_logic lab="GND"}
C {lab_pin.sym} 660 -80 1 0 {name=p10 sig_type=std_logic lab="Cb"}
C {lab_pin.sym} 950 -70 1 0 {name=p11 sig_type=std_logic lab="n2"}
C {lab_pin.sym} 1230 -80 1 0 {name=p12 sig_type=std_logic lab="n2"}
C {lab_pin.sym} 620 -50 0 0 {name=p13 sig_type=std_logic lab="Cin"}
C {lab_pin.sym} 910 -40 0 0 {name=p14 sig_type=std_logic lab=A}
C {lab_pin.sym} 1190 -50 0 0 {name=p15 sig_type=std_logic lab="B"}
C {lab_pin.sym} 90 150 0 0 {name=p16 sig_type=std_logic lab=A}
C {lab_pin.sym} 320 150 0 0 {name=p17 sig_type=std_logic lab="B"}
C {lab_pin.sym} 620 150 0 0 {name=p18 sig_type=std_logic lab=Cin}
C {lab_pin.sym} 900 150 0 0 {name=p19 sig_type=std_logic lab=A}
C {lab_pin.sym} 1190 160 0 0 {name=p20 sig_type=std_logic lab=B}
C {lab_pin.sym} 940 180 3 0 {name=p21 sig_type=std_logic lab=Cb
}
C {lab_pin.sym} 130 180 3 0 {name=p22 sig_type=std_logic lab="p1"}
C {lab_pin.sym} 360 180 3 0 {name=p23 sig_type=std_logic lab="Cb"}
C {lab_pin.sym} 660 180 3 0 {name=p24 sig_type=std_logic lab=p2}
C {lab_pin.sym} 1230 190 3 0 {name=p25 sig_type=std_logic lab=Cb}
C {lab_pin.sym} 130 120 1 0 {name=p26 sig_type=std_logic lab="VDD"}
C {lab_pin.sym} 360 120 1 0 {name=p27 sig_type=std_logic lab="p1"}
C {lab_pin.sym} 660 120 1 0 {name=p28 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 940 120 1 0 {name=p29 sig_type=std_logic lab=p2}
C {lab_pin.sym} 1230 130 1 0 {name=p30 sig_type=std_logic lab=p2}
C {sky130_fd_pr/nfet3_01v8.sym} 1650 -60 0 0 {name=M25
W=1
L=0.15
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
spiceprefix=X
}
C {lab_pin.sym} 1630 -60 0 0 {name=p31 sig_type=std_logic lab="Cb"}
C {lab_pin.sym} 1670 -30 3 0 {name=p32 sig_type=std_logic lab="GND"}
C {lab_pin.sym} 1670 -90 1 0 {name=p33 sig_type=std_logic lab="Cout"}
C {sky130_fd_pr/pfet3_01v8.sym} 1590 160 0 0 {nname=M26
W=2
L=0.15
body=VDD
spiceprefix=X
}
C {lab_pin.sym} 1610 190 3 0 {name=p34 sig_type=std_logic lab=Cout}
C {lab_pin.sym} 1610 130 1 0 {name=p35 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1570 160 0 0 {name=p36 sig_type=std_logic lab=Cb}
C {sky130_fd_pr/nfet3_01v8.sym} 190 740 0 0 {name=M6
W=1
L=0.15
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
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 460 740 0 0 {name=M12
W=1
L=0.15
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
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 730 740 0 0 {name=M9
W=1
L=0.15
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
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1020 750 0 0 {name=M10
W=1
L=0.15
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
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1300 740 0 0 {name=M11
W=1
L=0.15
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
spiceprefix=X
}
C {lab_pin.sym} 170 740 0 0 {name=p37 sig_type=std_logic lab=A}
C {lab_pin.sym} 210 710 1 0 {name=p38 sig_type=std_logic lab="Sb"}
C {lab_pin.sym} 210 770 3 0 {name=p39 sig_type=std_logic lab="s1"}
C {lab_pin.sym} 480 770 3 0 {name=p40 sig_type=std_logic lab="s2"}
C {lab_pin.sym} 480 710 1 0 {name=p41 sig_type=std_logic lab="s1"}
C {lab_pin.sym} 440 740 0 0 {name=p42 sig_type=std_logic lab="B"}
C {lab_pin.sym} 750 770 3 0 {name=p43 sig_type=std_logic lab="GND"}
C {lab_pin.sym} 1040 780 3 0 {name=p44 sig_type=std_logic lab="GND"}
C {lab_pin.sym} 1320 770 3 0 {name=p45 sig_type=std_logic lab="GND"}
C {lab_pin.sym} 750 710 1 0 {name=p46 sig_type=std_logic lab="Cb"}
C {lab_pin.sym} 1040 720 1 0 {name=p47 sig_type=std_logic lab="n2"}
C {lab_pin.sym} 1320 710 1 0 {name=p48 sig_type=std_logic lab="n2"}
C {lab_pin.sym} 710 740 0 0 {name=p49 sig_type=std_logic lab="Cin"}
C {lab_pin.sym} 1000 750 0 0 {name=p50 sig_type=std_logic lab=A}
C {lab_pin.sym} 1280 740 0 0 {name=p51 sig_type=std_logic lab="B"}
C {sky130_fd_pr/pfet3_01v8.sym} 200 1050 0 0 {nname=M6
W=2
L=0.15
body=VDD
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 430 1050 0 0 {nname=M6
W=2
L=0.15
body=VDD
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 730 1050 0 0 {nname=M6
W=2
L=0.15
body=VDD
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1010 1050 0 0 {nname=M6
W=2
L=0.15
body=VDD
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1300 1060 0 0 {nname=M6
W=2
L=0.15
body=VDD
spiceprefix=X
}
C {lab_pin.sym} 180 1050 0 0 {name=p52 sig_type=std_logic lab=A}
C {lab_pin.sym} 410 1050 0 0 {name=p53 sig_type=std_logic lab="B"}
C {lab_pin.sym} 710 1050 0 0 {name=p54 sig_type=std_logic lab=Cin}
C {lab_pin.sym} 990 1050 0 0 {name=p55 sig_type=std_logic lab=A}
C {lab_pin.sym} 1280 1060 0 0 {name=p56 sig_type=std_logic lab=B}
C {lab_pin.sym} 1030 1080 3 0 {name=p57 sig_type=std_logic lab=Cb
}
C {lab_pin.sym} 220 1080 3 0 {name=p58 sig_type=std_logic lab="p1"}
C {lab_pin.sym} 450 1080 3 0 {name=p59 sig_type=std_logic lab="Cb"}
C {lab_pin.sym} 750 1080 3 0 {name=p60 sig_type=std_logic lab=p2}
C {lab_pin.sym} 1320 1090 3 0 {name=p61 sig_type=std_logic lab=Cb}
C {lab_pin.sym} 220 1020 1 0 {name=p62 sig_type=std_logic lab="VDD"}
C {lab_pin.sym} 450 1020 1 0 {name=p63 sig_type=std_logic lab="p1"}
C {lab_pin.sym} 750 1020 1 0 {name=p64 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1030 1020 1 0 {name=p65 sig_type=std_logic lab=p2}
C {lab_pin.sym} 1320 1030 1 0 {name=p66 sig_type=std_logic lab=p2}
C {sky130_fd_pr/nfet3_01v8.sym} 2410 -90 0 0 {name=M8
W=1
L=0.15
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
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 2680 -90 0 0 {name=M13
W=1
L=0.15
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
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 2950 -90 0 0 {name=M14
W=1
L=0.15
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
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 3240 -80 0 0 {name=M15
W=1
L=0.15
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
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 3520 -90 0 0 {name=M16
W=1
L=0.15
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
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 2420 110 0 0 {nname=M6
W=2
L=0.15
body=VDD
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 2650 110 0 0 {nname=M7
W=2
L=0.15
body=VDD
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 2950 110 0 0 {nname=M8
W=2
L=0.15
body=VDD
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 3230 110 0 0 {nname=M9
W=2
L=0.15
body=VDD
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 3520 120 0 0 {name=M17
W=2
L=0.15
body=VDD
spiceprefix=X
}
C {lab_pin.sym} 2390 -90 0 0 {name=p67 sig_type=std_logic lab=A}
C {lab_pin.sym} 2430 -120 1 0 {name=p68 sig_type=std_logic lab="Cb"}
C {lab_pin.sym} 2430 -60 3 0 {name=p69 sig_type=std_logic lab="n1"}
C {lab_pin.sym} 2700 -60 3 0 {name=p70 sig_type=std_logic lab="GND"}
C {lab_pin.sym} 2700 -120 1 0 {name=p71 sig_type=std_logic lab="n1"}
C {lab_pin.sym} 2660 -90 0 0 {name=p72 sig_type=std_logic lab="B"}
C {lab_pin.sym} 2970 -60 3 0 {name=p73 sig_type=std_logic lab="n2"}
C {lab_pin.sym} 3260 -50 3 0 {name=p74 sig_type=std_logic lab="GND"}
C {lab_pin.sym} 3540 -60 3 0 {name=p75 sig_type=std_logic lab="GND"}
C {lab_pin.sym} 2970 -120 1 0 {name=p76 sig_type=std_logic lab="Cb"}
C {lab_pin.sym} 3260 -110 1 0 {name=p77 sig_type=std_logic lab="n2"}
C {lab_pin.sym} 3540 -120 1 0 {name=p78 sig_type=std_logic lab="n2"}
C {lab_pin.sym} 2930 -90 0 0 {name=p79 sig_type=std_logic lab="Cin"}
C {lab_pin.sym} 3220 -80 0 0 {name=p80 sig_type=std_logic lab=A}
C {lab_pin.sym} 3500 -90 0 0 {name=p81 sig_type=std_logic lab="B"}
C {lab_pin.sym} 2400 110 0 0 {name=p82 sig_type=std_logic lab=A}
C {lab_pin.sym} 2630 110 0 0 {name=p83 sig_type=std_logic lab="B"}
C {lab_pin.sym} 2930 110 0 0 {name=p84 sig_type=std_logic lab=Cin}
C {lab_pin.sym} 3210 110 0 0 {name=p85 sig_type=std_logic lab=A}
C {lab_pin.sym} 3500 120 0 0 {name=p86 sig_type=std_logic lab=B}
C {lab_pin.sym} 3250 140 3 0 {name=p87 sig_type=std_logic lab=Cb
}
C {lab_pin.sym} 2440 140 3 0 {name=p88 sig_type=std_logic lab="p1"}
C {lab_pin.sym} 2670 140 3 0 {name=p89 sig_type=std_logic lab="Cb"}
C {lab_pin.sym} 2970 140 3 0 {name=p90 sig_type=std_logic lab=p2}
C {lab_pin.sym} 3540 150 3 0 {name=p91 sig_type=std_logic lab=Cb}
C {lab_pin.sym} 2440 80 1 0 {name=p92 sig_type=std_logic lab="VDD"}
C {lab_pin.sym} 2670 80 1 0 {name=p93 sig_type=std_logic lab="p1"}
C {lab_pin.sym} 2970 80 1 0 {name=p94 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 3250 80 1 0 {name=p95 sig_type=std_logic lab=p2}
C {lab_pin.sym} 3540 90 1 0 {name=p96 sig_type=std_logic lab=p2}
