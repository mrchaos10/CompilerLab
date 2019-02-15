%{
char forstore[1000];
char brackets[1000];
%}
%%
"for"
"(".*")" {yytext[0]=' ';yytext[yyleng-1]=' ';strcpy(forstore,yytext);}
"{"[\n]*.*[\n]*"}" {strcpy(brackets,yytext);}
%%
int main()
{
yylex();
//printf("the forstore is %s",forstore);
int len=strlen(forstore);
int count=0;
int i;
int marker[3];
for(i=0;i<len;i++)
{
if(forstore[i]==';')
{
count++;
marker[count]=i;
//printf("\n Counter \n");
//printf("%d \n",count);
//printf("%d \n",marker[count]);
}
}
char init[1000];
char cond [1000];
char repeat[1000];
//initial statement
for(i=0;i<marker[1];i++)
{
init[i]=forstore[i];
}
init[marker[1]]='\0';
//conditional statement
int j=0;
for(i=marker[1];i<marker[2];i++)
{
cond[j]=forstore[i];
j++;
}
cond[marker[2]-2]='\0';
j=0;
//repeat statement
for(i=marker[2];i<len;i++)
{
repeat[j]=forstore[i];
j++;
}
cond[0]=' ';
repeat[0]='\0';
repeat[0]=' ';
//printf("%s",repeat);
int bracklen=strlen(brackets);
int k;
for(i=0;i<bracklen;i++)
{
if(brackets[i]=='}')
{
for(k=marker[2];k<len;k++)
{
brackets[i]=forstore[k+1];
i++;
}
}
}
int uplen=strlen(brackets);
brackets[uplen]=';';
brackets[uplen+1]='}';
brackets[uplen+2]='\0';
repeat[len]='\0';
printf("\n %s",init);
printf(";");
printf("\n do");
printf("%s",brackets);
printf("while(");
printf("%s",cond);
printf(");");

return 0;
}
