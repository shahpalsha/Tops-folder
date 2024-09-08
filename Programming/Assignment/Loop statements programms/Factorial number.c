// WAP to print factorial of given number

#include<stdio.h>
main()
{
	int n, i, fac = 1;  // Initialize fac to 1
	
	printf("Enter Number: ");
	scanf("%d", &n);  // Input the number for which factorial is to be calculated
	
	for(i = 1; i <= n; i++)  // Loop from 1 to the input number
	{
		fac *= i;  // Multiply fac by the current value of i
	}
	
	printf("Factorial is: %d", fac);  // Print the calculated factorial
}

