Proceso ejercicio_7
	Definir nombre Como Caracter;
	Definir i, puntaje, cant, j Como Entero;
	Dimension nombre[200];
	Dimension puntaje[200];
	i <- -1;
	cant <- 0;
	Repetir
		i <- i + 1;
		Escribir "Ingrese el nombre del equipo: ";
		Escribir "(Pulse s para salir)";
		Leer nombre[i];
		Si nombre[i] <> "s" Entonces
			Escribir "Ingrese puntaje del equipo: ";
			Leer puntaje[i];
			cant <- cant + 1;
		FinSi
	Hasta Que nombre[i] = "s";
	
	//Metodo burbuja
	Definir aux Como Caracter;
	Definir auxx Como Entero;
	Para i <- 0 Hasta  cant-2 Hacer
		Para j <- 0 Hasta  cant-2 Hacer
			si puntaje[j+1] > puntaje[j] Entonces
				//Puntaje
				auxx <- puntaje[j];
				puntaje[j] <- puntaje[j+1];
				puntaje[j+1] <- auxx;
				//Nombres
				aux <- nombre[j];
				nombre[j] <- nombre[j+1];
				nombre[j+1] <- aux;
			FinSi
		FinPara
	FinPara
	
	//Mostrar
	Repetir
		Escribir "Ingrese que consigna desea saber: ";
		Escribir "(Pulse 0 para salir)";
		Leer auxx;
		Segun auxx Hacer
			1:
				Para i<- 0 Hasta cant-1 Hacer
					Escribir "Equipo: ", nombre[i], " | ", puntaje[i] ;
				FinPara
			2:
				Escribir "| LISTA DE PROMEDIOS |";
				Para i<- 0 Hasta cant-1 Hacer
					
					Escribir "Equipo: ", nombre[i], " | ", puntaje[i]/9 ;
				FinPara
		FinSegun
	Hasta Que auxx = 0
FinProceso
