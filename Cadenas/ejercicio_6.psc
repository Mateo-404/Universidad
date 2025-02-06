Proceso ejercicio_6
	Definir a, i, j, aux Como Entero;
	Dimension a[6];
	Para i <- 0 Hasta 5 Hacer
		Escribir "Ingrese el numero: ", i+1;
		Leer a[i];
	FinPara
	//Metodo burbuja
	Para i <- 0 Hasta 4 Hacer
		Para j <- 0 Hasta 4 Hacer
			Si (a[j] > a[j+1]) Entonces
				aux <- a[j];
				a[j] <- a[j+1];
				a[j+1] <- aux;
			FinSi
		FinPara
	FinPara
	Escribir "Los numeros son: ";
	Para i <- 0 Hasta 5 Hacer
		Escribir a[i];
	FinPara
FinProceso
