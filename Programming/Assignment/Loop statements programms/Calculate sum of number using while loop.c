// Calculate sum of 10 numbers using of while loop

#include<stdio.h>
main()
{
	int n, i = 1, sum = 0;  // Initialize variables
	
	while(i <= 10)  // Loop to get 10 numbers
	{
		printf("\nEnter Number: ");  // Prompt user for input
		scanf("%d", &n);  // Read the input number
		
		i++;  // Increment the counter
		
		sum += n;  // Add the number to the sum
	}
	
	printf("Sum is: %d", sum);  // Print the total sum
}

