%option noyywrap
%{
	int flag = 0;
%}
type [int|float]
alpha [a-zA-Z]*
equ [=]
rel [<|>]
inc [++|--]
num [0-9]*
%s START
%s COND
%s BODY
%s PUSH
%%
<INITIAL>"for" {printf("if(");BEGIN START;}
<START>"("{alpha}{equ}{num}";" {BEGIN COND;}
<COND>{alpha}{rel}{num} {ECHO;BEGIN BODY;} 
<BODY>";"{alpha}"++)" {printf(")");BEGIN PUSH;}
<PUSH>"{"[\n\t]* {printf("{\n");BEGIN INITIAL;}
%%
