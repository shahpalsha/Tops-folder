// Calculate the Sum of Natural Numbers Using the While Loop

#include <stdio.h>

main()
{
    int n, i = 1, sum = 0;
    
    // Prompt the user to enter a number
    printf("Enter Number : ");
    scanf("%d", &n);
    
    // Calculate the sum of natural numbers from 1 to n
    while (i <= n)
    {
        sum += i; // Add the current number to the sum
        i++;      // Move to the next number
    }
    
    // Print the result
    printf("Sum of Natural numbers is : %d", sum);
}

