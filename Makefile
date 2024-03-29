CC = gcc
CFLAGS= -Wall -g
LDFLAGS=

SRC = main.c map.c alg.c lite_queue.c
OBJ = $(SRC:.c=.o)
EXEC = map_traversal

all: $(SRC) $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(LDFLAGS) $(OBJ) -o $@

%.o : %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f *.o map_traversal
