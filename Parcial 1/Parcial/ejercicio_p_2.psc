Proceso ejercicio_p_2
	Definir dni, edad, cant_empleados, sexo Como Entero;
	Definir peso_F, altura, peso_M, promedio_M, promedio_F, promedio_edad Como Real;
	Definir nombre Como Caracter;
	Escribir "Ingrese DNI (finaliza cuando ingresa 0): ";
	Leer dni;
	cant_empleados <- 0;
	promedio_edad <- 0;
	promedio_F <- 0;
	promedio_M <- 0;
	Mientras dni <> 0 Hacer
		cant_empleados <- cant_empleados + 1;
		Escribir "Ingrese edad del empleado: ";
		Leer edad;
		promedio_edad <- edad + promedio_edad;
		Escribir "Ingrese altura del empleado: ";
		Leer altura;
		Escribir "Ingrese sexo del empleado (0 si es Hombre, 1 si es Mujer): ";
		Leer sexo;
		Segun sexo Hacer
			0:
				Escribir "Ingrese el peso del empleado: ";
				Leer peso_M;
				promedio_M <- peso_M + promedio_M;
			1:
				Escribir "Ingrese el peso de la empleada: ";
				Leer peso_F;
				promedio_F <- promedio_F + peso_F;
		FinSegun
		Escribir "Ingrese DNI (finaliza cuando ingresa 0): ";
		Leer dni;
	FinMientras
	//EL PROMEDIO ES HOMBRES CON CANT HOMBRES, MUJERES CON MUJERES
	promedio_M <- promedio_M / cant_empleados;
	promedio_F <- promedio_F / cant_empleados;
	promedio_edad <- promedio_edad / cant_empleados;
	Escribir "La cantidad de empleados ingresados fue de: ", cant_empleados;
	Escribir "El promedio de edad fue de: ", promedio_edad;
	Escribir "El promedio de peso del sexo masculino fue de: ", promedio_M;
	Escribir "El promedio de peso del sexo femenino fue de: ", promedio_F;
FinProceso
