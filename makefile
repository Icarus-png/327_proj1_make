CFLAGS = -Wall

#target exe
all: main.o myfunc.o
	g++ $(CFLAGS) -o myexe main.o myfunc.o
	
#Rebuild if either changes
myfunc.o: myfunc.cpp myfunc.h
	g++ $(CFLAGS) -c myfunc.cpp
	
#Rebuild if either file changes
main.o: main.cpp
	g++ $(CFLAGS) -c main.cpp
	
	
#Type 'make clean' to remove following
clean:
	$(RM) -f *.o myexe