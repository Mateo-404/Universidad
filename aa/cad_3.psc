SubProceso z <- Cifradoo ( a )
	Definir z, e Como Caracter;
	z <- a;
	Si a = "a" Entonces
		z <- "4";
	FinSi
	Si a = "b" Entonces
		z <- "8";
	FinSi
	Si a = "e" Entonces
		z <- "3";
	FinSi
	Si a = "f" Entonces
		z <- "7";
	FinSi
	Si a = "t" Entonces
		z <- "2";
	FinSi
	Si a = "g" Entonces
		z <- "9";
	FinSi
	Si a = "i" Entonces
		z <- "1";
	FinSi
	Si a = "o" Entonces
		z <- "0";
	FinSi
FinSubProceso
SubProceso z <- descifrar ( a )
	Definir z, e Como Caracter;
	z <- a;
	Si a = "4" Entonces
		z <- "a";
	FinSi
	Si a = "8" Entonces
		z <- "b";
	FinSi
	Si a = "3" Entonces
		z <- "e";
	FinSi
	Si a = "7" Entonces
		z <- "f";
	FinSi
	Si a = "2" Entonces
		z <- "t";
	FinSi
	Si a = "9" Entonces
		z <- "g";
	FinSi
	Si a = "1" Entonces
		z <- "i";
	FinSi
	Si a = "0" Entonces
		z <- "o";
	FinSi
FinSubProceso

Proceso cad_3
	Definir cad, cifrado, aux Como Caracter;
	Definir i, opcion Como Entero;
	Repetir
		Escribir "Ingrese 1 para cifrar, 2 para descifrar: ";
		Escribir "(Pulse 0 para salir)";
		Leer opcion;
		Si opcion = 1 Entonces
			Escribir "Ingrese la frase a cifrar: ";
			Leer cad;
			cifrado <- "";
			Para  i <- 0 Hasta Longitud(cad)-1 Hacer
				aux <- Subcadena(cad, i, i);
				cifrado <- Concatenar(cifrado, Cifradoo(aux));
			FinPara
			Escribir "La frase cifrada quedó: ", cifrado;
		FinSi
		Si opcion = 2 Entonces
			Escribir "Ingrese la frase a descifrar: ";
			Leer cad;
			cifrado <- "";
			Para  i <- 0 Hasta Longitud(cad)-1 Hacer
				aux <- Subcadena(cad, i, i);
				cifrado <- Concatenar(cifrado, descifrar(aux));
			FinPara
			Escribir "La frase descifrada quedó: ", cifrado;
		FinSi
	Hasta Que opcion = 0;
	//Faltan las que no cumplen la condicion
	//SE HACE CON UNA FUNCION QUE DEVUELVA O EL NUMERO O LA LETRA ORIGINAL
	Escribir "Hasta luego :)";
FinProceso
