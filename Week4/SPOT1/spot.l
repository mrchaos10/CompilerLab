%{
  int countb=0; 
  int i=0;
  int j=0;
  char ans[100][100];
%}
%%
[a|b][a|b]+ {for(i=0;i<yyleng-1;i++)
             { 
              if(yytext[i]=='b')
              {
               countb++;
              }  
             }
              if(countb>=2)
              {
                 j++;
                strcpy(ans[j],yytext);
                 i=0;
                 countb=0;
              }

            }
%%
int main()
{
yylex();
int k;
printf("Strings that matched the pattern");
for(k=1;k<=j;k++)
{
printf("%s",ans[k]);
}
return 0;
}
