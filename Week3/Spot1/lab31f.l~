%{
%}
%%
[a-z] {printf("\n Loading small %s \n",yytext);
       yymore();}
[A-Z] {printf("\n Loading Caps %s \n",yytext);
       yymore(); 
       }
%%
int main(void)
{
yylex();
return 0;
}
