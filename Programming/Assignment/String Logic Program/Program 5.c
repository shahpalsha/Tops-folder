// Program to compare two strings without using string library functions

#include <stdio.h>

main()
{
    char a[10], b[10];
    int i, j, sum = 0, sum1 = 0;

    // Prompt the user to enter the first string
    printf("Enter String 1: ");
    gets(a);  // Read the first string (Note: gets() is unsafe, consider using fgets() instead)

    // Prompt the user to enter the second string
    printf("Enter String 2: ");
    gets(b);  // Read the second string

    // Calculate the sum of ASCII values of characters in the first string
    for (i = 0; a[i] != '\0'; i++)
    {
        sum += a[i];
    }
    printf("\nSum of ASCII values in String 1 is: %d", sum);

    // Calculate the sum of ASCII values of characters in the second string
    for (j = 0; b[j] != '\0'; j++)
    {
        sum1 += b[j];
    }
    printf("\nSum of ASCII values in String 2 is: %d", sum1);

    // Compare the strings 
    printf("\nComparison value: %d", strcmp(a, b));
}

