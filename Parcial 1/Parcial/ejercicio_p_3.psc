Proceso ejercicio_p_3
	Definir i, cantidad, tipo_multa, cant_av, cant_me, cant_ap, cant_sr, cant_firma_si Como Entero;
	Definir firma Como Caracter;
	Definir dni, monto_av, monto_me, monto_ap, monto_sr, promedio_av, promedio_me, promedio_ap, promedio_sr, monto_total, promedio2_av, promedio2_me, promedio2_ap, promedio2_sr Como Real;
	Escribir "Ingrese la cantidad de multas por infracciones: ";
	Leer cantidad;
	cant_ap <- 0;
	cant_av <- 0;
	cant_me <- 0;
	cant_sr <- 0;
	promedio_ap <- 0;
	promedio_av <- 0;
	promedio_sr <- 0;
	promedio_me <- 0;
	cant_firma_si <- 0;
	monto_ap <- 0;
	monto_av <- 0;
	monto_me <- 0;
	monto_sr <- 0;
	monto_total <- 0;
	promedio2_me <- 0;
	promedio2_ap <- 0;
	promedio2_av <- 0;
	promedio2_sr <- 0;
	Para i <- 1 Hasta cantidad Hacer
		Escribir "Ingrese DNI del conductor: ";
		Leer dni;
		Escribir "Ingrese el tipo de multa que es (AV es 0, ME es 1, AP es 2 y SR es 3): ";
		Leer tipo_multa;
		//Hay que cambiar el según por ifs
		Segun tipo_multa Hacer
			0:
				cant_av <- cant_av + 1;
				Escribir "Ingrese monto: ";
				Leer monto_av;
				promedio_av <- monto_av + promedio_av;
			1:
				cant_me <- cant_me + 1;
				Escribir "Ingrese monto: ";
				Leer monto_me;
				promedio_me <- promedio_me + monto_me;
			2:
				cant_ap <- cant_ap + 1;
				Escribir "Ingrese monto: ";
				Leer monto_ap;
				promedio_ap <- monto_ap + promedio_ap;
			3:
				cant_sr <- cant_sr + 1;
				Escribir "Ingrese monto: ";
				Leer monto_sr;
				promedio_sr <- promedio_sr + monto_sr;
		FinSegun
		Escribir "Ingrese SI, si el infractor firmó la multa: ";
		Leer firma;
		//OJO, VA CON COMILLAS
		si firma == "SI" Entonces
			cant_firma_si <- cant_firma_si + 1;
		FinSi
	FinPara
	monto_total <- monto_ap + monto_av + monto_me + monto_sr;
	Si cant_av > 0 Entonces
		promedio2_av <- promedio_av / cant_av;
	FinSi
	Si cant_me > 0 Entonces
		promedio2_me <- promedio_me / cant_me;
	FinSi
	Si cant_ap > 0 Entonces
		promedio2_ap <- promedio_ap / cant_ap;
	FinSi
	Si cant_sr > 0 Entonces
		promedio2_sr <- promedio_sr / cant_sr;
	FinSi
	Escribir "Cantidad de multas: ";
	Escribir "AV es de: ", cant_av;
	escribir "ME es de: ", cant_me;
	escribir "AP es de: ", cant_ap; 
	escribir "SR es de: ", cant_sr;
	Escribir "--------------------------";
	Escribir "El monto total de AV es de: ", promedio_av, " y el promedio es de: ", promedio2_av;
	Escribir "El monto total de ME es de: ", promedio_me, " y el promedio es de: ", promedio2_me;
	Escribir "El monto total de AP es de: ", promedio_ap, " y el promedio es de: ", promedio2_ap;
	Escribir "El monto total de SR es de: ", promedio_sr, " y el promedio es de: ", promedio2_sr;
	Escribir "--------------------------";
	Escribir "La cantidad de infractores que firmaron la multa fue de: ", cant_firma_si; Escribir " personas.";
	Escribir "--------------------------";
	Escribir "El monto total de las multas es de: ", monto_total;

FinProceso
