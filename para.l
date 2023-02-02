%{
#include<stdio.h>
%}
%%
if|else|while|for|switch|break|continue|do {printf("%s is a keyword\n",yytext);}
"||"|"&&"|"!" {printf("%s is a Logical operator\n",yytext);}
[A-Z|a-z][A-Z|a-z|0-9]* {printf("%s is a Identifier\n",yytext);}
[0-9]* {printf("%s is a Numbers\n",yytext);}
[0-9]+"."[0-9]+ {printf("%s is a Numbers\n",yytext);}
"<"|">"|"<="|">="|"!="|"==" {printf("%s is a Relation operator\n",yytext);}
"+"|"-"|"*"|"/"|"%" {printf("%s is a Arithmetic operator\n",yytext);}
"=" {printf("%s is a Assignment operator\n",yytext);}
"++" {printf("%s is a Increment operator\n",yytext);}
"--" {printf("%s is a Decrement operator\n",yytext);}
. {printf("%s is a Invalid\n",yytext);}
%%
int main(int argc,char *argv[])
{
yyin=fopen(argv[1],"r");
yylex();
}