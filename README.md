# Taller Compiladores

DOCUMENTACION

## Ejecucion de gramaticas con Lex & Jacc

Cada gramatica hace uso de un archivo .l y .j

Se ejecutan los siguientes comandos en el CMD en la ruta donde esten guardados dichos archivos


Carga el archivo .lex
```
flex nombre_archivo.l
```

Carga el archivo .jacc
```
bison -dy nombre_archivo.j
```

Compila los archivos resultantes de los pasos anteriores
```
gcc lex.yy.c y.tap.c -o nombre.exe
```

Por ultimo se carga el programa para analizar cadenas de cada una de las gramaticas
```
nombre.exe
```
* * *
### Ejecucion .exe

Una vez ejecutado el .exe se debe de ingresar una cadena por el CMD, si dicha cadena pertenece a la gramatica, el programa acabara sin que aparezca nada.

En caso contrario si la gramatica no pertenece, entonces el programa mostrara un mensaje de error y acabara.

* * *
### Gramaticas

A continuacion se describe cada una de las gramatias trabajadas

#### Gramatica 1
Genera cadenas con parentesis (), corchetes [], y llaves {} anidados

#### Gramatica 2
Genera cadenas de acuerdo a la siguiente restrinccion { $1^i$ $2^k$ $3^k$ | i >= 0 & k > 0 } 

#### Gramatica 3
Gramatica utiliza para el segundo parcial de compiladores

Genera cadenas de acuerdo a la siguiente restrinccion { $a^n$ $b^m$ $c^{m+n}$ | m >= 0 & n >= 0 }


* * * 

### Bibliografia

https://www.ibm.com/docs/es/aix/7.3?topic=information-example-program-lex-yacc-programs

https://stackoverflow.com/questions/5456011/how-to-compile-lex-yacc-files-on-windows

https://www.geeksforgeeks.org/yacc-program-to-implement-a-calculator-and-recognize-a-valid-arithmetic-expression/

