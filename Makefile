CFLAGS = -g
LDFLAGS = -g
SOURCES = jedec.c machxo.c main.c
INCLUDES = jedec.h machxo.h

OBJS = jedec.o machxo.o main.o

PROG = prog_machxo

#CC=/opt/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-gcc

$(PROG) : $(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) -o $(PROG)

main.o : $(INCLUDES)
jedec.o : jedec.h
machxo.o : machxo.h
