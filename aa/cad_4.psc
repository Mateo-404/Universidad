SubProceso e <- promedioFallas ( a, b )
	Definir e Como Real;
	e <- a / b;
FinSubProceso

Proceso cad_4
	Definir cantproducida, total, i, sum1 ,sum2, j, posiciones, cantfail Como Entero;
	Definir lote Como Real;
	cantproducida <- 1;
	i <- 0;
	sum1 <- 0;
	sum2 <- 0;
	Dimension lote[500];
	Dimension posiciones[500];
	Mientras cantproducida <> 0 Hacer
		Escribir "Ingrese la cantidad producida del lote ", i+1;
		Escribir "(Pulse 0 para salir)";
		Leer cantproducida;
		Si cantproducida <> 0 Entonces
			Escribir "Ingrese la cantidad de fallas: ";
			Leer cantfail;
			sum1 <- cantproducida + sum1;
			sum2 <- cantfail + sum2;
			lote[i] <- promedioFallas(cantproducida, cantfail);
			i <- i + 1;
		FinSi
	FinMientras
	Para j <- 0 Hasta i-1 Hacer
		Si lote[j] > promedioFallas(sum1, sum2) Entonces
			Escribir "El lote n° ", j+1, " superó al promedio con ", lote[j], " fallas";
		FinSi
	FinPara
	
	
	
	
FinProceso
