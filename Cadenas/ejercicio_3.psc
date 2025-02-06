Proceso ejercicio_3
	Definir vocales, frase Como Caracter;
	Definir i, j, cont, long Como Entero;
	Dimension vocales[5];
	vocales[0] <- "a";
	vocales[1] <- "e";
	vocales[2] <- "i";
	vocales[3] <- "o";
	vocales[4] <- "u";
	cont <- 0;
	Escribir "Ingrese la frase (En minusculas): ";
	Leer frase;
	long <- longitud(frase);
	Para i <- 0 Hasta 4 Hacer
		Para j <- 0 Hasta long-1 Hacer
			si subcadena(frase, j, j) = vocales[i] Entonces
				cont <- cont + 1;
			FinSi
		FinPara
	FinPara
	Escribir "La frase tiene: ", cont, " vocales.";
FinProceso
