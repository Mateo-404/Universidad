Funcion area <- radio_area (radio)
	Definir area Como Real;
	area <- (radio * radio) * PI;
FinFuncion
Proceso ejercicio2
	Definir radio1 Como Real;
	Escribir "Ingrese radio de su circulo: ";
	Leer radio1;
	Escribir "Este es el area de su circulo: ", radio_area(radio1);
	
FinProceso
