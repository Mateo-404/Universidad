Proceso ejercico3eselectivas
	definir precio,descuento, preciof Como Real;
	Escribir "Ingrese precio del producto";
	Leer precio;
	si precio < 200 Entonces
		Escribir "El precio total es de: ",precio;
	SiNo
		descuento <- (precio * 20) / 100;
		preciof <- precio-descuento;
		Escribir "El precio total es de: ",preciof;
	FinSi
	
 FinProceso
