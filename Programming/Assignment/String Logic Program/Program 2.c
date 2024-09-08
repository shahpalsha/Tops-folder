// Program to separate and print individual characters from a string

#include <stdio.h>

#define MAX_LENGTH 100

main() 
{
    char str[MAX_LENGTH];
    int i;

    // Input string from user
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    // Print each character of the string, excluding newline characters
    printf("\nIndividual characters in the string:\n");
    for (i = 0; str[i] != '\0'; i++) 
    {
        // Skip newline or carriage return characters
        if (str[i] == '\n' || str[i] == '\r') 
        {
            continue;
        }
        printf("%c\n", str[i]);
    }
}

