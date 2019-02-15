digit[0-9]
dot[.]
sign[+|-]
expon[E|e]
letter[A-Za-z]
%%
{digit}*({dot}{digit}*)?({expon}{sign}{digit}*)? {printf("Valid unsigned number");}
{sign}+{digit}*({dot}{digit}*)?({expon}{sign}{digit}*)? {printf("Not a Valid unsigned number");}
{letter}* {printf("Not a Valid unsigned number");}
.* {printf("Not a Valid unsigned number");}
%%
int main()
{
yyin=fopen("unsigned.txt","r");
yylex();
return 0;
}
