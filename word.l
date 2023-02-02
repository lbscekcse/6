/*Count the letters in a strings*/
%{
#include<stdio.h>
int words=0,ch=0,line=0;
%}
%%
[A-Z|a-z]" " {words++;ch++;}
[A-Z|a-z]"\n" {words++;ch++;line++;}
[A-Z|a-z] {ch++;}

EOF {printf("No of words:%d\nNo of characters:%d\nNo of lines:%d\n",words,ch,line);}
. {}

%%
int main(int argc,char *argv[])
{
yyin=fopen(argv[1],"r");
yylex();
}

