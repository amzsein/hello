CC=gcc
OBJS=hello.o

all: hello

hello: hello.o
	$(CC) -o $@ $(LDFLAGS) $(OBJS)

*.o: *.c
	$(CC) -c -o $@ $< $(CFLAGS)

clean:
	rm *.o hello

