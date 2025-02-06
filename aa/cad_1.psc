Proceso cad_1
	Definir cad, inversa, aux Como Caracter;
	Definir i, e, ee Como Entero;
	Escribir "Ingrese la cadena: ";
	Leer cad;
	inversa <- "";
	e <- Longitud(cad);
	ee <- e;
	Para i <- 0 Hasta e Hacer
		aux <- Subcadena(cad, ee, ee);
		inversa <- Concatenar(inversa, aux);
		ee <- ee - 1;
	FinPara
	Escribir inversa;
FinProceso
