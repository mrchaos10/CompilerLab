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
char lowss[100][100];
char upss[100][100];
%}
%%
[A-Z] {up_count++;strcpy(upss[up_count],yytext);}
[a-z] {low_count++;strcpy(lowss[low_count],yytext);}
%%
int main(void)
{
yylex();
printf("Uppercase letters: %d \n",up_count);
printf("Lowercase letters: %d \n",low_count);
printf("UPPER CASE LETTERS: \n");
int i=0;
for(i=1;i<=up_count;i++)
{
printf("%s\n",upss[i]);
}
i=0;
printf("LOWER CASE LETTERS: \n");
for(i=1;i<=low_count;i++)
{
printf("%s\n",lowss[i]);
}
return 0;
}
