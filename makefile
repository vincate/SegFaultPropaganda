all: SegProp execution clean

init.o: src/init.c src/fonctions.h
	gcc -Wall -c src/init.c
	
player.o: src/player.c src/fonctions.h
	gcc -Wall -c src/player.c
	
input.o: src/input.c src/fonctions.h
	gcc -Wall -c src/input.c	
	
graphics.o: src/graphics.c src/fonctions.h
	gcc -Wall -c src/graphics.c
	
ennemi.o: src/ennemi.c src/fonctions.h
	gcc -Wall -c src/ennemi.c
	
tourelle.o: src/tourelle.c src/fonctions.h
	gcc -Wall -c src/tourelle.c
	
projectile.o: src/projectile.c src/fonctions.h
	gcc -Wall -c src/projectile.c
	
tir.o: src/tir.c src/fonctions.h
	gcc -Wall -c src/tir.c
	
main.o: src/main.c src/fonctions.h
	gcc -Wall -c src/main.c

SegProp: init.o input.o main.o graphics.o player.o ennemi.o tourelle.o projectile.o tir.o
	gcc -o SegProp init.o input.o main.o graphics.o player.o ennemi.o tourelle.o projectile.o tir.o `sdl-config --libs` -lSDL -lSDL_image -lSDL_ttf
	
execution: 
	./SegProp

clean:
	rm  *.o SegProp
