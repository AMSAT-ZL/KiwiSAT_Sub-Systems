# Simulator compile script for HULOGIC simulation
# Intended to be run from ModelSim/Questa command line

######################## ISSUE 1 ONLY: ###################
# Run the complete timing sim.
#
source hulogic.tcl
run_gate_sim simple_tests
