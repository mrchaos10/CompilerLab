%{
  int countb=0; 
  int i=0;
  int j=0;
  char ans[100][100];
%}
%%
"/*".*"*/" { j++;
             strcpy(ans[j],yytext);
             
           }

["].*["]   { j++;
             strcpy(ans[j],yytext);
           }
%%
int main()
{
yylex();
int k;
int len;
printf("Comments that matched the pattern \n");
for(k=1;k<=j;k++)
{
ans[k][0]=' ';
ans[k][1]=' ';
len=strlen(ans[k]);
ans[k][len-1]=' ';
ans[k][len-2]=' ';
}
for(k=1;k<=j;k++)
{
printf("%s \n",ans[k]);
}
return 0;
}
