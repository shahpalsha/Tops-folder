#include <stdio.h>

main()
{
    int i, j, k;
    
    // Print the upper part of the diamond (including the middle line)
    for(i = 1; i <= 5; i++)
    {
        // Print leading spaces
        for(k = 1; k <= 5 - i; k++)
        {
            printf(" ");
        }
        // Print the left half of the stars
        for(j = 1; j <= i; j++)
        {
            printf("*");
        }
        // Print the right half of the stars
        for(j = 2; j <= i; j++)
        {
            printf("*");
        }
        printf("\n");
    }
}

