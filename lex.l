%{
   /* Seccion de definiciones*/
   #include "y.tab.h"
%}
/*Definicioes de reglas */
/*numero = 0|1|2|3
/*ra = parentesis redondos abiertos*/
/*rc = parentesis redondos cerrados*/
/*ca = parentesis cuadrados abiertos*/
/*cc = parentesis cuadrados cerrados*/
%%
"0" {return CERO;}
"1" {return UNO;}
"2" {return DOS;}
"3" {return TRES;}
\( {return RA;}
\) {return RC;}
\[ {return CA;}
\] {return CC;}
\n {return NL;}
.  {return yytext[0];}
%%
/*Definicion por defecto de yywrap*/
int yywrap() 
 { 
  return 1; 
 } 
