#include <stdio.h>

main()
{
    char n = 'A'; // Initialize the character variable to 'A'
    int i, j;
    
    // Print a pattern of characters
    for(i = 1; i <= 5; i++)
    {
        for(j = 1; j <= i; j++)
        {
            printf("%c ", n); // Print the current character
            n++; // Move to the next character
        }
        printf("\n"); // Move to the next line after each row
    }
}

