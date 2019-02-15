%{
  int countb=0; 
  int i=0;
  int j=0;
  char ans[100][100];
%}
%%
.*[a].*[e].*[i].*[o].*[u].* { j++;
                          strcpy(ans[j],yytext);
                        }
%%
int main()
{
yylex();
int k;
printf("Strings that matched the pattern \n");
for(k=1;k<=j;k++)
{
printf("%s \n",ans[k]);
}
return 0;
}
