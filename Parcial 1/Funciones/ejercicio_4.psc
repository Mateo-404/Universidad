Proceso ejercicio_4
	Definir nombre, apelido, localidad, calle, a, b, espacio, espacio1, espacio2,altura Como Caracter;
	Definir edad, veces, i Como Entero;
	Escribir "Ingrese la cantidad de veces: ";
	Leer veces;
	Para i <- 1 Hasta veces Hacer
		Escribir "Ingrese nombre: ";
		Leer nombre;
		Escribir "Ingrese apellido: ";
		Leer apelido;
		Escribir "Ingrese edad: ";
		Leer edad;
		Escribir "Ingrese calle: ";
		Leer calle;
		Escribir "Ingrese altura: ";
		Leer altura;
		Escribir "Ingrese localidad";
		Leer localidad;
		b <- Concatenar (calle, " ");
		a <- Concatenar(b, altura);
		b <- Concatenar(a, "-");
		a <- Concatenar(b, " ");
		b <- Concatenar(a, altura);
		Escribir nombre, " ", apelido; Escribir edad; Escribir altura; Escribir b;
	FinPara
FinProceso
