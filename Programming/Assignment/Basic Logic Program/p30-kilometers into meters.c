#include <stdio.h>

int main()
{
    float kilometers,meters;
	printf("Enter distance in kilometers: ");
    scanf("%f",&kilometers);
	meters=kilometers*1000;
	printf("meters are: %.2f\n", meters);
}

