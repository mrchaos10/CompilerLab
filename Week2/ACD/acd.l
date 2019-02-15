letter[A-Za-z]
%%
^a{letter}*(cd)?$ {printf("Valid String");}
.* {printf("Not a Valid String");}
%%
int main()
{
yyin=fopen("acd.txt","r");
yylex();
return 0;
}
