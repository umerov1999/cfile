COPTS    = -Wall -Wshadow -Werror-implicit-function-declaration -Wstrict-prototypes -Wpointer-arith -Wcast-qual -Wcast-align -Wwrite-strings -Wmissing-format-attribute -Wformat=2 -Wno-format-y2k -Wno-declaration-after-statement

all: libcfile.a

libcfile.a: cfile.c cfile.h
	gcc -g ${COPTS} -c cfile.c -o cfile.o
	ar rv libcfile.a cfile.o

