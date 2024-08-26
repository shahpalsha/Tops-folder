#include <stdio.h>

int main() 
{
    float sal,premium;
	printf("Enter your salary : ");
    scanf("%f",&sal);

    premium=sal*0.010;

    printf("Your insurance premium is: %.2f\n", premium);
}

