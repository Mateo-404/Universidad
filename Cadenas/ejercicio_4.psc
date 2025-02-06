Proceso ejercicio_4
	Definir frase, vector Como Caracter;
	Definir multiplicacion, i Como Entero;
	Dimension vector[100];
	Escribir "Ingrese la frase: ";
	Leer frase;
	Escribir "Ingrese el factor n: ";
	Leer multiplicacion;
	Para i <- 0 Hasta multiplicacion-1 Hacer
		vector[i] <- frase;
		Escribir vector[i];
	FinPara
	
FinProceso
