Proceso vector_5
	Definir cantalum, i Como Entero;
	Definir alumno, busqueda Como Caracter;
	Dimension alumno[100];
	Escribir "Ingrese la cantidad de alumnos: ";
	Leer cantalum;
	Para i <- 0 Hasta cantalum-1 Hacer
		Escribir "Ingrese el nombre del alumno: ";
		Leer alumno[i];
	FinPara
	Repetir
		Escribir "Ingrese el nombre del alumno que quiera buscar (a para salir): ";
		Leer busqueda;
		Para i <- 0 Hasta cantalum-1 Hacer
			Si busqueda = alumno[i] Entonces
				Escribir "Se encontró al alumno: ", busqueda;
			FinSi
		FinPara
	Hasta Que (busqueda = "a")
FinProceso
