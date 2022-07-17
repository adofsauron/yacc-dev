
add:
	bison -d add.y
	flex add.l
	gcc *.c -lm -o add
	echo 48 | ./add

clean:
	rm -rf add.tab.h *.h *.c add