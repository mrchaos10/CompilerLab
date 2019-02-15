%{
  int countb=0; 
  int i=0;
  int opcount=0;
  char operators[100][100];
  char pres[100][100];
  char posts[100][100];
  char assigns[100][100];
  char ids[1000][100];
  int precount=0;
  int postcount=0;
  int idcount=0;
  int assigncount=0;
%}
%%
"=" {assigncount++;
     strcpy(assigns[assigncount],yytext); 
    }
[a-zA-Z]+([a-zA-Z]|[0-9])* {
                            idcount++;
                            strcpy(ids[idcount],yytext);                
                           }
[+|*|\-|/] { opcount++;
             strcpy(operators[opcount],yytext);
           }
"++"|"--"[a-zA-Z]+([a-zA-Z]|[0-9])* {
                                precount++;
                                strcpy(pres[precount],yytext);                             
[a-zA-Z]+([a-zA-Z]|[0-9])*"++"|"--" {
                                postcount++;
                                strcpy(posts[postcount],yytext);                             
                               }
                               }
%%
int main()
{
yylex();
int k;
printf("Identifers used \n");
for(k=1;k<=idcount;k++)
{
printf("%s",ids[k]);
}
printf("Assignments used \n");
for(k=1;k<=assigncount;k++)
{
printf("%s",assigns[k]);
}
printf("Operators used \n");
for(k=1;k<=opcount;k++)
{
printf("%s",operators[k]);
}
printf("Pre operators used \n");
for(k=1;k<=precount;k++)
{
if(press[k][1]=='+' && press[k][2]=='+')
{
printf("Preincrement");
}
if(press[k][1]=='-' && press[k][2]=='-')
{
printf("Predecrement");
}
printf("%s",press[k]);
}
printf("Post operators used \n");
for(k=1;k<=postcount;k++)
{
if(press[k][1]=='+' && press[k][2]=='+')
{
printf("Postincrement");
}
if(press[k][1]=='-' && press[k][2]=='-')
{
printf("Postdecrement");
}
printf("%s",posts[k]);
}



return 0;
}
