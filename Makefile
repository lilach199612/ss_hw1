all:mymaths.a mymathd.so mains maind

maind:main.o
	gcc -Wall -g -o maind main.o ./mymathd.so

mains:main.o mymaths.a
	gcc -Wall -g -o  mains main.o mymaths.a 

mymaths.a:basicMath.o power.o myMath.h
	ar -rcs mymaths.a basicMath.o power.o myMath.h 

mymathd.so:basicMath.o power.o myMath.h
	gcc -shared -o mymathd.so basicMath.o power.o myMath.h

basicMath.o:basicMath.c
	gcc -Wall -g -c basicMath.c

power.o:power.c
	gcc -Wall -g -c power.c

main.o:main.c myMath.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o *.a *.so maind mains
