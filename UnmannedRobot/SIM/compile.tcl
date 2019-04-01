vlib UnmannedRobots
vmap UnmannedRobots UnmannedRobots
vmap

vlog -reportprogress 300 -work UnmannedRobots SV/UnmannedRobots.sv
vlog -reportprogress 300 -work UnmannedRobots SW/test.sv
vlog -reportprogress 300 -work UnmannedRobots TB/UnmannedRobots_TB.sv