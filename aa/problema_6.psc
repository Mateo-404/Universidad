Proceso problema_6
	Definir nombre, ordenadoC, calificacionesC, auxC Como Caracter;
	Definir nota Como Real;
	Definir i, j, opcion, ordenadooC, calificacionessC, aux como Entero;
	
	Dimension nota[31];
	Dimension nombre[31];
	Dimension ordenadoC[31];
	Dimension ordenadooC[31];
	Dimension  calificacionesC[31];
	Dimension calificacionessC[31];
	Para i <- 0 Hasta 3 Hacer
		Escribir "Ingrese nombre del alumno: ";
		Leer nombre[i];
		Escribir "Ingrese nota: ";
		Leer nota[i];
	FinPara
	Para i <- 0 Hasta 3 Hacer
		Si Subcadena(nombre[i+1], 1, 1) >  Subcadena(nombre[i], 1, 1) Entonces
			ordenadoC[i] <- nombre[i+1];
			ordenadooC[i] <- nota[i+1];
		FinSi
		Si nota[i+1] > nota[i] Entonces
			calificacionesC[i] <- nombre[i+1];
			calificacionessC[i] <- nota[i+1]; 
		FinSi
	FinPara
	
	Repetir
		Escribir "Ingrese que listado ver: ";
		Escribir "(Pulse 0 para salir)";
		Leer opcion;
		si opcion = 1 Entonces
			Para i <- 0 Hasta 3 Hacer
				Escribir "Nombre: ", ordenadoC[i];
				Escribir "Nota: ", ordenadooC[i];
			FinPara
		FinSi
		si opcion = 1 Entonces
			Para i <- 0 Hasta 3 Hacer
				Escribir "Nombre: ", calificacionesC[i];
				Escribir "Nota: ", calificacionessC[i];
			FinPara
		FinSi
	Hasta Que opcion = 0
FinProceso
