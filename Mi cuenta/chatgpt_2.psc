SubProceso z <- preciototal ( x, xx )
	Definir z Como Real;
	z <- x * xx;
	
FinSubProceso

SubProceso z <- calcprom ( x, xx )
	Definir z Como Real;
	z <- x / xx;
FinSubProceso


Proceso chatgpt_2
	Definir nombre Como Caracter;
	Definir codigo, stock, maystock,postock, posprecio, i, opcion, cant, buscar Como Entero;
	Definir precio, mayprecio, sumtotal, promedio, inventario Como Real;
	Dimension nombre[100];
	Dimension codigo[100];
	Dimension stock[100];
	Dimension precio[100];
	i <- 0;
	maystock <- 0;
	mayprecio <- 0;
	sumtotal <- 0;
	opcion <- 1;
	Mientras opcion <> 0 Hacer
		Escribir "Ingrese codigo del producto: ";
		Escribir "(Ingrese 0 para salir)";
		Leer opcion;
		Si opcion <> 0 Entonces
			codigo[i] <- opcion;
			Escribir "Ingrese Nombre del producto: ";
			Leer nombre[i];
			Escribir "Ingrese Precio individual del producto: ";
			Leer precio[i];
			Escribir "Ingrese Stock del producto: ";
			Leer stock[i];
			Si maystock < stock[i] Entonces
				maystock <- stock[i];
				postock <- i;
			FinSi
			Si mayprecio < precio[i] Entonces
				mayprecio <- precio[i];
				posprecio <- i;
			FinSi
			sumtotal <- sumtotal + precio[i];
			i <- i + 1;
		FinSi
	FinMientras
	cant <- i;
	inventario <- 0;
	Si cant <> 0 Entonces
		Repetir
			Escribir "Elija que consigna ver (Ingresar de forma numerica): ";
			Escribir "(Ingrese 0 para salir)";
			Leer opcion;
			Segun opcion Hacer
				2:
					Escribir "Elija el numero de stock a modificar: ";
					Leer i;
					Escribir "Ingrese la cantidad de stock actual: ";
					Leer stock[i];
				3:
					Para i <- 0 Hasta cant-1 Hacer
						inventario <- inventario + (preciototal(stock[i], precio[i]));
					FinPara
					Escribir "El valor actual del inventario es de: ", inventario;
					inventario <- 0;
				4: 
					Escribir "El producto con la mayor cantidad de stock es :";
					Escribir nombre[postock];
					Escribir codigo[postock];
					Escribir "Stock actual: ", stock[postock];
					Escribir "$", precio[postock];
				5:
					Escribir "El producto mas costoso es :";
					Escribir nombre[posprecio];
					Escribir codigo[posprecio];
					Escribir "Stock actual: ", stock[posprecio];
					Escribir "$", precio[posprecio];
				6:
					promedio <- calcprom(sumtotal, cant);
					Escribir "El promedio total es de: ", promedio;
			FinSegun
		Hasta Que opcion = 0; 
	FinSi
	Escribir "Disfrute su dia :)";
FinProceso
