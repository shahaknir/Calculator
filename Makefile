CC = gcc
a: main.o libmyMath.a
	$(CC) main.o -lmyMath -L. -o a
libmyMath.a: power.o basicMath.o
	ar rcs libmyMath.a power.o basicMath.o
main.o: main.c myMath.h
	$(CC) -c main.c -o main.o
power.o: power.c myMath.h
	$(CC) -c power.c -o power.o
basicMath.o: basicMath.c myMath.h
	$(CC) -c basicMath.c -o basicMath.o

.PHONY: clean
clean:
	rm *.o *.a a
