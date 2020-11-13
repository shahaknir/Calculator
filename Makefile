CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_LIB=power.o basicMath.o
FLAGS= -Wall -g

all: mains maind 
mains: $(OBJECTS_MAIN) libmyMath.a 
	$(CC) $(FLAGS) $(OBJECTS_MAIN) -lmyMath -L. -o mains
maind: $(OBJECTS_MAIN)
	$(CC) $(FLAGS) -o maind $(OBJECTS_MAIN) -lmyMath -L.
mymathd: libmyMath.so
mymaths: libmyMath.a
libmyMath.so: $(OBJECTS_LIB)
	$(CC) -fPIC  -c power.c -o power.o
	$(CC) -fPIC  -c basicMath.c -o basicMath.o
	$(CC) -shared -o libmyMath.so $(OBJECTS_LIB)
libmyMath.a: $(OBJECTS_LIB)
	$(AR) rcs libmyMath.a $(OBJECTS_LIB)
main.o: main.c myMath.h
	$(CC) $(FLAGS) -c main.c
power.o: power.c myMath.h
	$(CC) $(FLAGS) -c power.c -o power.o
basicMath.o: basicMath.c myMath.h
	$(CC) $(FLAGS) -c basicMath.c -o basicMath.o
.PHONY: clean all mymathd mymaths

clean:
	rm -f *.o *.a *.so maind mains