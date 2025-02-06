Proceso vector_3
	Definir vector, i, cant, sumtotal, promedio, cantmayor, cantigual Como Entero;
	Dimension vector(100);
	Escribir "Ingrese la cantidad de temperaturas: ";
	Leer cant;
	sumtotal <- 0;
	cantmayor <- 0;
	cantigual <- 0;
	Para i <- 0 Hasta cant-1 Hacer
		Escribir "Ingrese la temperatura numero ", i+1;
		Leer vector(i);
		sumtotal <- sumtotal + vector(i);
	FinPara
	promedio <- sumtotal / cant;
	Para i <- 0 Hasta cant-1 Hacer
		si vector(i) > promedio Entonces
			cantmayor <- cantmayor + 1;
		FinSi
		si vector(i) = promedio Entonces
			cantigual <- cantigual + 1;
		FinSi
	FinPara
	Escribir "La cantidad de temperaturas mayores a la media es de: ", cantmayor;
	Escribir "La cantidad de temperaturas iguales a la media es de: ", cantigual;
	
FinProceso
