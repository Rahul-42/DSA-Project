CC = gcc
CFLAGS = -Wall
FILES = main.c utils/interface.c utils/amigos.c utils/tokencounter.c utils/friendlist.c

default:
	$(CC) $(CFLAGS) $(FILES) -o amigos
	./amigos

com:
	$(CC) $(CFLAGS) $(FILES) -o amigos

run:
	./amigos

dbg:
	$(CC) $(CFLAGS) -g $(FILES) -o amigos
	gdb amigos

test:
	$(CC) $(CFLAGS) utils/lab.c -o lab && ./lab

import:
	curl "https://api.mockaroo.com/api/5bf8e450?count=1000&key=47166f30" > "data/RandomUserDatabase.csv"

clean:
	rm -rf amigos lab graph/*