
build:
	bison -d lexya_c.y
	lex lexya_c.l
	gcc -g -o parser lex.yy.c lexya_c.tab.c

run:
	./parser < input

clean:
	rm -rf lex.yy.c lex.yy.h parser