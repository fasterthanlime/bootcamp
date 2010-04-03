all:
	make nasm
	mkdir -p rock_tmp/
	cp ./wrapped.h  rock_tmp/
	rock caller.ooc wrapped.o -v -noclean +-w

nasm:
	rm -f wrapped.o
	nasm -f elf wrapped.nasm -o wrapped.o

clean:
	rm -rf *.o *_tmp caller
