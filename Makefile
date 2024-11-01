# Makefile for the Hello World program
# Demonstrates variables, automatic variables, pattern rules, and phony targets

# Variables
CC = gcc
CFLAGS = -Wall -g
TARGET = hello
SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)

# Phony targets
.PHONY: all clean

# Default target
all: $(TARGET)

# Linking
$(TARGET): $(OBJS)
	$(CC) -o $@ $^

# Compilation pattern rule
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up
clean:
	rm -f $(TARGET) $(OBJS)

run: $(TARGET)
	./$(TARGET)
