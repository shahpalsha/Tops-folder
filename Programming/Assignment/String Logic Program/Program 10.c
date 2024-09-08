// Program to extract a substring from a given string

#include <stdio.h>
#include <string.h>

#define MAX_LENGTH 100

// Extract substring function
void extractSubstring(char *source, int start, int length, char *destination) 
{
    int i;
    for (i = 0; i < length && (start + i) < strlen(source); i++) 
    {
        destination[i] = source[start + i];
    }
    destination[i] = '\0'; // Null-terminate
}

int main() 
{
    char str[MAX_LENGTH];
    char substring[MAX_LENGTH];
    int start, length;

    // Input string
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    // Remove newline character
    int strLength = strlen(str);
    if (strLength > 0 && str[strLength - 1] == '\n') 
    {
        str[strLength - 1] = '\0';
        strLength--; 
    }

    // Input start index and length
    printf("Enter the starting index: ");
    scanf("%d", &start);
    printf("Enter the length of the substring: ");
    scanf("%d", &length);

    // Validate input
    if (start < 0 || start >= strLength || length < 0) 
    {
        printf("Invalid starting index or length.\n");
        return 1;
    }

    // Extract and print substring
    extractSubstring(str, start, length, substring);
    printf("Extracted substring: \"%s\"\n", substring);

    return 0;
}

