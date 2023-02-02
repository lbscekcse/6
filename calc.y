%{
#include<stdio.h>
int flag=0;
%}
%token NUMBER
%left '+''-'
%left '*''/''%'
%left '('')'

%%
ArithmeticExpression:E {printf("\nRESULT=%d\n",$$); return 0;};
E:E'+'E {$$=$1+$3;}
| E'-'E {$$=$1-$3;}
| E'*'E {$$=$1*$3;}
| E'/'E {$$=$1/$3;}
| E'%'E {$$=$1%$3;}
| '('E')' {$$=$2;}
| NUMBER {$$=$1;}
;
%%

void main()
{
printf("Enter any arithmetic expression:");
yyparse();
if(flag==0)
printf("\nVALID EXPRESSION\n");
}
void yyerror()
{
printf("\nInvalid expression\n");
flag=1;
}

