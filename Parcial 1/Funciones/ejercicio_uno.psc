Funcion millas <- km_millas (km)
	Definir millas Como Real;
	millas <- km / 1.609344;
FinFuncion
Funcion dolar <- pesos_dolar (pesos)
	Definir dolar Como Real;
	dolar <- pesos * 495;
FinFuncion
Proceso ejercicio_uno
	Definir opcion Como Entero;
	Definir kma, pesosa, pesos, millas Como Real;
	Escribir "Elija 1 si quiere el convertor de DOLARES y 2 el de km";
	Leer opcion;
	Segun opcion Hacer
		1:
			Escribir "Ingrese cantidad de dolares";
			Leer pesosa;
//			Escribir "La cantidad de pesos es de: ", pesos_dolar(pesosa);
			pesos <- pesos_dolar (pesosa);
			Escribir "La cantidad de pesos es de: ", pesos;
			
		2:
			Escribir "Ingrese la cantidad de km";
			Leer kma;
			millas <- km_millas (kma);
			Escribir "La cantidad de km es de: ", millas;
	FinSegun
	
	
FinProceso
