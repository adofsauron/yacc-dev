%{

#include <stdlib.h>
#include "add.tab.h"

void yyerror(char *);

%}

%%

[0-9]+       { yylval = atoi(yytext); return INTEGER; }

[-+*/\n]     return *yytext;

[/t]

.            yyerror("无效字符");

%%

int yywrap(void) {
  return 1;
}
