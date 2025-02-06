Proceso ejercicio8
	Definir cantMenor, cantMayor, cantMediana Como Entero;
	Definir ventas Como Real;
	cantMayor <- 0;
	cantMediana <- 0;
	cantMenor <- 0;
	Escribir "Ingrese monto de la venta (Pulse 0 para finalizar): ";
	Leer ventas;
	Mientras ventas <> 0 Hacer
		si ventas <= 201 Entonces
			cantMenor <- cantMenor + 1;
		SiNo
			si ventas < 401 Entonces
				cantMediana <- cantMediana + 1;
			SiNo
				cantMayor <- cantMayor + 1;
			FinSi
		FinSi
		Escribir "Ingrese monto de la venta (Pulse 0 para finalizar): ";
		Leer ventas;
	FinMientras
	Escribir  "La cantidad de ventas MENORES a 200 fue de: ", cantMenor;
	Escribir  "La cantidad de ventas MENORES a 400 fue de: ", cantMediana;
	Escribir  "La cantidad de ventas MAYORES a 200 fue de: ", cantMayor;
FinProceso
