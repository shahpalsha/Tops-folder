// Program to remove characters from a string except allowed characters

#include <stdio.h>
#include <stdbool.h> // Include for boolean type
#include <string.h>

#define MAX_LENGTH 1000

// Function to check if a character is allowed
bool isAllowed(char c, const char *allowedChars) 
{
    while (*allowedChars) 
    {
        if (c == *allowedChars) 
        {
            return true;
        }
        allowedChars++;
    }
    return false;
}

// Function to filter the string based on allowed characters
void filterString(char *str, const char *allowedChars) 
{
    char result[MAX_LENGTH];
    int j = 0, i;

    // Iterate through the string
    for (i = 0; str[i] != '\0'; i++) 
    {
        // Copy allowed characters to result
        if (isAllowed(str[i], allowedChars)) 
        {
            result[j++] = str[i];
        }
    }
    result[j] = '\0'; // Null-terminate the result

    // Copy result back to original string
    strcpy(str, result);
}

int main() 
{
    char str[MAX_LENGTH];
    const char *allowedChars = "aeiouAEIOU"; // Vowels to keep

    // Input the string
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    // Remove newline character if present
    int length = strlen(str);
    if (length > 0 && str[length - 1] == '\n') 
    {
        str[length - 1] = '\0';
    }

    // Filter the string
    filterString(str, allowedChars);

    // Output the filtered string
    printf("Filtered string: %s\n", str);

    return 0;
}

