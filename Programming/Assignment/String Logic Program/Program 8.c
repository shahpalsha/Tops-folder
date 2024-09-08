// Program to count the total number of vowels and consonants in a string

#include <stdio.h>
#include <ctype.h> // For tolower() and isalpha()
#include <string.h>

#define MAX_LENGTH 100

int main() 
{
    char str[MAX_LENGTH];
    int vowels = 0, consonants = 0;
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

    // Count vowels and consonants
    for (i = 0; i < length; i++) 
    {
        char ch = tolower(str[i]); // Convert to lowercase for uniform comparison
        if (isalpha(ch)) // Check if the character is an alphabet
        {
            if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') 
            {
                vowels++;
            } 
            else 
            {
                consonants++;
            }
        }
    }

    // Output the counts
    printf("Total number of vowels: %d\n", vowels);
    printf("Total number of consonants: %d\n", consonants);

    return 0;
}

