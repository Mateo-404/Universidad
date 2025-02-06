Proceso ejercicio_p_4
	Definir dia_a, mes_a, ano_a, dia_p, mes_p, ano_p, contador_p, edad_promedio Como Entero;
	Escribir "Ingrese día actual: ";
	Leer dia_a;
	Escribir "Ingrese año actual: ";
	Leer ano_a;
	Escribir "Ingrese mes actual: ";
	Leer mes_a;
	Escribir "Ingrese día de nacimiento (Finaliza cuando escribe 0): ";
	Leer dia_p;
	edad_promedio <- 0;
	contador_p <- 0;
	Mientras dia_p < 0 Hacer
		Escribir "Ingrese un dia válido: ";
		Leer dia_p;
	FinMientras
	Mientras dia_p > 0 Hacer
		Mientras dia_p < 0 Hacer
			Escribir "Ingrese un dia valido (Finaliza cuando escribe 0): ";
			Leer dia_p;
		FinMientras
		Escribir "Ingrese mes de nacimiento: ";
		Leer mes_p;
		Mientras mes_p < 1 Hacer
			Escribir "Ingrese un mes de nacimiento valido: ";
			Leer dia_p;
		FinMientras
		Escribir "Ingrese año de nacimiento: ";
		Leer ano_p;
		//Acá no hago mientras por si se quiere calcular la edad de una persona de a.c
		ano_p <- ano_p - ano_a;
		Si mes_p > mes_a Entonces
			ano_p <- ano_p - 1;
			Si (mes_a == mes_p) y (dia_p > dia_a) entonces
				ano_p <- ano_p - 1 ;
			FinSi
		FinSi
		contador_p <- contador_p + 1;
		edad_promedio <- edad_promedio + ano_p;
		Escribir "Su edad actual es de: ", ano_p," años.";
		Escribir "Ingrese día de nacimiento (Finaliza cuando escribe 0): ";
		Leer dia_p;
	FinMientras
	ano_p <- edad_promedio / contador_p;
	Escribir "El promedio de edad de las personas ingresadas es de: ", ano_p," años."; 
	
FinProceso
