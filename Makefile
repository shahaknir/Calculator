
CC=gcc
main.o: main.c myMath.h
	CC -c main.c

myMath.h: power.c basicMath.c
	CC power.c basicMath.c -o myMath.o


	