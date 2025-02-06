Proceso Cadenas_2
	Definir cad, vector Como Caracter;
	Definir cont, i, long Como Entero;
	Dimension Vector[10];
	cont <- 0;
	Escribir "Ingrese la frase: ";
	Leer cad;
	long <- Longitud(cad);
	Para i <- 0 Hasta long-1 Hacer
		Si Subcadena(cad, i, i) = "i" Entonces
			cont <- cont + 1;
		FinSi
	FinPara
	Escribir "La cantidad de i en la frase es de: ", cont;
FinProceso
