# Simulator compile/load/run script for HULOGIC simulation.
# Intended to be run from ModelSim/Questa command line.

######################## ISSUE 1 ONLY: ###################
# Convenience procedures to run complete sims
# Run these procedures from the ModelSim command line.
#
# run_rtl_sim <testname> <any other optional arguments>
# run_gate_sim <testname> <any other optional arguments>
#
proc run_rtl_sim {testname args} {
  clean_library
  compile_rtl_sim $testname
  eval load_rtl_sim $testname $args
}
#
proc run_gate_sim {testname args} {
  clean_library
  compile_rtl_sim $testname
  compile_gate_sim $testname
  eval load_gate_sim $testname [locate_sim] hu_fpga work $args
}
#
###############################################################


###############################################################
# OK, that's the convenient stuff out of the way; 
# here's the code that does the real work.
###############################################################

# Return file names for various parts of the simulation, 
# not including the top-level test control file or
# the gate-level netlist (these must be handled separately).
#
proc HUlogic_files {which} {
  set files {}
  if {[string match $which rtl_src]} {
    lappend files \
      spi_ctlr.v  \
      edac.v      \
      errcount.v  \
      hulogic.v   \
      hu_fpga.v
  }
  if {[string match $which tb_src]} {
    lappend files \
      maxim1202/max1202.v              \
      harness/adc_module.v             \
      i80c188/TN80C188EB.v             \
      mem_models/asyncMem.v            \
      mem_models/mem_specialisations.v \
      harness/harness.v
  }
  return $files
}


# Zap any existing ModelSim library directory and renew it.
#
proc clean_library {{lib work}} {
  if {[file exists $lib]} {
    if {![file isdirectory $lib]} {
      error "Can't create library $lib.  A file of that name already exists."
    }
    if {![file exists [file join $lib "_info"]]} {
      error "Can't create library $lib.  A directory of that name\n\
             already exists, but does not appear to be a ModelSim library."
    }
    vdel -all $lib
  }
  vlib $lib
}


# Check whether a set of values all exist in a list.
#
proc lexists {list args} {
  foreach key $args {
    if {[lsearch -glob $list $key] < 0} { return 0 }
  }
  return 1
}


# Find where the project lives.  If unspecified,
# assume current working dir is $root/sim.
#
proc locate_sim {{root {}}} {
  # If root argument not specified, check we're in */sim.
  if {[string equal $root {}]} {
    if {[string equal [file tail [pwd]] sim]} {
      set root [file dirname [pwd]]
    } else {
      error {Project root directory not specified, and [pwd] is not $root/sim.}
    }
  }
  # Form a list of all subdirs of the project root, check it's sensible.
  set root_subdirs {}
  foreach file [glob -nocomplain $root/*] {
    if {[file isdirectory $file]} {
      lappend root_subdirs [file tail $file]
    }
  }
  if {![lexists $root_subdirs rtl_src tb_src]} {
    error [format {The project root %s does not contain "rtl_src" and "tb_src" directories} $root]
  }
  if {![file isdirectory [file join $root tb_src tests]]} {
    error [format {The project root %s does not contain a "tb_src/tests" directory} $root]
  }
  return $root
}

# Use vlog to compile all the files in a given group
#
proc compile_group {group_dir filelist {simlib work}} {
  foreach file $filelist {
    vlog -novopt -work $simlib [file join $group_dir $file]
  }
}


# Compile and load procedures.
#
proc compile_rtl_sim {test {base {}}} {
  set root [locate_sim $base]
  compile_group [file join $root rtl_src] [HUlogic_files rtl_src]
  compile_group [file join $root tb_src] [HUlogic_files tb_src]
  compile_group [file join $root tb_src tests] $test.v
}
#
proc compile_gate_sim {test {base {}} {toplevel hu_fpga} {gateslib work}} {
  set root [locate_sim $base]
  vlog -novopt -work $gateslib -v [file join $root lib qlprim.v] \
     [file join $root synth $toplevel.vq]
}
#
proc load_rtl_sim {testname args} {
  eval vsim -novopt $testname $args
  run_or_waves
}
#
proc load_gate_sim {testname base toplevel gateslib args} {
  set root [locate_sim $base]
  if {[altera_edition]} {
    echo {*************************************************************************}
    echo {******* Altera Edition does not support SDF timing annotation. **********}
    echo {*************************************************************************}
    eval vsim -novopt -L $gateslib $args $testname 
  } else {
    eval vsim -novopt -L $gateslib $args \
           -sdfmax $testname/TH/FPGA=[file join $root synth $toplevel.sdf] \
           $testname 
  }
  run_or_waves
}
#
proc run_or_waves {{waves wave.do}} {
  if {[batch_mode]} {
    run -all
  } elseif {[file exists $waves]} {
    noview wave
    view wave -undock
    do $waves
  }
}
