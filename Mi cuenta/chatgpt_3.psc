Proceso sin_titulo
	Definir titulo, autor Como Caracter;
	Definir anio, stock, i, j Como Entero;
	Definir  precio Como Real;
	Dimension titulo[200];
	Dimension stock[200];
	Dimension autor[200];
	Dimension anio[200];
	Dimension precio[200];
	i <- -1;
	Repetir
		i <- i +1;
		Escribir "Ingrese el titulo del libro: ";
		Escribir "(Digite S para salir)";
		Leer titulo[i];
		si titulo[i] <> "S" Entonces
			Escribir "Ingrese el nombre del autor: ";
			Leer autor[i];
			Escribir "Ingrese el año de publicacion: ";
			Leer anio[i];
			Escribir "Ingrese el precio de la publicacion: ";
			Leer precio[i];
			Escribir "Ingrese el stock de la publicacion: ";
			Leer stock[i];
		FinSi
	Hasta Que titulo[i] = "S";
	
	//Consignas
	Definir consigna, k Como Entero;
	Definir busqueda Como Caracter;
	Definir sum, mascaro Como Real;
	Definir busqueda1, venta, maystock, pos Como Entero;
	
	Repetir
		Escribir "-| BIBLIOTECA UTN |- ";
		Escribir "";
		Escribir "Ingrese la consigna que desea saber: ";
		Escribir "(Pulse 0 para salir)";
		Leer consigna;
		pos <- 0;
		Segun consigna Hacer
			1:
				Escribir "| Listado de libros |";
				Para k <- 0 Hasta i-1 Hacer
					Escribir titulo[k];
					Escribir autor[k];
					Escribir anio[k];
					Escribir precio[k];
					Escribir stock[k];
					Escribir "-------------------";
				FinPara
			2:
				Escribir "| Busqueda de libros |";
				Escribir "Ingrese el autor a buscar: ";
				Leer busqueda;
				Escribir "Los titulos son: ";
				Para k <- 0 Hasta i-1 Hacer
					si busqueda = autor[k] Entonces
						Escribir titulo[k];
					FinSi
				FinPara
			3:
				sum <- 0;
				Para k <- 0 Hasta i-1 Hacer
					sum <- sum + (precio[k] * stock[k]);
				FinPara
				sum <- sum / i;
				Escribir "El promedio de los precio es de: ", sum; 
			4:
				Escribir "| Busqueda por año |";
				Escribir "Ingrese el año a buscar: ";
				Leer busqueda1;
				Para k <- 0 Hasta  i-1 Hacer
					si (busqueda1 = anio[k]) Entonces
						Escribir titulo[k];
						Escribir autor[k];
					FinSi
				FinPara
			5:
				Escribir "| Venta de libros |";
				Escribir "Ingrese el titulo que vendió: ";
				Leer busqueda;
				Para k <- 0 Hasta i-1 Hacer
					Si busqueda = titulo[k] Entonces
						Escribir "Titulo encontrado";
						Escribir "Ingrese la cantidad vendida: ";
						Leer venta;
						stock[k] <- stock[k] - venta;
					FinSi
				FinPara
			6:
				Escribir "| Titulo más caro |";
				mascaro <- 0;
				Para k <- 0 Hasta i-1 Hacer
					si mascaro < (precio[k] * stock[k]) Entonces
						pos <- k;
					FinSi
				FinPara
				Escribir "El titulo mas caro es: ", titulo[pos];
				Escribir "Con un precio de: ", precio[pos];
			7:
				Escribir "| Titulo con mayor stock |";
				maystock <- 0;
				Para k <- 0 Hasta i-1 Hacer
					si mascaro < stock[k] Entonces
						pos <- k;
					FinSi
				FinPara
				Escribir "El titulo con mas stock es: ", titulo[pos];
				Escribir "Con un stock de: ", stock[pos];
			8:
				Escribir "| Titulo mas barato |";
				mascaro <- k;
				Para k <- 0 Hasta i-1 Hacer
					si mascaro > precio[k] Entonces
						pos <- k;
					FinSi
				FinPara
				Escribir "El titulo mas mas barato es es: ", titulo[pos];
				Escribir "Con un precio de: ", precio[pos];
		FinSegun
	Hasta Que consigna = 0; 
FinProceso
