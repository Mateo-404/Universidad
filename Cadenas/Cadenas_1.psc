Proceso Cadenas_1
	Definir letra, antes Como Caracter;
	Definir p Como Entero;
	Dimension antes[12];
	//2 FORMAS ASCII O DESARMAR EL NUMERO CON SUBCADENAS
	antes[0] <- "a";
	antes[1] <- "b";
	antes[2] <- "c";
	antes[3] <- "d";
	antes[4] <- "e";
	antes[5] <- "f";
	antes[6] <- "g";
	antes[7] <- "h";
	antes[8] <- "i";
	antes[9] <- "j";
	antes[10] <- "k";
	antes[11] <- "l";
	Escribir "Ingrese el caracter: ";
	Leer letra;
	Para p <- 0 Hasta 11 Hacer
		si antes[p] = letra Entonces
			Escribir "La letra se encuentra ANTES de la M";
		FinSi
	FinPara
	Si letra = "m" Entonces
		Escribir "La letra ingresada es la M";
	SiNo Si letra <> antes[0] Entonces
			Escribir "La letra ingresada se encuentra DESPUES de la M";
		FinSi
	FinSi
	
FinProceso
