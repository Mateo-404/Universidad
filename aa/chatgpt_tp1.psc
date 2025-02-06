Proceso chatgpt_tp1
	Definir stock, cant, i, j Como Entero;
	Definir titulo, album, artista Como Caracter;
	Dimension album[200 , 200];
	Dimension stock[200];
	Dimension artista[200];
	i <- -1;
	j <- 0;
	cant <- 0;
	Repetir
		i <- i + 1;
		Escribir "Ingrese nombre del album (Pulse s para salir): ";
		Leer album[j, i];	
		si album[j, i] <> "s" Entonces
			Escribir "Ingrese el titulo: ";
			Leer album[j, i];
			Escribir "Ingrese el artista: ";
			Leer artista[i];
			Escribir "Ingrese el stock: ";
			Leer stock[i];
			cant <- cant + 1;
		FinSi
	Hasta Que album[j, i] = "s";
	
	//Consignas
	Definir buscador, buscador1 Como Caracter;
	Definir devolucion, venta, consigna, cantventas Como Entero;
	cantventas <- 0;
	Repetir
		Escribir "Ingrese la consigna que desea saber: (Pulse 0 para salir)";
		Leer consigna;
		Si consigna <> 0 Entonces
			Segun consigna Hacer
				1:
					Escribir "Ingrese el nombre del ALBUM que vendió: ";
					Leer buscador;
					Para i <- 0 Hasta cant-1 Hacer
						si buscador = album[i, 0] Entonces
							Escribir "Ingrese el titulo de la cancion: ";
							Leer buscador1;
							Para j <- 0 Hasta 200 Hacer
								si buscador1 = album[i, j] Entonces
									Escribir "Ingrese la cantidad vendida: ";
									Leer venta;
									stock[i] <- venta - stock[i];
									cantventas <- cantventas + 1;
								FinSi
							FinPara
						FinSi
					FinPara
				2:
					Escribir "Ingrese el nombre del ALBUM que devolvió: ";
					Leer buscador;
					Para i <- 0 Hasta cant-1 Hacer
						si buscador = album[i, 0] Entonces
							Escribir "Ingrese el titulo de la cancion: ";
							Leer buscador1;
							Para j <- 0 Hasta 200 Hacer
								si buscador1 = album[i, j] Entonces
									Escribir "Ingrese la cantidad devuelta: ";
									Leer venta;
									stock[i] <- venta + stock[i];
									cantventas <- cantventas - 1;
								FinSi
							FinPara
						FinSi
					FinPara
				3:
					Para i <- 0 Hasta cant-1 Hacer
						Escribir "Album: ", album[i, 0];
						Escribir "Titulo: ", album[i, 1];
						Escribir "Artista: ", artista[i];
						Escribir "Stock: ", stock[i];
						Escribir "----------------------------";
					FinPara
				4:
					Escribir cant;
				5:
					Escribir cantventas;
			FinSegun
		FinSi
	Hasta Que consigna = 0;
	
FinProceso
