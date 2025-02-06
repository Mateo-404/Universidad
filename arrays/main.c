#include <stdio.h>
#include <stdlib.h>
#include <Windows.h>
float CalcPromedio (int vectorr[], int cantidad){
    float sum;
    for (int i = 0; i < cantidad; i++){
        sum += vectorr [i];
    }
    return sum / cantidad;
}
void ImpMayPromedio (float vectorr[], float promedio, int cantidad){
    for (int i; i < cantidad; i++){
        if (vectorr[i] > promedio){
            printf("%.2f \n", vectorr[i]);
        }
    }
}
int main()
{
// <---------Ejercicio 2------------->
    int cantNum, cantM;
    printf("Ingrese la cantidad de Numeros: ");
    scanf("%d", &cantNum); fflush(stdin); system("cls");
    float vectorr[cantNum], i;
    vectorr[cantNum];
    for (i = 0; i < cantNum; i++){
        printf("Ingrese el Numero real %d: ", i+1);
        scanf("%f", &vectorr[i]); fflush(stdin); system("cls");
    }
    ImpMayPromedio (vectorr, CalcPromedio (vectorr, cantNum), cantNum);


    return 0;
}
