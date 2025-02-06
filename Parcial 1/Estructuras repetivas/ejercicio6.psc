Proceso ejercicio6
	Definir numero_ingresado, promedioo Como Real;
	Definir contador Como Entero;
	contador <- 0;
	promedioo <- 0;
	Escribir "Ingrese numero a promediar (Escriba 0 para finalizar): ";
	Leer numero_ingresado;
	Mientras numero_ingresado <> 0 Hacer
		promedioo <- numero_ingresado + promedioo;
		contador <- contador + 1;
		Escribir "Ingrese numero a promediar (Escriba 0 para finalizar): ";
		Leer numero_ingresado;
	FinMientras
	promedioo <- promedioo / contador;
	Escribir "La cantidad de numeros ingresados fue de: ", contador;
	Escribir  "Y el promedio es de: ", promedioo;
FinProceso
