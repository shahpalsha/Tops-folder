// WAP to print Fibonacci series up to given numbers

#include<stdio.h>
main()
{
	int n, i, n1 = 0, n2 = 1, n3;  // Initialize first two Fibonacci numbers
	
	printf("Enter Number: ");
	scanf("%d", &n);  // Input the number of terms
	
	printf("\n%d", n1);  // Print first number
	printf("\n%d", n2);  // Print second number
	
	for(i = 3; i <= n; i++)  // Start loop from the 3rd term
	{
		n3 = n1 + n2;  // Calculate next Fibonacci number
		printf("\n%d", n3);  // Print the next number
		
		n1 = n2;  // Update n1
		n2 = n3;  // Update n2
	}
}

