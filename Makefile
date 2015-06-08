CC=gcc
OBJS=hello.o

all: hello

hello: hello.o
	$(CC) -o $@ $(LDFLAGS) $(OBJS) -fprofile-arcs

%.o: %.c
	$(CC) -c -o $@ $< $(CFLAGS) -fprofile-arcs -ftest-coverage

clean:
	rm -f *.gcov *.gcno *.gcda *.o hello

