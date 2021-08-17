############## Directories: ####################

rtl
===
HULOGIC RTL code for both simulation and synthesis, and
the Synplicity pin definition files (.sc).

synth
=====
Directory in which to run synthesis and keep its results.
Contains synthesis tool scripts (e.g. Synplicity .prq files).
Will contain .sdf timing results, .vq simulation netlists.

tb_src
======
All Verilog source code required for simulation, except 
the HULOGIC design itself (that's in rtl_src).  Has some 
internal structure to keep the source code for various 
behavioural models separate from the top level testbench.

sim
===
Directory in which to run simulation and keep its results.
Contains simulation compile/load scripts.

docs
====
Schematics, data sheets, internal documentation...

lib
===
QuickLogic gate level library, for timing simulation

###################### Instructions: #######################

To run functional simulation using ModelSim...
- go to the sim/ directory
- launch ModelSim either in GUI or command line mode
  (Altera Starter Edition is OK)
- issue the command "do run_rtl_sim.tcl" at the ModelSim prompt
- if in GUI mode you should get waveform display; you then need
  to issue the command "run -all" at the ModelSim console, or
  hit the "Run all" (double down arrow) button on the toolbar of
  either the wave or main window.  If in command-line mode, the
  simulation will start running automatically.
- sim should run to completion, with a couple of warnings about
  the A/D converters being read before power is stable - this is OK.
- Check for success message at end of simulation.
- Use the "exit" command, or the File menu, to exit ModelSim.

To run post-layout timing sim:
- either use the synthesis results that are shipped with this release
  (no action required, they're all already in the right place)
  or run your own synthesis, putting results in the synth/ directory
- go to the sim/ directory
- launch ModelSim either in GUI or command line mode
- issue the command "do run_gate_sim.tcl" at the ModelSim prompt
- sim should load and run exactly as described above, but note
  that Altera Starter Edition of Modelsim does not support SDF
  timing backannotation so the time delays are only nominal
- Check you got a message about temperature range and speed grade
  at the beginning of the simulation output.

To run synthesis:
- launch SpDE
- menu File/Import/Synplicity Project File
- browse to kiwiproj/synth
- open hu_fpga.prq
- Synplify should open, with all the RTL files listed
- hit the RUN button, all should be OK
- SpDE should now import the synthesis result and bring up a dialog
  with a couple of warnings - these are OK, dismiss both dialogs
- menu Tools/Options/General, check the options:
  * Logic Optimizer - level2, Overnight, Speed.
  * Placer: Quality, Default.
  * Router: Default.
  * Delay Modeler: Guaranteed, pick timing options to your choice.
  * Design Verifier: Remove unused gates should be CHECKED
  * Back-annotation: both options should be UNCHECKED (don't fix anything).
  Hit OK.
- Hit the "hammer" icon to run the tools.  The dialog should have all 7 boxes
  checked.  Hit Run.
- Design processing takes a few seconds, then dismiss the "success" dialog.
- Admire pretty picture of chip.  Check a few I/O pads for sanity,
  if you really must.
- Close SpDE and say "Yes" to the Save Changes? dialog.
- Output files, inlcuding the .chp image, should now be in the synth/ directory.
