Proceso ejercicio_4
	Definir stock, stockminimo, stockventa Como Entero;
	Escribir "Ingrese la cantidad de stock: ";
	Leer stock;
	Escribir "Ingrese la cantidad minima de stock: ";
	Leer stockminimo;
	Mientras stock > stockminimo Hacer
		Escribir "Ingrese cantidad de stock vendido: ";
		Leer stockventa;
		stock <- stock-stockventa;
	FinMientras
	Escribir "Se supero la cantidad de stock minimo, la cantidad actual es de ", stock; 
FinProceso
//ta bien