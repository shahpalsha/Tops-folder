// Program to find the character with the maximum occurrences in a string

#include <stdio.h>
#include <string.h>

#define MAX_LENGTH 100
#define ASCII_SIZE 256

int main() 
{
    char str[MAX_LENGTH];
    int frequency[ASCII_SIZE] = {0}; // Array to store frequency of each character
    int maxCount = 0;
    char maxChar;
    int i;

    // Input string
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    // Remove newline character if present
    int length = strlen(str);
    if (length > 0 && str[length - 1] == '\n') 
    {
        str[length - 1] = '\0';
        length--; 
    }

    // Count frequency of each character
    for (i = 0; i < length; i++) 
    {
        if (str[i] != ' ') // Skip spaces
        { 
            frequency[(unsigned char)str[i]]++;
        }
    }

    // Find the character with the maximum frequency
    for (i = 0; i < ASCII_SIZE; i++) 
    {
        if (frequency[i] > maxCount) 
        {
            maxCount = frequency[i];
            maxChar = i;
        }
    }

    // Output the result
    if (maxCount > 0) 
    {
        printf("Character with maximum occurrences: '%c'\n", maxChar);
        printf("Number of occurrences: %d\n", maxCount);
    } 
    else 
    {
        printf("No characters found.\n");
    }

    return 0;
}

