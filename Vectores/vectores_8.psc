Proceso vectores_8
	Definir alumnos, sumatotal, promedio Como Real;
	Definir i, j, comision Como Entero;
	Dimension alumnos[5, 5];
	Dimension promedio[5];
	Dimension sumatotal[5];
	Para i <- 0 Hasta 4 Hacer
		Para j <- 0 Hasta 4 Hacer
			alumnos[i, j] <- 0;
		FinPara
	FinPara
	para i <- 0 Hasta 4 Hacer
		promedio[i] <- 0;
		sumatotal[i] <- 0;
	FinPara
	i <- 1;
	Mientras i <> 0 Hacer
		Escribir "Ingrese la comision (0 para salir): ";
		Leer i;
		si i <> 0 Entonces
			Para j <- 0 Hasta 4 Hacer
				Escribir "Se encuentra en la comision ", i, " ingrese la nota: ";
				Leer alumnos[i-1, j];
				Escribir "Alumno registrado: ", j+1;
			FinPara
		FinSi
	FinMientras
	sumatotal <- 0;
	Para i<-0 Hasta 4 Hacer
		Para j <- 0 Hasta 4 Hacer
			sumatotal[i] <- alumnos[i, j] + sumatotal[i];
		FinPara
		promedio[i] <- sumatotal[i] / 24;
	FinPara
	Escribir "El promedio de la comisión 1 es de: ", promedio[0];
	Escribir "El promedio de la comisión 2 es de: ", promedio[1];
	Escribir "El promedio de la comisión 3 es de: ", promedio[2];
	Escribir "El promedio de la comisión 4 es de: ", promedio[3];
	Escribir "El promedio de la comisión 5 es de: ", promedio[4];
FinProceso
