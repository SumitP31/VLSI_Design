# VLSI_Design
VLSI_Design assignments

## Assignment 1: SPICE Netlist for INVX1 and INVX2
1. INVX1 Transient and Static Analysis in ngspice
2. INVX1 Transient and Static Analysis in ngspice

## Assignment 2: Layout and Parasitics
1. INVX1 :
   > Create Layout in Magic
   > Export SPICE netlist and 
   ``` cli
   extract all
   ext2spice lvs
   ext2spice -d -o invx1_layout.spice
   ```
   > Compare with Assignment_1 netlist
   ``` cli
   netgen -batch lvs "invx1_layout.spice INVX1" "invx1.ckt INVX1" /foss/pdks/sky130A/libs.tech/netgen/*.tcl
   ```
   > Export Parasitics
   ``` cli
   extract all
   ext2spice scale off
   ext2spice cthresh 0
   ext2spice rthresh 0
   ext2spice -d -o invx1_pex.spice
   ```
2. INVX2 :
   > Create Layout in Magic
   > Export SPICE netlist and 
   ``` cli
   extract all
   ext2spice lvs
   ext2spice -d -o invx2_layout.spice
   ```
   > Compare with Assignment_1 netlist
   ``` cli
   netgen -batch lvs "invx2_layout.spice INVX2" "invx2.ckt INVX2" /foss/pdks/sky130A/libs.tech/netgen/*.tcl
   ```
   > Export Parasitics
   ``` cli
   extract all
   ext2spice scale off
   ext2spice cthresh 0
   ext2spice rthresh 0
   ext2spice -d -o invx2_pex.spice
   ```
   
