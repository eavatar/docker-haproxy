
build: base consul


base: base/Dockerfile
	cd base && make

consul: consul/Dockerfile
	cd consul && make
