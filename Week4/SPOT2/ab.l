%{
  int verbc=0;
  char verbs[100][100]; 
  
%}
%%
"is"|"was"|"were"|"are" {
                          verbc++;
                          strcpy(verbs[verbc],yytext);
                         }
[a-zA-z][a-zA-z]+"ed" {
                          verbc++;
                          strcpy(verbs[verbc],yytext);
              
             }
[a-zA-z][a-zA-z]+"en"  {
                          verbc++;
                          strcpy(verbs[verbc],yytext);
              
             }
[a-zA-z][a-zA-z]+"s"  {
                          verbc++;
                          strcpy(verbs[verbc],yytext);
              
             }

%%
int main()
{
yylex();
int k;
printf("Verbs that matched the pattern");
for(k=1;k<=verbc;k++)
{
printf("%s \n",verbs[k]);
}
return 0;
}
