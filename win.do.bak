vlog -reportprogress 300 -work   work D:/test/asvm/decimate.v -novopt
vlog -reportprogress 300 -work   work D:/test/asvm/decimate_tb.v -novopt
vsim -L altera_ver -L altera_mf_ver -L cycloneive_ver -L altera_lnsim_ver -L sgate_ver -L lpm_ver -novopt work.decimate_tb
do wdc.do
restart -f
run 10000ns
