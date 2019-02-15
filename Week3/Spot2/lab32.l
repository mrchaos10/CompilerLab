upletter [A-Z]
lowletter [a-z]
%{
int key_count=0;
int op_count=0;
int up_count=0;
int low_count=0;
int sp_count=0;
int words=0;
int lines=0;
int charcount=0;
char keywords[100][100];
char splchars[100][100];
char relops[100][100];
%}
%%
"if"|"then"|"else"|"for"|"while"|"int"|"float"|"real" {key_count++;strcpy(keywords[key_count],yytext);}
"<"|"<="|">"|">="|"<>"|"="|"=="|"!=" {op_count++;strcpy(relops[op_count],yytext);}
[!@#$^&*"%;]|"("|")" {sp_count++;strcpy(splchars[sp_count],yytext);}
%%
int main(void)
{
yylex();
int i;

printf("Keywords: %d \n",key_count);
printf("Relational Operators: %d \n",op_count);
printf("Special Characters: %d \n",sp_count);

printf("Keywords: \n");
for(i=1;i<=key_count;i++)
{
printf("%s\n",keywords[i]);
}
i=0;
printf("SplChars: \n");
for(i=1;i<=sp_count;i++)
{
printf("%s\n",splchars[i]);
}
i=0;
printf("Relops: \n");
for(i=1;i<=op_count;i++)
{
printf("%s\n",relops[i]);
}
return 0;
}

