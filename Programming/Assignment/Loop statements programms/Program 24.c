#include <stdio.h>

main() 
{
    int n, sum = 0, i;

    // Prompt the user to enter a positive integer
    printf("Enter a positive integer: ");
    scanf("%d", &n);

    // Calculate the sum of the first n natural numbers
    for (i = 1; i <= n; i++) 
    {
        sum += i; // Add the current number i to the sum
    }

    // Print the result
    printf("Sum of the series 1 + 2 + 3 + ... + %d = %d\n", n, sum);
}

