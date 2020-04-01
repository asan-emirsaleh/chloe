# run this if there is a DEALER/ROUTER frontend running
# see run-broker:
run-chloe:
	JULIA_NUM_THREADS=8 julia src/chloe_svr.jl -l info --connect --nthreads=3 --address=ipc:///tmp/chloe-worker

run-chloe-9999:
	JULIA_NUM_THREADS=8 julia src/chloe_svr.jl -l info --connect --nthreads=3 --address=tcp://127.0.0.1:9999

# run this if you want just the annotator
run-server:
	JULIA_NUM_THREADS=8 julia src/chloe_svr.jl -l info --nthreads=3 --address=ipc:///tmp/chloe-client

run-broker:
	python bin/broker.py broker --worker=ipc:///tmp/chloe-worker --client=ipc:///tmp/chloe-client
