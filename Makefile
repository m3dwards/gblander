all: main.o
	rgblink -o gblander.gb main.o
	rgbfix -v -p 0xFF gblander.gb
	rm *.o

main.o: main.asm
	rgbasm -L -o main.o main.asm
