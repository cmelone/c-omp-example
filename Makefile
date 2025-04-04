# File: Makefile

FC = gfortran
CC = gcc

CFLAGS = -fopenmp
FFLAGS = -fopenmp

OBJS = hello.o main.o
EXEC = combined_program

all: $(EXEC)

$(EXEC): $(OBJS)
	$(FC) $(FFLAGS) -o $@ $^

hello.o: hello.c
	$(CC) $(CFLAGS) -c $< -o $@

main.o: main.f90
	$(FC) $(FFLAGS) -c $< -o $@

clean:
	rm -f *.o *.mod $(EXEC)

