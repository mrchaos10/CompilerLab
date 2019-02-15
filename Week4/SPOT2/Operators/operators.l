%{
  int countb=0; 
  int i=0;
  int opcount=0;
  char operators[100][100];
  char press[100][100];
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
"++"[a-zA-Z]+([a-zA-Z]|[0-9])* {
                                precount++;
                                strcpy(press[precount],yytext); 
                                     }
"--"[a-zA-Z]+([a-zA-Z]|[0-9])* {
                                precount++;
                                strcpy(press[precount],yytext); 
                                     }                            
[a-zA-Z]+([a-zA-Z]|[0-9])*"++" {
                                postcount++;
                                strcpy(posts[postcount],yytext);                             
                               }
[a-zA-Z]+([a-zA-Z]|[0-9])*"--" {
                                postcount++;
                                strcpy(posts[postcount],yytext);                             
                               }
                               
%%
int main()
{
yylex();
int k;
printf("Identifers used \n");
for(k=1;k<=idcount;k++)
{
printf("%s \n",ids[k]);
}
printf("Assignments used \n");
for(k=1;k<=assigncount;k++)
{
printf("%s \n",assigns[k]);
}
printf("Operators used \n");
for(k=1;k<=opcount;k++)
{
printf("%s \n",operators[k]);
}
printf("Pre operators used \n");
for(k=1;k<=precount;k++)
{
printf("%c",press[k][1]);

if(press[k][1]=='+' && press[k][0]=='+')
{
printf("Preincrement \n");
}
if(press[k][1]=='-' && press[k][0]=='-')
{
printf("Predecrement \n");
}
printf("%s \n",press[k]);
}
printf("Post operators used \n");
int leng;
for(k=1;k<=postcount;k++)
{
leng=strlen(posts[k]);
if(posts[k][leng-1]=='+' && posts[k][leng-2]=='+')
{
printf("Postincrement \n");
}
if(posts[k][leng-1]=='-' && posts[k][leng-2]=='-')
{
printf("Postdecrement \n");
}
printf("%s \n",posts[k]);
}



return 0;
}
