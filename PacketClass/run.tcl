do compile.tcl

vsim -novopt packet.Packet_TB
add wave -position insertpoint sim:/Packet_TB/*
run 200 ns