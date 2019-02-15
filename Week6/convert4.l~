%{
int keycount=0;

char functions[1000];
char body[1000];
%}
%%
"int ".* {if(keycount==0){yytext[0]=' ';yytext[1]=' ';yytext[2]=' ';yytext[3]=' ';strcpy(functions,yytext);}}
"{"[\t\n]*.*[\t\n]*"}" {yytext[0]=' ';yytext[yyleng-1]=' ';strcpy(body,yytext);}
%%
int main()
{
yylex();

int i=0;
int len=strlen(functions);
char newfunct[1000];
int j=0;
for(i=3;i<len;i++)
{
if(functions[i]=='i')
{
if(functions[i+1]=='n')
{
if(functions[i+2]=='t')
{
functions[i]='\0';
functions[i]=' ';
functions[i+1]='\0';
functions[i+1]=' ';
functions[i+2]='\0';
functions[i+2]=' ';
}
}
}
newfunct[j]=functions[i];
j++;
}
newfunct[j]='\0';


char newbody[1000];
i=0;j=0;
len=strlen(body);
for(;i<len;i++)
{
if(body[i]=='r')
{
if(body[i+1]=='e')
{
if(body[i+2]=='t')
{
if(body[i+3]=='u')
{
if(body[i+4]=='r')
{
if(body[i+5]=='n')
{
body[i]='\0';
body[i]=' ';
body[i+1]='\0';
body[i+1]=' ';
body[i+2]='\0';
body[i+2]=' ';
body[i+3]='\0';
body[i+3]=' ';
body[i+4]='\0';
body[i+4]=' ';
body[i+5]='\0';
body[i+5]=' ';
}
}
}
}
}
}
else if(body[i]=='\n'||body[i]=='\t')
{
body[i]='\0';
body[i]=' ';
}
newbody[i]=body[i];
}
newbody[i]='\0';

printf("\n #define");
printf("%s",newfunct);
printf("%s",newbody);
return 0;
}

