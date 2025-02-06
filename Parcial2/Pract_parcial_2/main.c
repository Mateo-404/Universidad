#include <stdio.h>
#include <stdlib.h>
#include <windows.h>

float promedio (int  x, int y){
    return x / y;
}
int suma_array (int vector[], int y){
    int suma = 0;
    for (int i = 0; i < y; i++){
        suma += vector[i];
    }
    return suma;
}
int main()
{
//    [ ARRAYS
//    <-- EJERCICIO 1 -->
    int numeros[10], i, j, max, min;
    for (i = 0; i < 10; i++){
        printf("Ingrese el numero %d: ", i+1);
        scanf("%d", &numeros[i]); fflush(stdin); system("cls");
    }
    printf("La suma total da como resultado: %d\n", suma_array(numeros, 10));
    printf("El promedio da como resultado: %d\n", promedio(suma_array(numeros, 10), 10));
    return 0;
}
