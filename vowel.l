%{
#include<stdio.h>
int w=0,c=0;
%}

%%
[aeiouAEIOU] {w++;}
[a-z|A-Z] {c++;}
EOF {printf("No of VOWELS: = %d\n No of consonants=%d\n",w,c);
return 0;}
. {}
%%

int main(int argc,char *argv[])
{
yyin=fopen(argv[1],"r");
yylex();

}
