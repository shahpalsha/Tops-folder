// Program to count alphabets, digits, and special characters

#include <stdio.h>

#define MAX_LENGTH 100

int main() 
{
    char str[MAX_LENGTH];
    int alphabets = 0, digits = 0, specialChars = 0;
    int i;

    // Input string
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    // Remove newline character if present
    int length = strlen(str);
    if (length > 0 && str[length - 1] == '\n') 
    {
        str[length - 1] = '\0';
    }

    // Count characters
    for (i = 0; i < length; i++) 
    {
        if (isalpha(str[i])) 
        {
            alphabets++;  // Count alphabets
        } 
        else if (isdigit(str[i])) 
        {
            digits++;  // Count digits
        } 
        else if (!isspace(str[i])) 
        {
            specialChars++;  // Count special characters
        }
    }

    // Output counts
    printf("Total number of alphabets: %d\n", alphabets);
    printf("Total number of digits: %d\n", digits);
    printf("Total number of special characters: %d\n", specialChars);

    return 0;
}

