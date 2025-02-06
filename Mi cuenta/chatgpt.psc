SubProceso z <- calcpromedio ( cant, sum )
	Definir z Como real;
	z <- sum / cant;
FinSubProceso

Proceso chatgpt
	Definir promedio, puntaje,  auxprom,  puntajemax, sumatotal, maximopuntaje, sumatotaltodos, promedioglobal Como Real;
	Definir cant, i, j, consigna Como Entero;
	Definir persona Como Caracter;
	Dimension persona[100];
	Dimension puntaje[100, 4];
	Dimension puntajemax[100];
	Dimension promedio[100];
	Dimension sumatotal[100];
	cant <- 0;
	Para i <- 0 Hasta 99 Hacer
		puntajemax[i] <- 0;
		sumatotal[i] <- 0;
	FinPara
	Escribir "<---- Club deportivo UTN ---->";
	i <- 0;
	consigna <- 1;
	Mientras (consigna <> 0) Hacer
		Escribir "Digite 1 para continuar, 0 para salir: ";
		Leer consigna;
		si consigna <> 0 Entonces
			j <- 0;
			Escribir "Ingrese el nombre completo de la persona: ";
			Leer persona[i];
			Escribir "Ingrese la calificacion en: Futbol: ";
			Leer puntaje[i, j];
			j <- j +1;
			Escribir "Ingrese la calificacion en: Voley: ";
			Leer puntaje[i, j];
			j <- j +1;
			Escribir "Ingrese la calificacion en: Basquet: ";
			Leer puntaje[i, j];
			j <- j +1;
			Escribir "Ingrese la calificacion en: Atletismo: ";
			Leer puntaje[i, j];
			i <- i + 1;
			cant <- cant + 1;
		FinSi
	FinMientras
	//Calculos
	maximopuntaje <- 0;
	sumatotaltodos <- 0;
	Si (cant <> 0) Entonces
		Para i <- 0 Hasta cant-1 Hacer
			Para j <- 0 Hasta 3 Hacer
				//Puntaje maximo total
				Si maximopuntaje < puntaje[i, j] Entonces
					maximopuntaje <- puntaje[i, j];
				FinSi
				//Puuntaje maximo individual
				Si puntajemax[i] < puntaje[i, j] Entonces
					puntajemax[i] <- puntaje[i, j];
				FinSi
				//promedio
				sumatotal[i] <- sumatotal[i] + puntaje[i, j];
				//Promedio global
				sumatotaltodos <- sumatotaltodos + puntaje[i, j];
			FinPara
			//promedio
			auxprom <- sumatotal[i];
			promedio[i] <- calcpromedio(5, auxprom);
		FinPara
		promedioglobal <- calcpromedio(cant, sumatotaltodos);
		Repetir
			Escribir "Presione consigna: ";
			Escribir "1) a, 2) b, 3) c, 4) d: ";
			Escribir "(Pulse 0 para salir)";
			Leer consigna;
			Segun consigna Hacer
				1:
					Para i <- 0 Hasta cant-1 Hacer
						Escribir  persona[i];
						Para j <- 0 Hasta 3 Hacer
							Escribir j+1, " :", puntaje[i ,j];
						FinPara
					FinPara
				2:
					Escribir "Puntaje maximo: ";
					Para i <- 0 Hasta cant-1 Hacer
						Escribir persona[i], " :", puntajemax[i];
					FinPara
				3:
					Escribir "Promedio individual: ";
					Para i <- 0 Hasta cant-1 Hacer
						Escribir persona[i], " :", promedio[i];
					FinPara
				4:
					Escribir "Puntaje maximo global: ";
					Escribir maximopuntaje;
				5:
					Escribir "Promedio global: ";
					Escribir  promedioglobal;
			FinSegun
		Hasta Que consigna = 0;
	FinSi
FinProceso
