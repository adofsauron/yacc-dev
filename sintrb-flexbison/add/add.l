%{　　　　　　　//C 和 Lex 的全局声明
#include <stdlib.h>
void yyerror(char *);
#include "add.tab.h"
%}
%%       //标记声明, 包括模式（C 代码）
[0-9]+       { yylval = atoi(yytext); return INTEGER; }
[-+*/\n]     return *yytext;

[/t]         ;/* 去除空格 */
.            yyerror("无效字符");
%%       //补充的Ｃ函数
int yywrap(void) {
  return 1;
}