%{ 
#include "y.tab.h" 
%} 
%% 
[0-9]+     { 
              yylval = atoi(yytext); 
              return NUMBER; 
           } 
[+\n]      return yytext[0]; 
[*]        return yytext[0]; 
[ \t]      ; /* Ignore whitespace */ 
 
.          yyerror("Invalid character"); 
 
%% 