# Project 1
## AND Gate : A*!B
> Includes:

- Pre Layout .ckt file for calculating PMOS width
- Magic file containing layout
-Post Layout file *_layout.spice & *_pex.spice containing parasitics.
- *_spwr.ckt for static power analysis
- *.lef file containing all routing info
- *_analysis.ckt file extract all parameters required for .lib file in simulation_results.txt
- *.v and tb_*.v contains functionality and verilog tb


## DFF_posedge : Q<=D
> Includes:

- Pre Layout .ckt file for calculating PMOS width
- Magic file containing layout
-Post Layout file *_layout.spice & *_pex.spice containing parasitics.
- *.lef file containing all routing info
- *_spwr.ckt for static power analysis
- *_analysis.ckt file extract all parameters required for .lib file in simulation_results.txt
- *.v and tb_*.v contains functionality and verilog tb


// BUFF folder is just test folder

## Different commnads to run

- To run ngspice
``` cli
ngspice gate.ckt
```

- To run magic
``` cli
magic GATE.mag
```

- To extract lvs and pex
``` cli
extract all
ext2spice lvs
ext2spice -d -o gate_layout.spice
ext2spice scale off
ext2spice cthresh 0
ext2spice rthresh 0
ext2spice -d -o gate_pex.spice
```
- To extract .lef
```cli
lef write
```

- To generate .lib from charlib
```cli
cahrlib run gate.yaml -o gate.lib
```

- To run verilog file
```cli
iverilog -o gate_sim gate.v tb_gate.v
vvp gate_sim
gtkwave gate.vcd
```
