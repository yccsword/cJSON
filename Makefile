CC=gcc
CFLAGS?=-std=c99 -ansi -pedantic -O4 -Wall -fPIC 

default: cJSON.o
	$(CC) -shared -Wl,-soname,libcJSON.so -o libcJSON.so cJSON.o
	cp -f libcJSON.so /home/cyi/cloudac/application/lib/weixin/
	cp -f cJSON.h /home/cyi/cloudac/application/lib/weixin/                         

cJSON.o: cJSON.c cJSON.h

clean:
	rm -f *.o *.so
