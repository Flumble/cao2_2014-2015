quit -sim
vsim -assertdebug ifchain
view assertions
view fcovers
add wave *
run 200ns