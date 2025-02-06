Proceso ejercicio_7
	Definir i, j, aux Como Entero;
	Definir sumtotal, temperaturas, promedio, temperaturas2, s Como Real;
	Dimension temperaturas[5];
	Dimension temperaturas2[5];
	sumtotal <- 0;
	s <- 0;
	Para i <- 0 Hasta 4 Hacer
		temperaturas2[i] <- 0;
	FinPara
	Para i <- 0 Hasta 4 Hacer
		Escribir "Ingrese la temperatura numero: ", i+1;
		Leer temperaturas[i];
		sumtotal <- sumtotal + temperaturas[i];
	FinPara
	promedio <- sumtotal / 5;
	Para i <- 0 Hasta 4 Hacer
		Si temperaturas[i] > promedio Entonces
			temperaturas2[s] <- temperaturas[i];
			s <- s + 1;
		FinSi
	FinPara
	Para i <- 0 Hasta 3 Hacer
		Para j <- 0 Hasta 3 Hacer
			Si temperaturas2[j] < temperaturas2[j+1] Entonces
				aux <- temperaturas2[j];
				temperaturas2[j] <- temperaturas2[j+1];
				temperaturas2[j+1] <- aux;
			FinSi
		FinPara
	FinPara
	Escribir "Las temperaturas mayores al promedio son: ";
	Para  i <- 0 Hasta  4 Hacer
		Escribir temperaturas2[i];
	FinPara
FinProceso
