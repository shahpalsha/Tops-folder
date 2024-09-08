#include <stdio.h>

main() 
{
    int n, sum = 0, i;

    // Prompt the user to enter a positive integer
    printf("Enter a positive integer: ");
    scanf("%d", &n);

    // Calculate the sum of squares of the first n natural numbers
    for (i = 1; i <= n; i++) {
        sum += i * i; // Add the square of i to the sum
    }

    // Print the result
    printf("Sum of the series (1*1) + (2*2) + (3*3) + ... + (%d*%d) = %d\n", n, n, sum);
}

