// Calculate 5 numbers from user and calculate number of even and odd using of while loop

#include<stdio.h>
main()
{
	int n, i = 1, sum = 0, e = 0, o = 0;  // Initialize variables
	
	while(i <= 5)  // Loop to get 5 numbers
	{
		printf("\nEnter Number: ");
		scanf("%d", &n);  // Input number
		i++;  // Increment loop counter
		sum += n;  // Add number to sum

		if(n % 2 == 0)  // Check if number is even
		{
			printf("Number is even");
			e++;  // Increment even counter
		}	
		else  // If not even, it's odd
		{
			printf("Number is odd");
			o++;  // Increment odd counter
		}
	}
	
	printf("\nSum is: %d", sum);  // Print sum
	printf("\nCount the even numbers: %d", e);  // Print count of even numbers
	printf("\nCount the odd numbers: %d", o);  // Print count of odd numbers
}

