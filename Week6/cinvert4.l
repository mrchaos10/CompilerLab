%{
int count=0;
char inputter[10000];
int initials[100][100];
int incount=0;
%}
%%
"int".* {incount++; strcpy(initials[incount],yytext);}
"do ".* {if(count==0){strcpy(inputter,"for \n");count++;}else if(count==1){strcat(inputter,"for \n");}}
.* {strcat(inputter,yytext);strcat(inputter,"\n");}


%%
int main()
{
yylex();
//printf("\n\n\n INPUT");
//printf("%s",inputter);
int i;
int len=strlen(inputter);
int linemarker[100];
int counter=0;
for(i=0;i<len;i++)
{
if(inputter[i]=='\n')
{
counter++;
linemarker[counter]=i;
//printf("\n %d",linemarker[counter]);
}
}
int j=0;
i=0;
char statements[1000];
for(j=linemarker[1]+1;j<linemarker[2];j++)
{
statements[i]=inputter[j];
i++;
}
statements[i]='\0';
//printf("%s",statements);
i=0;
char statements1[1000];
for(j=linemarker[4]+1;j<linemarker[5];j++)
{
statements1[i]=inputter[j];
i++;
}
statements1[i]='\0';
//printf("%s",statements1);

i=0;
char repeater[1000];
for(j=linemarker[2]+1;j<linemarker[3];j++)
{
repeater[i]=inputter[j];
i++;
}
repeater[i-1]='\0';
repeater[i-1]=' ';
repeater[i]='\0';
//printf("%s",statements);
i=0;
char repeater1[1000];
for(j=linemarker[5]+1;j<linemarker[6];j++)
{
repeater1[i]=inputter[j];
i++;
}
repeater1[i-1]='\0';
repeater1[i-1]=' ';
repeater1[i]='\0';

i=0;
char conditionals[1000];
for(j=linemarker[6]+1;j<linemarker[7];j++)
{
if(inputter[j]=='}'||inputter[j]=='w'||inputter[j]=='h'||inputter[j]=='i'||inputter[j]=='l'||inputter[j]=='e'||inputter[j]==';'||inputter[j]==')'||inputter[j]=='(')
{
inputter[j]='\0';
inputter[j]=' ';
}
conditionals[i]=inputter[j];
i++;
}
conditionals[i]='\0';
//printf("%s",conditionals);

i=0;
char conditionals1[1000];
for(j=linemarker[7]+1;j<linemarker[8];j++)
{
if(inputter[j]=='}'||inputter[j]=='w'||inputter[j]=='h'||inputter[j]=='i'||inputter[j]=='l'||inputter[j]=='e'||inputter[j]==';'||inputter[j]==')'||inputter[j]=='(')
{
inputter[j]='\0';
inputter[j]=' ';
}
conditionals1[i]=inputter[j];
i++;
}
conditionals1[i]='\0';
//printf("%s",conditionals1);

printf("for (");
printf("%s ",initials[1]);
printf("%s ; ",conditionals);
printf("%s )\n",repeater);
printf("\n { \n %s",statements);
printf(" \n for ( ");
printf("%s ",initials[2]);
printf("%s ;",conditionals1);
printf("%s )\n",repeater1);
printf("\n { \n %s",statements1);
printf("\n }");
printf("\n }");
return 0;
}
