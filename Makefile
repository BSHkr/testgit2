bsh: main.o hello.o world.o
	gcc -o bsh main.o hello.o world.o

main.o: includes/bsh.h srcs/main.c
	gcc -c -o main.o main.c

hello.o: includes/bsh.h srcs/hello.c
	gcc -c -o hello.o hello.c

world.o: includes/bsh.h srcs/world.c
	gcc -c -o world.o world.c
