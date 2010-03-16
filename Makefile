.PHONY: all

all:
	./test-suite.sh	

rock:
	OOC=rock make all 

clean:
	rm -rf build/
