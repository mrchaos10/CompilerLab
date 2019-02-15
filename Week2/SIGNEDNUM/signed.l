digit[0-9]
dot[.]
sign[+|-]
expon[E|e]
%%
{digit}*({dot}{digit}*)?({expon}{sign}{digit}*)? {printf("Valid unsigned number");}
%%
