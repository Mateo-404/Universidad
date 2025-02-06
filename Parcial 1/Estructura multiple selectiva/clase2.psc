Proceso clase2
	Definir fecha Como Entero;
	Escribir "Ingrese fecha actual";
	Leer fecha;
	Mientras (fecha >= 32) o (fecha <= 0) Hacer
		Escribir "La fecha fue invalida, ingrese una fecha valida: ";
		Leer fecha;
	FinMientras
	si (fecha >=8) Entonces
		fecha <- fecha % 7;
	FinSi
	Segun fecha hacer
		1, 0:
			Escribir "Hoy es Lunes";
		2:
			Escribir "Hoy es Martes";
		3:
			Escribir "Hoy es Miercoles";
		4:
			Escribir "Hoy es Jueves";
		5:
			Escribir "Hoy es Viernes";
		6:
			Escribir "Hoy es Sabado";
		7:
			Escribir "Hoy es Domingo";
	FinSegun
	
FinProceso
