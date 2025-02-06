#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <windows.h>
int calcularprom(int x, int i){
    // i va a ser cantidad y X los numeros
    return x = x / i;
}

int main()
{
//    //<------------Ejercicio 1------------------------>
//    //cntrl + shift + c (comentar) || cntrl + shift + x (descomentar)
//    int num1, num2;
//    printf("Ingrese un numero entero\n");
//    scanf("%d", &num1);
//    fflush(stdin);
//    printf("Ingrese un numero entero\n");
//    scanf("%d", &num2);
//    fflush(stdin);
//    if ((num1>0) && (num2>0)){
//        printf("Ambos son positivos\n");
//    }else if ((num1>0) || (num2>0)){
//    printf("Un solo numero es positivo\n");
//    }else{
//    printf("Ninguno de los numeros es positivo\n");
//    }

    //<------------Ejercicio 2------------------------>
//    int num;
//    printf("Ingrese el anio: \n");
//    scanf("%d", &num);
//    fflush(stdin);
//    if (num % 400 == 0)
//    {
//        printf("El anio %d es un anio biciesto!\n", num);
//    }else{
//        printf("El anio ingresado NO es un anio biciesto \n");
//    }

    //<------------Ejercicio 3------------------------>
//    int num1, num2;
//    printf("Ingrese el primer numero: ");
//    scanf("%d", &num1); fflush(stdin);
//    printf("Ingrese el segundo numero: ");
//    scanf("%d", &num2); fflush(stdin);
//    if (num1 % num2 == 0)
//    {
//        printf("Los numeros ingresados son divisores entre si!\n");
//    }else{
//        printf("Los numeros ingresados NO son divisores entre si\n");
//    }

   //<------------Ejercicio 4------------------------>
//   float radio, perimetro;
//   printf("Ingrese radio del circulo: \n");
//   scanf("%f", &radio); fflush(stdin);
//   //Perimetro
//   perimetro = M_PI * radio * 2;
//   //Area
//   radio = M_PI * pow(radio, 2);
//   printf("El perimetro del circulo es de %.2f \n", perimetro);
//   printf("El area del circulo es de %.2f \n", radio);

    //<------------Ejercicio 5------------------------>
//    float cm;
//    printf("Ingrese los cm a convertir: \n");
//    scanf("%f", &cm); fflush(stdin);
//    cm = cm / 2.54;
//    printf("La conversion daria como resultado: %f pulgadas", cm);

    //<------------Ejercicio 6------------------------>
//        int dia_a, dia_p, mes_a, mes_p, anio_a, anio_p;
//        printf("Ingrese dia actual: ");
//        scanf ("%d", &dia_a); fflush(stdin);
//        if (dia_a >= 1 && dia_a <= 31)
//        {
//            printf("Ingrese mes actual: ");
//            scanf ("%d", &mes_a); fflush(stdin);
//            if (mes_a >= 1 && mes_a<=12)
//            {
//                printf("Ingrese anio actual: ");
//                scanf ("%d", &anio_a); fflush(stdin);
//            }
//
//        }else{
//            do{
//                printf("Ingrese dia valido: \n");
//                scanf("%d", &dia_a); fflush(stdin);
//            }
//            while (!(dia_a >= 1 && dia_a <= 31));
//        }


    //<------------Ejercicio 7------------------------>
//    int a, uno, dos;
//    printf("Ingrese el numero de tres cifras: \n");
//    scanf("%d", &a); fflush(stdin);
//    uno = a / 100;
//    dos = (a / 10) % 10;
//    a = a % 10;
//    printf("%d%d%d", a, dos, uno);


//    //<------------Ejercicio 8------------------------>
//    char sexo;
//    int tiempo, edad, hemoglobina;
//    printf("Ingrese sexo del paciente (M o F): \n");
//    scanf("%c", &sexo);
//    printf("Pulse (0) para ingresar meses o (1) para ingresar años: \n");
//    scanf("%d", &tiempo);
//    switch (tiempo){
//        case 0:
//            printf("Ingrese edad del paciente \n");
//            scanf("%d", edad);fflush(stdin);
//            printf("Ingrese nivel de hemoglobina \n");
//            scanf("%d", hemoglobina);fflush(stdin);
//            if ((edad <= 1) && (hemoglobina < 13)){
//                printf("Bajo nivel de hemoglobina \n");
//            }else if ((edad <= 1)&&(hemoglobina <= 26)){
//                printf("Nivel normal de hemoglobina\n");
//            }else if ((edad <= 1)&&(hemoglobina > 26)){
//                printf("Alto nivel de hemoglobina\n");
//            }
//            if ((edad>1) && (edad <= 6)){
//                if (hemoglobina < 10){
//                     printf("Bajo nivel de hemoglobina \n");
//                }else if (hemoglobina <=18){
//                    printf("Nivel normal de hemoglobina\n");
//                }else if (hemoglobina > 18){
//                    printf("Alto nivel de hemoglobina\n");
//                }
//
//            } break;
//        case 1:
//            printf("Ingrese edad del paciente \n");
//            scanf("%d", edad);fflush(stdin);
//            if edad
//    }
//  EJERCICIOS ARRAYS
//    //<------------Ejercicio 1------------------------>
//
//    int numeros[10], i, aux, j;
//    for (i = 0; i < 10; i++){
//    printf("Ingrese los 10 numeros de forma consecutiva: ");
//    scanf("%d", &numeros[i]); fflush(stdin);
//    }
//    //Imprimir
//    for(i = 10; i > 0; i--){
//        printf("Numero %d es %d \n", i, numeros[i]);
//    }
//    //<------------Ejercicio 2------------------------>
//    int vectorr[10], i, j, sumtotal;
//    for (i = 0; i < 10; i++){
//        printf("Ingrese el numero en la posicion %d", i);
//        scanf("%d", &vectorr[i]); fflush(stdin);
//        sumtotal += vectorr[i];
//    }
//    sumtotal(sumtotal, 10);
//    <---- Ejercicio matriz power ------------->
     char a[100][40];
     int i=-1, k;
     do{
        i++;
        printf("Ingrese el nombre n°%d \n", i+1);
        gets(a[i]);
        if (stricmp(a[i], 'fin')==0){
            break;
        }
        for(k=0; k < i; k++){
            while(stricmp(a[i], a[k])==0){
                    printf("USUARIO YA REGISTRADO! \n");
                    printf("Ingrese un nombre valido n°%d \n", i+1);
                    gets(a[i]);

            }
        }
     }while(strcmp(a[i], 'fin')!=0);
//     for(i=0;i<10;i++){
//        printf("Ingrese el nombre n°%d \n", i+1);
//        gets(a[i]);
//        for(k=0; k < i; k++){
//            while(stricmp(a[i], a[k])==0){
//                    printf("USUARIO YA REGISTRADO! \n");
//                    printf("Ingrese un nombre valido n°%d \n", i+1);
//                    gets(a[i]);
//
//            }
//        }
//     }
     for(k=0;k<i;k++){
        puts(a[k]);
     }


    return 0;
}
