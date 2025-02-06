Proceso ejercico4eselectivas
	definir articulos Como Entero;
	definir precio,descuento1,descuento2 Como Real;
	Escribir "cantidad de articulos";
	leer articulos;
	escribir "indicar precio";
	leer precio;
	si articulos > 20 Entonces
		descuento1 <- (precio * 10) / 100;
		escribir "el precio es",precio-descuento1;
	sino
		si articulos >10 Entonces;
			descuento2 <- (precio * 5) /100;
			escribir "el precio es ", precio-descuento2;
		sino
			escribir "el precio es ", precio;
			
		FinSi
	FinSi
	
	
	
	
 FinProceso
