%option noyywrap

%{
#include <stdio.h>
#include <string.h>

int k = 0;

%}

%%

[0-9]+ {
    k = atoi(yytext);
    if (k % 6 == 0 && k % 8 == 0) {
        printf("%d\n", k);
    }
}

[\n] { printf("new line\n"); }

[0-9]+* { printf("int: %d\n", atoi(yytext)); }

[0-9]*\.[0-9]+ { printf("float: %f\n", atof(yytext)); }

[a-zA-Z][a-zA-Z0-9]* { printf("var: %s\n", yytext); }

[\+\-\*\/\%] { printf("op: %s\n", yytext); }

. { printf("unknown: %c\n", yytext[0]); }

%%

int main(int arc, char *argv[])
{
    yylex();
    return 0;
}

int yyerror(char *msg)
{
    printf("ERORR MESSAGE: %s\n", msg);
}

