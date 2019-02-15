%token INTEGER VARIABLE 
%left '+' '-'
%left '*' '/'
%right UMINUS
%{
#include<stdio.h>
void yyerror(char *);
int yylex(void);
int sym[26];
int postflag=0;
int preflag=0;
int inflag=0;
%}
%%

program:
       program statement '\n'
       |
       ;
statement:
       expr                     { printf("%d\n", $1); if(preflag==1){printf("Prefix");}else if(inflag==1){printf("infix");} if(postflag==1){printf("Postfix");}}
       | VARIABLE '=' expr      { sym[$1] = $3; }
       ;
expr:
       INTEGER
       | VARIABLE               { $$ = sym[$1]; }
       | '+' expr expr          { $$ = $2 + $3; preflag=1;}
       | '-' expr expr          { $$ = $2 - $3; preflag=1; }
       | '/' expr expr          { $$ = $2 / $3; preflag=1; }  
       | '*' expr expr          { $$ = $2 * $3; preflag=1; }
       | expr '+' expr          { $$ = $1 + $3; 
                                inflag=1;}
       | expr '-' expr          { $$ = $1 - $3;
                                 inflag=1;}
       | expr '*' expr          { $$ = $1 * $3; 
                                 inflag=1;}
       | expr '/' expr          { $$ = $1 / $3;
                                 inflag=1;}
       | expr expr '+'          { $$ = $1 + $2;
                                 postflag=1;}
       | expr expr '*'          { $$ = $1 * $2;
                                 postflag=1;}
       | expr expr '/'          { $$ = $1 / $2; 
                                 postflag=1;}
       | expr expr '-'          { $$ = $1 - $2;
                                 postflag=1;}
       ;

%%
void yyerror(char *s) {
fprintf(stderr, "%s\n", s);
return 0;
}
int main(void) {
yyparse();

return 0;
}

