Proceso vectores_1
	Definir vector1, i, sumtotal, cantotal Como Entero;
	Dimension vector1(100);
	sumtotal <- 0;
	cantotal <- 0;
	Para i <- 0 Hasta 99 Hacer
		Escribir "Ingrese el numero a sumar: ";
		Leer vector1(i);
		sumtotal <- vector1(i) + sumtotal;
		cantotal <- cantotal + 1;
	FinPara
	cantotal <- sumtotal / cantotal;
	Escribir "La suma da como resultado: ", sumtotal;
	Escribir  "El promedio es de: ", cantotal;
FinProceso
