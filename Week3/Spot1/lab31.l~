
%{
int id_count=0;
int assign_count=0;
int op_count=0;
int del_count=0;
int word_count=0;
int numbers=0;
char words[100][100];
char identifiers[100][100];
char assigns[100][100];
char operators[100][100];
char delimiters[100][100];
char numberss[100][100];
%}

%%
[0-9][0-9]* {numbers++;strcpy(numberss[numbers],yytext);}

[a-zA-Z][a-zA-Z]+ {word_count++;strcpy(words[word_count],yytext);}
[a-zA-Z]([a-zA-Z]|[0-9])* {id_count++;strcpy(identifiers[id_count],yytext);}
[ : ][ ]*[=] {assign_count++;strcpy(assigns[assign_count],yytext);}
[+\-*/] {op_count++;strcpy(operators[op_count],yytext);}
[ \t\n]+ {del_count++;strcpy(delimiters[del_count],yytext);}
%%
int main(void)
{
//identifier assignment operator
yylex();
printf("\n #############Output############## \n");
printf("Identifiers %d \n",id_count);
printf("Assignment operators %d \n",assign_count);
printf("Operators %d \n",op_count);
printf("Delimiters %d \n",del_count);
int i=0;
printf("\n CAPITALIZED WORDS \n");

for(i=1;i<=word_count;i++)
{
words[i][0]-=32;
printf("%s \n",words[i]);
}
printf("Delimiters \n");
i=0;
for(i=1;i<=del_count;i++)
{
printf("%s \n",delimiters[i]);
}
printf("Operators \n");
i=0;
for(i=1;i<=op_count;i++)
{
printf("%s \n",operators[i]);
}

printf("Assignments \n");
i=0;
for(i=1;i<=assign_count;i++)
{
printf("%s \n",assigns[i]);
}

printf("Identifiers \n");
i=0;
for(i=1;i<=id_count;i++)
{
printf("%s \n",identifiers[i]);
}
printf("Numbers \n");
i=0;
for(i=1;i<=numbers;i++)
{
printf("%s \n",numberss[i]);
}
return 0;
}
