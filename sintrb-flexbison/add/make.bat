del *.tab.c
del *.tab.h
del lex.yy.c
del *.exe

win_bison -d add.y
win_flex add.l

gcc -o add.exe *.c
echo 48 | add.exe 

pause
