// Write a C program to print the multiplication table of a given number N

#include <stdio.h>

main()
{
    int n, i;

    // Prompt the user to enter a number
    printf("Enter Number: ");
    scanf("%d", &n);  // Read the number from the user

    // Print the multiplication table for the number from 1 to 10
    for (i = 1; i <= 10; i++)
    {
        // Print the multiplication result in the format "N * i = result"
        printf("%d * %d = %d\n", n, i, n * i);
    }
}

