Proceso ejercicio5
	Definir numeroinicial, numeroingresado Como Real;
	Escribir "Ingrese numero inicial del contador";
	Leer numeroinicial;
	Mientras numeroinicial>0 Hacer
		Escribir "Ingrese numero del contador";
		Leer numeroingresado;
		numeroinicial <- numeroinicial-numeroingresado;
		Escribir "La cuenta va en: ", numeroinicial;
	FinMientras
	Escribir "¡Felicidades! el contador inicial llego a: ",numeroinicial;
	
FinProceso
