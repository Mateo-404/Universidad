#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    //Ejercicio 1
//    int contador, suma, ingreso;
//
//    contador = 0;
//    suma = 0;
//    do
//    {
//        printf("Ingrese un numero entero: \n");
//        scanf("%d", &ingreso);
//        fflush(stdin);
//        if (ingreso > 0)
//        {
//            contador++;
//        }
//        else
//            {
//                suma = suma + ingreso;
//            }
//    }
//    while (ingreso != 0);
//    printf("Cantidad de positivos: %d\nSuma: %d", contador, suma);

    //Ejercicio 2
//    int numeroA, numeroB, resultado;
//
//    numeroA = 5;
//    numeroB = 9;
//    resultado = 0;
//
//    while (numeroA != 0) //también se puede usar > 0
//    {
//        resultado = resultado + numeroB;
//        numeroA--;
//    }
//
//    printf("El resultado es %d", resultado);

    //Ejercicio 3
//    int numeroA, numeroB, resultado;
//
//    numeroA = 401;
//    numeroB = 4;
//    resultado = 0;
//
//    while (numeroA >= numeroB)
//    {
//        numeroA = numeroA - numeroB;
//        resultado++;
//    }
//    printf("la division da %d con resto de %d", resultado, numeroA);

    //Ejercicio 4
//    int ingreso, nroAnt = 0, suma = 0;
//
//    for(int i = 0; i < 10; i++)
//    {
//        printf("Ingrese un numero: \n");
//        scanf("%d", &ingreso);
//        fflush(stdin);
//
//        if (ingreso == (nroAnt*2))
//            {suma = suma + ingreso;}
//
//        nroAnt = ingreso;
//    }
//
//    printf("La suma es: %d", suma);

    //Ejercicio 5
//    int ingreso, unidad, decena, centena;
//
//    do
//    {
//        printf("Ingrese un numero menor a 999\n");
//        scanf("%d", &ingreso);
//        fflush(stdin);
//        if (ingreso > 999)
//        {
//            printf("Ingreso invalido\n\n");
//        }
//    }
//    while (ingreso > 999);
//    unidad = ingreso % 10;
//    decena = (ingreso/10)%10;
//    centena = (ingreso/100)%10;
//
//
//    printf("unidad: %d\ndecena: %d\ncentena: %d", unidad, decena, centena);


    //Ejercicio 6
//    int n;
//    float x;
//
//    printf("Ingrese un numero mayor a cero: \n");
//    scanf("%d", &n);
//    fflush(stdin);
//
//    for(int i = 0; i <= n; i++)
//    {
//        x = pow(2, i);
//        printf("2 elevado a %d = %.0f\n", i, x);
//    }

    //Ejercicio 7
//    int pos1 = 0, pos2 = 1, imp;
//
//    printf("1: %d\n2: %d\n", pos1, pos2);
//    for(int i = 3; i <= 50; i++)
//    {
//        imp = pos1 + pos2;
//        printf("%d: %d\n", i, imp);
//        pos1 = pos2;
//        pos2 = imp;
//    }

    //Ejercicio 8
//    int nro, sumaDiv = 0;
//
//    printf("Ingrese un numero: \n");
//    scanf("%d", &nro);
//    fflush(stdin);
//
//    for(int i = nro/2; i > 0; i--)
//    {
//        if (nro % i == 0)
//            sumaDiv+=i;
//    }
//
//    if(sumaDiv == nro)
//        printf("%d es un numero perfecto", nro);
//    else
//        printf("%d es un numero imperfecto", nro);

//<---------------------Ejercicio 9--------------->
//    int num, i, factorial = 1;
//    printf("Ingrese el numero al que quiere hacerle el factorial: \n");
//    scanf("%d", &num);
//    for  (i = 1; i <= num; i++){
//        factorial *= i;
//    }
//    printf("El factorial del numero es: %d\n", factorial);

//<---------------------Ejercicio 10--------------->
//    int altura, ancho, i, j;
//    printf("Ingrese altura del rectangulo: \n");
//    scanf("%d", &altura); fflush(stdin);
//    printf("Ingrese ancho del rectangulo: \n");
//    scanf("%d", &ancho); fflush(stdin);
//    for(i=0; i < altura; i++){
//        for(j=0; j < ancho; j++){
//         printf("*");
//        }
//        printf("\n");
//    }
//<---------------------Ejercicio 11--------------->
//    unsigned int altura;
//    printf("Ingrese la altura del triangulo: \n");
//    scanf("%u", &altura); fflush(stdin);
//    for (unsigned int i = 0; i < altura; i++) {
//        for (unsigned int j = 0; j <= i; j++) {
//            printf("*");
//        }
//        printf("\n");
//    }


//<---------------------Ejercicio 12--------------->
//    int a, b = 0;
//    unsigned int cantidad;
//    printf("Ingrese la cantidad de numeros que va a comparar: \n");
//    scanf("%u", &cantidad); fflush(stdin);
//    while (cantidad <= 0){
//        printf("Ingrese una cantidad valida: \n");
//        scanf("%u", &cantidad); fflush(stdin);
//    }
//    for (unsigned int i = 0; i < cantidad; i++){
//        printf("Ingrese el numero a comparar \n");
//        scanf("%d", &a); fflush(stdin);
//        if (a > b){
//            b = a;
//        }
//    }
//    printf("El mayor numero ingresado fue: %d", b);


//<---------------------Ejercicio 13--------------->
    unsigned int cantremises, num, cuadras, cantviajes;
    printf("Ingrese la cantidad de pares de remises: \n");
    scanf("%u", &cantremises); fflush(stdin);
    for (unsigned int i = 0; i < cantremises; i++){
        printf("Ingrese el numero del remis: \n");
        scanf("%u", &num); fflush(stdin);
        while (num < 1) || (num > 5){
            printf("Ingrese un numero de remis valido: \n")
            scanf("%u", &num); fflush(stdin);
        }
    }


    getchar();
    return 0;
}
