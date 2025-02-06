Proceso problema_5
	Definir caudal, hora, sumtotal Como Real;
	Definir i, j, opcion, posCaudal, CauEspec, cant Como Entero;
	Dimension caudal[8, 20];
	Dimension hora[8];
	Para i <- 0 Hasta 7 Hacer
		hora[i] <- 0;
	FinPara
	i <- 0;
	j <- 0;
	Repetir
		Escribir "Ingrese hora del caudal (Pulse 0 para salir): ";
		Leer hora[i];
		Si hora[i] <> 0 Entonces
			Para j <- 0 Hasta 19 Hacer
				Escribir "Ingrese litros del caudal: ";
				Leer caudal[i, j];
			FinPara
			i <- i + 1;
		FinSi
	Hasta Que hora[i] = 0;
	//Asignar ceros
	cant <- i;
	Para i <- 0 Hasta 19 Hacer
		caudal[cant, i] <- 0;
	FinPara
	//Mayor caudal
	sumtotal <- 0;
	Para i <- 0 Hasta cant-1 Hacer
		Para j <- 0 Hasta 18 Hacer
			Si caudal[i+1, j] > caudal[i, j] Entonces
				posCaudal <- i+1;
				CauEspec <- j;
				sumtotal <- sumtotal + caudal[i+1, j];
			FinSi
		FinPara
	FinPara
	//Mostrar
	Escribir "El mayor caudal fue: ";
	Escribir "Caudal en cuestión: ", caudal[posCaudal, CauEspec];
	Escribir "El promedio de este caudal fue de: ", sumtotal/20;
FinProceso
