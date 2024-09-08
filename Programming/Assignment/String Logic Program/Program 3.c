// Program to print individual characters of a string in reverse order

#include <stdio.h>
#include <string.h>

#define MAX_LENGTH 100

main() 
{
    char str[MAX_LENGTH];
    int length, i;

    // Input string from user
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    // Remove newline character if present
    length = strlen(str);
    if (length > 0 && str[length - 1] == '\n') 
    {
        str[length - 1] = '\0';
        length--;  
    }

    // Print individual characters in reverse order
    printf("\nIndividual characters in reverse order:\n");
    for (i = length - 1; i >= 0; i--) 
    {
        printf("%c\n", str[i]);
    }
}

