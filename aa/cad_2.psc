Proceso cad_2
	Definir vocales, consonantes, i, j, cont Como Entero;
	Definir cad, vocaless Como Caracter;
	Dimension vocaless[5];
	
	cont <- 0;
	vocales <- 0;
	consonantes <- 0;
	
	Escribir "Ingrese la frase: ";
	Leer cad;
	Para i <- 0 Hasta Longitud(cad)-1 Hacer
		Para j <- 0 Hasta 4 Hacer
			Si (Subcadena(cad, i, i) = vocaless[j]) Entonces
				vocales <- vocales + 1;
			SiNo
				Si (j == 4) Entonces
					consonantes <- consonantes + 1;
				FinSi
			FinSi
			cont <- cont + 1;
		FinPara
	FinPara
	Escribir "La frase: ", cad, " tiene: ";
	Escribir "Vocales: ", vocales;
	Escribir "Consonantes: ", consonantes;
	
FinProceso
