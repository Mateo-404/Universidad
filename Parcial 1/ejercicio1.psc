Proceso ejercicio1
	Definir ancho, largo, anchototal, largototal Como Real;
	Definir cantidadtotal, cantidadvalida, cantidadinvalida Como Entero;
	Escribir "Ingrese ancho de pieza: ";
	Leer ancho;
	Escribir "Ingrese largo de pieza : ";
	Leer largo;
	cantidadtotal <- 0;
	Mientras (ancho <> 0) y (largo <> 0) Hacer
		cantidadtotal <- cantidadtotal + 1;
		Si ((ancho > 4) y (ancho < 4.5)) y ((largo > 15) y (largo > 15.6)) Entonces
			cantidadvalida <- cantidadvalida + 1;
		SiNo
			cantidadinvalida <- cantidadinvalida + 1;
		FinSi
		Escribir "Ingrese ancho de pieza: ";
		Leer ancho;
		Escribir "Ingrese largo de pieza : ";
		Leer largo;
		anchototal <- ancho + anchototal;
		largototal <- largo + largototal;
	FinMientras
	largo <- anchototal / cantidadtotal;
	anchototal <- largototal / cantidadtotal;
	Escribir "La cantidad total de las piezas es de: ", cantidadtotal;
	Escribir "El valor promedio de largo es de: ", largo;
	Escribir "El valor promedio de ancho es de: ", ancho;
	Escribir "Las piezas descartadas son: ", cantidadinvalida;
	
FinProceso
