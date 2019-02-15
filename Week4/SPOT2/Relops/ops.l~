%{
int key_count=0;
int op_count=0;
int up_count=0;
int low_count=0;
int sp_count=0;
int words=0;
int lines=0;
int charcount=0;
int defcount=0;
char defs[100][100];
char keywords[100][100];
char splchars[100][100];
char relops[100][100];
%}
%%
"if"|"then"|"else"|"for"|"while"|"int"|"float"|"real"|"return"|"print" {key_count++;strcpy(keywords[key_count],yytext);}
"def "[a-zA-Z]+"("[a-zA-Z0-9]+")" {defcount++;strcpy(defs[defcount],yytext);
                                  }
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
printf("Total function defintions %d \n",defcount);
printf("Keywords: \n");
for(i=1;i<=key_count;i++)
{
if(keywords[i][0]=='d'&&keywords[i][1]=='e'&&keywords[i][2]=='f')
{
printf("%s is a function defintion \n",keywords[i]);
}
else if(strcmp(keywords[i],"return")==0)
{
printf("%s is a return statement \n",keywords[i]);
}
else if(keywords[i][0]=='p'&&keywords[i][1]=='r'&&keywords[i][2]=='i'&&keywords[i][3]=='n'&&keywords[i][4]=='t')
{
printf("%s is a print statement \n",keywords[i]);
}
else
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
printf(" function defintions: \n");
for(i=1;i<=defcount;i++)
{
printf("%s\n",defs[i]);
}
return 0;
}

