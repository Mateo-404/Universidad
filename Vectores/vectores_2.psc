Proceso vectores_2
	Definir vector, cantpos, i, num Como Real;
	Dimension vector(5);
	cantpos <- 0;
	Para i <- 0 Hasta 4 Hacer
		Escribir "Ingrese el numero: ";
		Leer num;
		Si num >= 0 Entonces
			cantpos <- cantpos + 1;
		FinSi
	FinPara
	Escribir "La cantidad de numeros positivos fue de: ", cantpos;
FinProceso
