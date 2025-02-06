Proceso ejercicio11
	Definir cantidad, i, cantidadapta Como Entero;
	Definir longitudd Como Real;
	Escribir "Ingrese la cantidad de piezas: ";
	Leer cantidad;
	cantidadapta <- 0;
	Para i<-1 Hasta cantidad Hacer
		Escribir "Ingrese la longitud del hierro: ";
		Leer longitudd;
		Si (longitudd >= 1.20) Y (longitudd <= 1.30) Entonces
			cantidadapta <- cantidadapta + 1;
		FinSi
	FinPara
	Escribir "La cantidad apta es de: ", cantidadapta;
FinProceso
