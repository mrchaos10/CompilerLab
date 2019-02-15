%{
int forcount=0;
char forstore[100][1000];
char remaining[10000];
%}
%%
"for" {strcpy(remaining," ");}
"(".*")" {yytext[0]=' ';yytext[yyleng-1]=' ';strcpy(forstore[forcount++],yytext);}
"printf".* {strcat(remaining,"\n");strcat(remaining,yytext);}

%%
int main()
{
yylex();
int i;
int marker[100];
int count=0;
char statements[10000];
strcpy(statements," ");
for(i=0;i<forcount;i++)
{
strcat(statements,forstore[i]);
}
int len=strlen(statements);
for(i=0;i<len;i++)
{
if(statements[i]==';')
{
count++;
marker[count]=i;
//printf("\n %d",marker[count]);
}
}
char init[1000];
for(i=0;i<marker[1];i++)
{
init[i]=statements[i];
}
init[i]=',';
i++;
//printf("%s \n\n",init);
int j=0;
for(j=marker[2]+6;j<marker[3];j++)
{
init[i]=statements[j];
i++;
}
init[i]=',';
i++;
//printf("%s \n\n",init);
j=0;
for(j=marker[4]+6;j<marker[5];j++)
{
init[i]=statements[j];
i++;
}
init[i]=';';
i++;
init[i]='\0';
//printf("%s \n\n",init);

char condition[1000];
j=0;
i=0;
for(j=marker[1]+1;j<marker[2];j++)
{
condition[i]=statements[j];
i++;
}

condition[i]='&';
i++;
condition[i]='&';
i++;
//printf("%s \n\n",condition);

for(j=marker[3]+1;j<marker[4];j++)
{
condition[i]=statements[j];
i++;
}
condition[i]='&';
i++;
condition[i]='&';
i++;
//printf("%s \n\n",condition);
j=0;
for(j=marker[5]+1;j<marker[6];j++)
{
condition[i]=statements[j];
i++;
}
condition[i]=';';
i++;
condition[i]='\0';
//printf("%s \n\n",condition);


char repeater[1000];
j=0;
i=0;
for(j=marker[2]+1;j<marker[2]+5;j++)
{
repeater[i]=statements[j];
i++;
}

repeater[i]=',';
i++;
//printf("%s \n\n",repeater);

for(j=marker[4]+1;j<marker[4]+5;j++)
{
repeater[i]=statements[j];
i++;
}
repeater[i]=',';
i++;
//printf("%s \n\n",repeater);
j=0;
for(j=marker[6]+1;j<marker[6]+5;j++)
{
repeater[i]=statements[j];
i++;
}
repeater[i]='\0';

//printf("%s \n\n",repeater);


printf("for (");
printf("%s",init);
printf("%s",condition);
printf("%s",repeater);
printf(")");
printf("\n {");
printf("\n %s",remaining);
printf("\n }");
return 0;
}
