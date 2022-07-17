
add:
	bison -d add.y
	flex add.l
	gcc *.c -lm -o add
	
run:
	./add < ./file.txt

clean:
	rm -rf add.tab.h *.h *.c add