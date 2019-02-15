%{
char operator[100];
int t1=-1;
char operand[100][100];
int t2=-1;
int check(char op)
{
if(op=='+')
return 1;
else if(op=='-')
return 1;
else if(op=='*')
return 2;
else if(op=='/')
return 3;
else if(op=='('||op==')')
return 0;
}
%}
%%
[0-9]+ {strcpy(operand[++t2],yytext);}
[+*/\-()] {
         if(yytext[0]=='('||t1==-1||check(yytext[0])>check(operator[t1]))
            operator[++t1]=yytext[0];
         else if(yytext[0]==')')
         {
         while(operator[t1]!='c')
         {
          char opr=operator[t1--];
          char *op1=operand[t2--];
          char *op2=operand[t2--];
          char str[100]={};
          str[0]=opr;
          strcat(str,op2);
          strcat(str,op1);
          strcpy(operand[++t2],str);
           
         }
         t1--;
         }
         else if(check(yytext[0])<=check(operator[t1]))
         {
         while(check(yytext[0])<=check(operator[t1]))
         {
          char opr=operator[t1--];
          char *op1=operand[t2--];
          char *op2=operand[t2--];
          char str[100]={};
          str[0]=opr;
          strcat(str,op2);
          strcat(str,op1);
          strcpy(operand[++t2],str);
           
         }
         operator[++t1]=yytext[0];
         }

         }
         
[\n]     {
         while(t1!=-1)
         {
          char opr=operator[t1--];
          char *op1=operand[t2--];
          char *op2=operand[t2--];
          char str[100]={};
          str[0]=opr;
          strcat(str,op2);
          strcat(str,op1);
          strcpy(operand[++t2],str);
         }
         printf("%s\n",operand[t2--]);
         int i;
         for(i=0;i<100;i++)
             operator[i]='\0';
         for(i=0;i<100;i++)
             strcpy(operand[i],"\0");
         
         }
%%
int main()
{
yylex();
return 0;
}
