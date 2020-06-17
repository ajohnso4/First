###############################################################################
# Author: Andrew Johnson
# Date: 3/8/2020
# Pledge: I pledge my honor that I have abided by the Stevens Honor System.
# Description: makefile
###############################################################################
CC     = gcc
C_FILE = $(wildcard *.c)
TARGET = $(patsubst %.c,%,$(C_FILE))
CFLAGS = -g -Wall -Werror -pedantic-errors

all:
	$(CC) $(CFLAGS) $(C_FILE) -o $(TARGET)
clean:
	rm -f $(TARGET) $(TARGET).exe
