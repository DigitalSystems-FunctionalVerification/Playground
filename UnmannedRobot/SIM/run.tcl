do SIM/compile.tcl

# restart -force
# vsim -novopt UnmannedRobots.UnmannedRobots_TB
# add wave -position insertpoint sim:/Packet_TB/*
# run 200 ns

vsim -novopt UnmannedRobots.test
run
quit -sim