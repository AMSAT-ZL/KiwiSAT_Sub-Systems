# Simulator compile script for HULOGIC simulation
# Intended to be run from ModelSim/Questa command line

######################## ISSUE 1 ONLY: ###################
# Run the complete RTL sim.
#
source hulogic.tcl
run_rtl_sim simple_tests
