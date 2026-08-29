# INVX1 CharLib setup

`charlib_invx1.yaml` characterizes the parasitic-extracted `INVX1.spice` netlist at the SKY130A typical (`tt`) corner, 1.8 V, and 25 C.

Run it from this directory:

```bash
/home/sumit/VLSI_Design/Project_1/.venv/bin/charlib run charlib_invx1.yaml -o results/invx1_tt_1v80.lib
```

The generated Liberty library is `results/invx1_tt_1v80.lib`.

The configuration uses `pJ` for the energy unit because the `/foss` Charlib build does not parse `fJ` correctly.

The configuration references the installed SKY130 PDK model at `/home/sumit/eda_tools/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice`; change that path if the PDK is moved. The netlist pin order is `A Y VGND VPWR`, and the configuration must retain those exact names.
