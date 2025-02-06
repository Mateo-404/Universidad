Proceso vectores_9
	Definir fumadores, nofumadores, aviones, i Como Entero;
	fumadores <- 0;
	nofumadores <- 0;
	Para i <- 1 Hasta 300 Hacer
		Escribir "Ingrese 1 si es fumador, 2 si no lo es: ";
		Leer aviones;
		si aviones = 1 Entonces
			si fumadores < 100 Entonces
				fumadores <- fumadores + 1;
				Escribir "Reserva N°: ", i, " agregada!";
			SiNo
				Escribir "El lugar para fumadores se encuentra lleno.";
			FinSi
		FinSi
		si aviones = 2 Entonces
			si nofumadores < 199 Entonces
				nofumadores <- nofumadores + 1;
				Escribir "Reserva N°: ", i, " agregada!";
			SiNo
				Escribir "El lugar para NO fumadores se encuentra lleno.";
			FinSi
		FinSi
	FinPara
	
	
FinProceso
