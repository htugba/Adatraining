#include "myCFile.h"
#include <stdio.h>

int getMax(int num1, int num2) {
   printf("Code from C getMax: ");
   return (num1 > num2 ) ? num1 : num2;
}

int getMin(int num1, int num2) {
   printf("Code from C getMin: ");
   return (num1 < num2 ) ? num1 : num2;
}