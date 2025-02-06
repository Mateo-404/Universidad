Funcion primo <- num_primo (num)
	Definir primo Como Real;
	
FinFuncion
Proceso ejercicio3
	Definir numerovich, numP Como Real;
	Escribir "Ingrese el numero a comprobar: ";
	Leer numerovich;
	numP <- num_primo(numerovich);
	Si (numP <> 0) Entonces
		Escribir "El numero ingresado NO es primo";
	SiNo
		Escribir "El numero ingresado es primo";
	FinSi
	
FinProceso
