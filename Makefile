.PHONY: all

all:
	./test-suite.sh	source/

rock:
	OOC=rock make all 

clean:
	rm -rf build/
