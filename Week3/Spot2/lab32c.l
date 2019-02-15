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
char charss[1000][100];
char liness[100][100];
char wordss[100][100];
%}
%%
. {charcount++;strcpy(charss[charcount],yytext);}
\n {lines++;charcount++;words++;strcpy(wordss[words],yytext);strcpy(liness[lines],yytext);strcpy(charss[charcount],yytext);}
[^ \t\n]+ {words++;charcount+=yyleng;strcpy(wordss[words],yytext);strcpy(charss[charcount],yytext);}
%%
int main(void)
{
yylex();
int i=0;
printf("Characters totally %d\n",charcount);
printf("Words: %d \n",words);
printf("Lines: %d \n",lines);
printf("Chars: \n");
for(i=1;i<=charcount;i++)
{
printf("%s\n",charss[i]);
}
i=0;
printf("Words: \n");
for(i=1;i<=words;i++)
{
printf("%s\n",wordss[i]);
}
i=0;
printf("Lines: \n");
for(i=1;i<=lines;i++)
{
printf("%s\n",liness[i]);
}

return 0;
}
