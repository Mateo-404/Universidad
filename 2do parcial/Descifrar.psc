SubProceso z <- cifrar (x)
	Definir z Como caracter;
	z <- "99";
	Si x = "a" Entonces
		z <- "4";
	FinSi
	Si x = "b" Entonces
		z <- "8";
	FinSi
	Si x = "e" Entonces
		z <- "3";
	FinSi
	Si x = "f" Entonces
		z <- "7";
	FinSi
	Si x = "t" Entonces
		z <- "2";
	FinSi
	Si x = "g" Entonces
		z <- "9";
	FinSi
	Si x = "i" Entonces
		z <- "1";
	FinSi
	Si x = "o" Entonces
		z <- "0";
	FinSi
FinSubProceso
SubProceso z <- descifrar (x)
	Definir z Como caracter;
	z <- "99";
	Si x = "4" Entonces
		z <- "a";
	FinSi
	Si x = "8" Entonces
		z <- "b";
	FinSi
	Si x = "3" Entonces
		z <- "e";
	FinSi
	Si x = "7" Entonces
		z <- "f";
	FinSi
	Si x = "2" Entonces
		z <- "t";
	FinSi
	Si x = "9" Entonces
		z <- "g";
	FinSi
	Si x = "1" Entonces
		z <- "i";
	FinSi
	Si x = "0" Entonces
		z <- "o";
	FinSi
FinSubProceso

Proceso sin_titulo
	Definir cad, nueva, aux Como Caracter;
	Definir i, opcion Como Entero;
	Repetir
		Escribir "Ingrese la accion a realizar: ";
		Escribir "1- Cifrar Palabra";
		Escribir "2- Descifrar Palabra";
		Escribir "(Pulse 0 para salir)";
		Leer opcion;
		Si opcion <> 0 Entonces
			Segun opcion Hacer
				1:
					Escribir "Ingrese la cadena a cifrar: ";
					Leer cad;
					nueva <- "";
					Para i <- 0 Hasta Longitud(cad) Hacer
						aux <- cifrar(Subcadena(cad, i, i));
						Si aux <> "99" Entonces
							nueva <- Concatenar(nueva, aux);
						SiNo
							nueva <- Concatenar(nueva, Subcadena(cad, i, i));
						FinSi
					FinPara
					Escribir "La palabra cifrada quedó: ";
					Escribir nueva;
				2:
					Escribir "Ingrese la cadena a descifrar: ";
					Leer cad;
					nueva <- "";
					Para i <- 0 Hasta Longitud(cad) Hacer
						aux <- descifrar(Subcadena(cad, i, i));
						Si aux <> "99" Entonces
							nueva <- Concatenar(nueva, aux);
						SiNo
							nueva <- Concatenar(nueva, Subcadena(cad, i, i));
						FinSi
					FinPara
					Escribir "La palabra descifrada quedó: ";
					Escribir nueva;
			FinSegun
		FinSi
	Hasta Que opcion = 0; 
	Escribir "Hasta luego :) ";
FinProceso
