// Program to combine two strings manually

#include <stdio.h>
#include <string.h>

#define MAX_LENGTH 1000

// Function to combine two strings
combineStrings(char *str1, const char *str2) 
{
    // Move pointer to the end of str1
    while (*str1) {
        str1++;
    }
    
    // Append str2 to the end of str1
    while (*str2) 
    {
        *str1 = *str2;
        str1++;
        str2++;
    }
    
    // Null-terminate the combined string
    *str1 = '\0';
}

main() 
{
    char str1[MAX_LENGTH];
    char str2[MAX_LENGTH];

    // Input the first string
    printf("Enter the first string: ");
    fgets(str1, sizeof(str1), stdin);
    
    // Remove newline character if present
    size_t length1 = strlen(str1);
    if (length1 > 0 && str1[length1 - 1] == '\n') 
    {
        str1[length1 - 1] = '\0';
    }

    // Input the second string
    printf("Enter the second string: ");
    fgets(str2, sizeof(str2), stdin);
    
    // Remove newline character if present
    size_t length2 = strlen(str2);
    if (length2 > 0 && str2[length2 - 1] == '\n') 
    {
        str2[length2 - 1] = '\0';
    }

    // Combine the two strings
    combineStrings(str1, str2);

    // Output the combined string
    printf("Combined string: %s\n", str1);
}

