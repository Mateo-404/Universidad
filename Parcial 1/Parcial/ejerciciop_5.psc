Proceso ejerciciop_5
	Definir a, f, c, d, e, voto, votoo Como Entero;
	a <- 0;
	c <- 0;
	d <- 0;
	e <- 0;
	f <- 0;
	Repetir
		Escribir "Ingrese el menu al que le dará 2 VOTOS (Pulse 0 para salir): ";
		Leer voto;
		Segun voto Hacer
			1:
				a <- a + 2;
			2:
				c <- c +2;
			3:
				d <- d +2;
			4:
				e <- e +2;
			5:
				f <- f +2;
		FinSegun
		Escribir "Ingrese el menu al que le dará 1 VOTO (Pulse 0 para salir): ";
		Leer votoo;
		Mientras (voto = votoo) Hacer
			Escribir "Elegiste 2 veces la misma opcion, elegí otra: ";
			Leer votoo;
		FinMientras
		Segun votoo Hacer
			1:
				a <- a + 1;
			2:
				c <- c +1;
			3:
				d <- d +1;
			4:
				e <- e +1;
			5:
				f <- f +1;
		FinSegun
	Hasta Que voto = 0 o votoo = 0
	Escribir "La cantidad de votos de la opcion 1: ", a;
	Escribir "La cantidad de votos de la opcion 2: ", c;
	Escribir "La cantidad de votos de  la opcion 3: ", d;
	Escribir "La cantidad de votos de la opcion 4: ", e;
	Escribir "La cantidad de votos de la opcion 5 : ", f;
	
FinProceso
