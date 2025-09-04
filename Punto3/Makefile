punto3: punto3.y punto3.l
	bison -d punto3.y
	flex punto3.l
	gcc punto3.tab.c lex.yy.c -lm -lfl -o punto3

clean:
	rm -f punto3 punto3.tab.c punto3.tab.h lex.yy.c
