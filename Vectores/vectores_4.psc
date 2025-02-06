Proceso vectores_4
	Definir vector, cant, i, cantM, cantmen Como Entero;
	Definir num, sumtotal, promedio Como Real;
	Dimension  vector[100];
	Escribir "Ingrese la cantidad de alumnos: ";
	Leer cant;
	sumtotal <- 0;
	cantM <- 0;
	cantmen <- 0;
	Para i <- 0 Hasta cant Hacer
		Escribir "Ingrese altura del alumno: ";
		Leer num;
		sumtotal <- num + sumtotal;
	FinPara
	promedio <- sumtotal / cant;
	Para i <- 0 Hasta cant Hacer
		si vector[i] > promedio Entonces
			cantM <- cantM + 1;
		SiNo
			cantmen <- cantmen + 1;
		FinSi
	FinPara
	Escribir "La cantidad de alturas mayores a la media es de: ", cantM;
	Escribir "La cantidad de alturas menores a la media es de: ", cantmen;
FinProceso
