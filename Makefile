# Declaration of variables
CC = gcc
CFLAGS = -Wall -g

# File names
EXEC = main
SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)

# Main Target
#$(EXEC): $(OBJS)
#	$(CC) $(OBJS) $(CFLAGS) -o $(EXEC)

all: ex1.o ex3.o ex4.o

# Obtain object files
%.o:%.c
	$(CC) -c $(CFLAGS) $< -o $@

# Remove generated files
clean:
	rm -f $(OBJS) 

