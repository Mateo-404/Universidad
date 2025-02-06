Proceso ejercicio7
	Definir cantNum, cantNumPositivo, cantNumnegativo, num, numPositivo, numNegativo Como Entero;
	Definir promedioPositivo, promedioTotal Como Real;
	cantNumPositivo <- 0;
	cantNumnegativo <- 0;
	numPositivo <- 0;
	numNegativo <- 0;
	Escribir "Ingrese cantidad de Números: ";
	Leer cantNum;
	Mientras cantNum > 0 Hacer
		cantNum <- cantNum - 1;
		Escribir "Ingrese número: ";
		Leer num;
		si num > 0 Entonces
			cantNumPositivo <- cantNumPositivo + 1;
			numPositivo <- numPositivo + num;
		SiNo
			cantNumnegativo <- cantNumnegativo + 1;
			numNegativo <- numNegativo + num;
		FinSi
	FinMientras
	promedioPositivo <- numPositivo / cantNumPositivo;
	promedioTotal <- (numNegativo + numPositivo) / (cantNumPositivo + cantNumnegativo);
	Escribir "La cantidad de números positivos es de: ", cantNumPositivo;
	Escribir "El promedio de los números positivos da como resultado: ", promedioPositivo;
	Escribir  "El promedio TOTAL de los números da como resultado: ", promedioTotal;
FinProceso
