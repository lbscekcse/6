#include<stdio.h>
#include<string.h>
#include<ctype.h>
char input[100];
int i=0,error=0;
void E();
void T();
void Eprime();
void Tprime();
void F();
void main()
{
	printf("Enter an arithmetic expression:\n");
	gets(input);
	E();
	if(strlen(input)==i && error==0)
		printf("Accepted...!!!\n");
	else
		printf("Rejected...!!!\n");
}

void E()
{
	T();
	Eprime();
}

void Eprime()
{
	if(input[i]=='+')
	{
		i++;
		T();
		Eprime();
	}
}

void T()
{
	F();
	Tprime();
}

void Tprime()
{
	if(input[i]=='*')
	{
		i++;
		F();
		Tprime();
	}
}

void F()
{
	if(input[i]== '(' )
	{
		i++;
		E();
		if (input [i]==')')
			i++;
	}
	else if(isalpha(input[i]) || (isalnum(input[i])))
	{
		i++;
		while ((isalnum(input[i])) || (input[i]=='-'))
		i++;
	}
	else
		error=1;
}
		
		
