#include <stdio.h>

main() 
{
    int sal,annual=0;
	printf("Enter your monthly salary : ");
    scanf("%d",&sal);

    annual=sal*12;

    printf("Your annnual salary is: %d",annual);
}

