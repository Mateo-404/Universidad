//SubProceso Resultado <- CalcularPromedio (x, xx)
//	Definir Resultado Como Real;
//	Resultado <- x / xx;
//FinSubProceso
//
//SubProceso Resultado <- sumatotalVector ( x, xx )
//	Definir  sumatotal, i, Resultado Como Real;
//	sumatotal <- 0;
//	Para i <- 0 Hasta xx-1 Hacer
//		sumatotal <- x[i] + sumatotal;
//	FinPara
//	Resultado <- sumatotal;
//FinSubProceso


Proceso vector_6
	Definir almacenes, buscar, i, monto Como Entero;
	Definir promedio, sumatotal Como Real;
	Dimension almacenes[10];
	sumatotal <- 0;
	promedio <- 0;
	Para i <- 0 Hasta 9 Hacer
		Escribir "Ingrese el monto del almacen numero ", i+1, " :";
		Leer almacenes[i];
	FinPara
	//Calcular promedio
	Para i <- 0 Hasta 9 Hacer
		sumatotal <- almacenes[i] + sumatotal;
	FinPara
	promedio <- sumatotal / 10;
	Escribir "El promedio de las ventas es de: ", promedio;
	Para i <- 0 Hasta 9 Hacer
		Si almacenes[i] > promedio Entonces
			Escribir "El almacen: ", i+1, " Superó al promedio";
		FinSi
	FinPara
FinProceso
