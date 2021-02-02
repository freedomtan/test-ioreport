CC=clang
#CFLAGS=-O2 -framework Foundation
CFLAGS=-O2 -Wall
LIBS=-lIOReport -framework Foundation

PROGS= test_ioreport

all: $(PROGS)

test_ioreport: test_ioreport.o
	$(CC) -o $@ $^ ${LIBS}

clean:
	rm -rf ${PROGS} *.o
