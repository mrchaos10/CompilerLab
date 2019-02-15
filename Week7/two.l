%{
int z=0,j=0;
char cond[100],cond1[100];
%}
%%
"else" 
"if".* {
int i,j;
printf("do");
if(z==0){z=1;
	for(i=3,j=0;i<yyleng-1;i++,j++){
		cond[j]=yytext[i];
	}}else{
		for(i=3,j=0;i<yyleng-1;i++,j++)
			cond1[j]=yytext[i];
	}
}
"}" {	if(j==0){j=1;
		}
	else{
		printf("}while(%s)\n}while(%s)",cond1,cond);
	}
}
%%
int main(){
	yylex();
	return 0;
}
