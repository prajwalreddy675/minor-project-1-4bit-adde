#!/bin/bash
# LVS: compare the layout extracted by Magic against the Xschem schematic.
# Run AFTER you have drawn the layout in Magic and extracted it (see README, step 6).
#   ./lvs.sh full_adder_1bit
CELL=${1:-full_adder_1bit}
PDK_ROOT=${PDK_ROOT:-/usr/local/share/pdk}
netgen -batch lvs "${CELL}.spice ${CELL}" "../xschem/${CELL}.spice ${CELL}" \
   $PDK_ROOT/sky130A/libs.tech/netgen/sky130A_setup.tcl -blackbox
# Success looks like:  "Circuits match uniquely."
