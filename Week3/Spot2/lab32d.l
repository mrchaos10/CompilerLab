upletter [A-Z]
lowletter [a-z]
%{
int key_count=0;
int op_count=0;
int up_count=0;
int low_count=0;
int sp_count=0;
int words=0;
int lines=0;
int charcount=0;
%}
%%
.* {yyless(3);printf("%s\n",yytext);}
%%
int main(void)
{
yylex();
return 0;
}

