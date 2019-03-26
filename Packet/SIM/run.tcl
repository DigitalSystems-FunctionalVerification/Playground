do SIM/compile.tcl

# restart -force
vsim -novopt packet.Packet_TB
# add wave -position insertpoint sim:/Packet_TB/*
# run 200 ns

# vsim -novopt packet.test
run