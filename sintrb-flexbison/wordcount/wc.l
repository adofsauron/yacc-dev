%option noyywrap

%{
#include <stdio.h>
#include "tools.h"

int chars = 0;
int lines = 0;
%}

%%
. {
	++chars;
	Print("add chars");
}

\n {
	++lines;
	++chars;
	Print("add chars and lines");
}


%%
int main(int arc, char *argv[])
{
	printf("Ctrl+C to stop input.\n");
	yylex();
	printf("lines:%d chars:%d\n",lines,chars);
	return 0;
}
