%{
#include<stdio.h>
#include<stdlib.h>
%}
%token NUMBER ID
%left '+''-''*''/'

%%
exp: exp'+'exp
| exp'-'exp
| exp'*'exp
| exp'/'exp
| '('exp')'
| NUMBER
| ID;
%%

int main(){
printf("Enter the expression:");
yyparse();
printf("Valid Expression!\n");
}
int yyerror(){
printf("Invalid Expression!\n");
exit(1);
}

