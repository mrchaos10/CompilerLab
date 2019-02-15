%{
int icount=0;
int ccount=0;
int rcount=0;
char init[1000][1000];
char condition[100][100];
char repeat[100][100];
%}
%%
"for(".*")" {icount++;strcpy(init[icount],yytext);}

"{"[\n]*.*[\n]*"}" {ccount++;strcpy(condition[ccount],yytext);}

%%
int main()
{
yylex();
int k=0;
int x=0;
int v=0;
char answer[10000];
for(k=1;k<=icount;k++)
{
printf("%s \n",init[k]);
for(x=5;x<=10;x++)
{
printf("Character %c \n",init[k][x]);
answer[v++]=init[k][x];
}
//answer[v++]='\0';
}
printf("Answer");
printf("%s \n",answer);
return 0;

}
