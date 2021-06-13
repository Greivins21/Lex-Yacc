%{
/* Seccion de coidgo en C*/
#include<stdio.h>
#include<stdlib.h>
%}
/*Declaracion de tokens*/
%token CERO UNO DOS TRES RA RC CA CC NL 

%%
/*Forma de una cadena valida*/
stmt: S NL { printf("Cadena valida\n");
			exit(0); }
;

/*nuestras reglas para la gramatica g3*/
S: S S
| RA S RC 
| CA S CC
| //epsilon
;
S: A B ;
A: CERO A UNO 
| DOS 
;
B: UNO B 
|  TRES A
;
%%
/*Uso de la funcion error para cuando la cadena no es valida*/
int yyerror(char *msg)
{
printf("No pertenece al lenguaje\n");
exit(0);
}

//Main
main()
{
printf("Digite una cadena\n");
yyparse();
}
