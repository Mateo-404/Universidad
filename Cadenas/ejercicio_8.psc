Proceso ejercicio_8
	Definir alumnos, aux2 Como Caracter;
	Definir notas Como Real;
	Definir i, j, aux Como Entero;
	Dimension alumnos[100];
	Dimension notas[100];
	// Con 5 alumnos
	Para  i <- 0 Hasta 4 Hacer
		Escribir "Ingrese el nombre del alumno: ";
		Leer alumnos[i];
		Escribir "Ingrese las faltas del alumno: ";
		Leer notas[i];
	FinPara
	//Metodo burbuja
	Para i <- 0 Hasta 3 Hacer
		Para  j <- 0 Hasta 3 Hacer
			Si (notas[j] < notas[j+1]) Entonces
				aux <- notas[j];
				notas[j] <- notas[j+1];
				notas[j+1] <- aux;
				aux2 <- alumnos[j];
				alumnos[j] <- alumnos[j+1];
				alumnos[j+1] <- aux2;
			FinSi
		FinPara
	FinPara
	//Mostrar
	Para i <- 0 Hasta 4 Hacer
		Escribir alumnos[i], " ", notas[i];
	FinPara
FinProceso
