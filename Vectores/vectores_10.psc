Proceso vectores_10
	Definir vectorr, columnas, filas, i, j Como Entero;
	Dimension vectorr[3, 3];
	Dimension columnas[9];
	Dimension filas[9];
	Para i <- 0 Hasta 8 Hacer
		columnas[i] <- 0;
		filas[i] <- 0;
	FinPara
	Para i <- 0 Hasta 2 Hacer
		Para j <- 0 Hasta 2 Hacer
			Escribir "Ingrese el valor de la FILA ", i+1, " Y COLUMNA ", j+1, " : ";
			Leer vectorr[i, j];
		FinPara
	FinPara
	
	Para i <- 0 Hasta 2 Hacer
		Para j <- 0 Hasta 2 Hacer
			filas[i] <- filas[i] + vectorr[i, j];
		FinPara
	FinPara
	Para i <- 0 Hasta 2 Hacer
		Para j <- 0 Hasta 2 Hacer
			columnas[i] <- columnas[i] + vectorr[j, i];
		FinPara
	FinPara
	//Mostrar
	Escribir "El valor de las Filas es de: ";
	Para i <- 0 Hasta 2 Hacer
		Escribir "", filas[i];
	FinPara
	Escribir "El valor de las columnas es de: ";
	Para i <- 0 Hasta 2 Hacer
		Escribir "", columnas[i];
	FinPara
	
FinProceso
