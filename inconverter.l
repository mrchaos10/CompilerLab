%{
#include<stdio.h>
#include<stdlib.h>
#include <ctype.h>
char prepared[1000];
int check(char c)
{
switch(c)
{
case '+': return 1;
          break;
case '-': return 1;
          break;
case '*': return 2;
          break;
case '/': return 2;
          break;
case '^': return 3;
          break;
case '(': return 0;
          break;
case ')': return 0;
          break;
default: return 0;
          break;
}
return 0;
}
int isoperator(char c)
{
if(c=='+'||c=='-'||c=='/'||c=='*'||c=='^')
{
return 1;
}
return 0;
}
void infixtopostfix(char p[],int x)
{
char ans[1000],stack[1000];
int ansc=0,top=-1;
int len=strlen(p);
int i=0;
stack[++top]='x';
for(;i<len;i++)
{
if(isdigit(p[i])||isalpha(p[i]))
{
ans[ansc++]=p[i];
}
else if(p[i]=='(')
{
stack[++top]=p[i];
}
else if(p[i]==')')
{
while(stack[top]!='(')
{
ans[ansc++]=stack[top--];
}
//remove brack from top
top--;
}
else
{
while(stack[top]!='x'&&check(p[i])<=check(stack[top]))
{
ans[ansc++]=stack[top--];
}
stack[++top]=p[i];
}

}
while(stack[top]!='x')
{
ans[ansc++]=stack[top--];
}
ans[ansc++]='\0';
if(x==0)
printf("\n %s \n",ans);
else if(x==1)
{
int ck=strlen(ans)-1;
char ans1[1000];
int jh=0;
for(;ck>=0;ck--)
{
ans1[jh++]=ans[ck];
}
ans1[jh++]='\0';
printf("\n %s \n",ans1);
}
}

%}
%%
[a-zA-Z0-9] {strcat(prepared,yytext);}
[+()/*-] {strcat(prepared,yytext);}
. {printf("invalid char");}
\n
%%

int main()
{
yylex();
printf(" \n %s \n",prepared);
//postfix
infixtopostfix(prepared,0);

int i=strlen(prepared)-1;
int j=0;
char pared[1000];
for(;i>=0;i--)
{
if(prepared[i]=='(')
pared[j++]=')';

else if(prepared[i]==')')
pared[j++]='(';

else
pared[j++]=prepared[i];

}
pared[j++]='\0';
//for prefix
infixtopostfix(pared,1);

return 0;
}

