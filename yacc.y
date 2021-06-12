%{
/* Definition section */
#include<stdio.h>
#include<stdlib.h>
%}

%token CERO UNO DOS TRES RA RC CA CC NL 

/* Rule Section */

%%
stmt: S NL { printf("Cadena valida\n");
			exit(0); }
;

/*nuestras reglas*/
S: A B ;
A: CERO A UNO 
| DOS 
;
B: UNO B 
|  TRES A
;
S: S S
| RA S RC 
| CA S CC
| 
;
%%

int yyerror(char *msg)
{
printf("No pertenece al lenguaje\n");
exit(0);
}

//driver code
main()
{
printf("Digite una cadena\n");
yyparse();
}