#include<stdio.h>
main()
{
	int a,b;
	printf("Enter the value a :");
	scanf("%d",&a);
	printf("Enter the value b :");
	scanf("%d",&b);
	
	printf("\nAddition : %d",a+b);
	printf("\nSubtraction : %d",a-b);
	printf("\nMultiplication : %d",a*b);
	printf("\nDivision : %.2f",(float)a/b);
}
