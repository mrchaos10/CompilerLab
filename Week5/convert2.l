%%
"if" {printf("\n case");}
"else if" {printf("\n case");}
"[(]".*"[)]" { printf("%s",yytext);}
"else" {printf("\n default");}
%%
int main()
{
printf("switch (x) \n");
printf("{ \n");
yylex();
printf("\n }");
return 0;
}
