vlog -reportprogress 300 -work   work D:/test/asvm/sqrlog.v -novopt
vlog -reportprogress 300 -work   work D:/test/asvm/window.v -novopt
vlog -reportprogress 300 -work   work D:/test/asvm/window_tb.v -novopt
vsim -L altera_ver -L altera_mf_ver -L cycloneive_ver -L altera_lnsim_ver -L sgate_ver -L lpm_ver -novopt work.window_tb
do ww.do
run 10us
