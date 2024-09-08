// Calculate sum of 10 numbers using of while loop

#include<stdio.h>
main()
{
	int n, i = 1, sum = 0;  // Initialize variables
	
	while(i <= 10)  // Loop to get 10 numbers
	{
		printf("\nEnter Number: ");  // Prompt user to enter a number
		scanf("%d", &n);  // Read the input number
		
		i++;  // Increment the counter for the loop
		
		sum += n;  // Add the entered number to the sum
	}
	
	printf("Sum is: %d", sum);  // Print the total sum of 10 numbers
}


