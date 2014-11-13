# code coverage
#
vcom -cover bcestf example0.vhd
vsim -coverage ifchain
view fcovers
#run 100ns
