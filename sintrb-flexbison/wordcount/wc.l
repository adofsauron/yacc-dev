%option noyywrap

%{

#include <stdio.h>
#include "tools.h"

int chars = 0;
int lines = 0;

%}

WORD_SYM		([a-zA-Z0-9\*]+)

%%

select {
	printf("select\n");
}

from {
	printf("from\n");
}

;		{ return; }

{WORD_SYM} {
	printf("word = [%s]\n", yytext);
}

. {
	const char* str = yytext;
	if (' ' != str[0]) 
	{
		printf(". = [%s]\n", yytext);
	}
}

%%


int start_yacc(int arc, char **argv)
{
	yylex();
	printf("lines:%d chars:%d\n",lines,chars);
	return 0;
}
