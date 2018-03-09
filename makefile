objects = math.o  main.o  serv.o  clie.o
game:$(objects)
cc - o game $(objects)
math.o:main.c
cc - c math.c
main.o:main.c math.h commom.h
cc -c main.c
serv.o:serv.c commom.h
cc - c serv.c
clie.o:clie commom.h
cc - c clie.c
clean:
rm game $(objects)
