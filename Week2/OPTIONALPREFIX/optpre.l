digit[0-9]
sign[+|-]
%%
^{sign}?{digit}*$ {printf("Valid String");}
.* {printf("NOt a Valid String");}
%%
int main()
{
yyin=fopen("optpre.txt","r");
yylex();
return 0;
}
