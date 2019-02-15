%{
int count=0;
char str[100][100];
%}
letter [a-zA-Z]
digit [0-9] 
relop "+"|"-"|"/"|"*"|"**"
%%
[a-zA-z]([a-zA-z]|[0-9])*([ ]*{relop}[ ]*[a-zA-z]([a-zA-z]|[0-9])*)+ {count++;strcpy(str[count],yytext);}
%%
int main()
{
yylex();
int i=1;
printf("LEXEMES");
char ans[10000];
strcpy(ans,"");
for(;i<=count;i++)
{
strcat(ans,str[i]);
strcat(ans,"\n");
}

int len=strlen(ans);
for(i=0;i<len;i++)
{
if(ans[i]=='+')
{
ans[i]='\0';
ans[i]='|';
ans[i+1]='|';
}
else if(ans[i]=='-')
{
ans[i]='\0';
ans[i]='&';
ans[i+1]='&';
}
else if(ans[i]=='*'&&ans[i+1]=='*')
{
ans[i]='\0';
ans[i]='^';
ans[i+1]='\0';
ans[i+1]=' ';
}

}
printf("\n%s",ans);
return 0;
}
