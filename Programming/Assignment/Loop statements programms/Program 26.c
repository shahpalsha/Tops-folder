#include <stdio.h>

main() 
{
    int n, totalSum = 0, i, j;

    // Prompt the user to enter a positive integer
    printf("Enter a positive integer: ");
    scanf("%d", &n);

    // Calculate the total sum of the series
    for (i = 1; i <= n; i++) {
        int partialSum = 0;
        // Calculate the sum of the first i natural numbers
        for (j = 1; j <= i; j++) {
            partialSum += j;
        }
        // Add the partial sum to the total sum
        totalSum += partialSum;
    }

    // Print the result
    printf("Sum of the series (1) + (1+2) + ... + (1+2+...+%d) = %d\n", n, totalSum);
}

