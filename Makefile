CC := gcc
FULL_CMD_IMM := $(CC) -o $(BIN) $(SRC) #undefined and expanded here
FULL_CMD_LAZY = $(CC) -o $(BIN) $(SRC) #undefined and expanded when the variable is called
main:main.o
	gcc -o main main.o
main.o:
	gcc -c main.c
clean:
	rm main
	main.o
print:
	echo $(FULL_CMD_IMM)
	echo $(FULL_CMD_LAZY)
SRC = "main.c"
OBJ = "main.o"
BIN = "main"

