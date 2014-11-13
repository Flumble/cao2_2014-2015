quit -sim
vsim -assertdebug double
view assertions
view fcovers
add wave *
# add to wave the "name of the assertion"
add wave ack_after_req  
add wave ack_4cycles_req
force clk 0, 1 50ns -rep 100ns
force data 1
force req 0
force reset 0, 1 100ns
run 300ns

# correct
force data 3
force req 1, 0 100ns
run 500ns

# overlapping request
force data 5
force req 1, 0 100ns
run 300ns
force req 1, 0 100ns
run 300ns

 


