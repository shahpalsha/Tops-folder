// Program to find the largest and smallest words in a string

#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define MAX_LENGTH 1000
#define MAX_WORD_LENGTH 100

// Function to find largest and smallest words
findLargestAndSmallestWords(const char *str, char *largest, char *smallest) 
{
    char temp[MAX_WORD_LENGTH];
    int largestLength = 0;
    int smallestLength = MAX_WORD_LENGTH;
    
    const char *p = str;
    while (*p) {
        // Skip non-alphabet characters
        while (*p && !isalpha(*p)) 
        {
            p++;
        }

        int length = 0;
        // Extract word
        while (*p && isalpha(*p) && length < MAX_WORD_LENGTH - 1) 
        {
            temp[length++] = *p++;
        }
        temp[length] = '\0'; 

        // Update largest word if needed
        if (length > largestLength) 
        {
            largestLength = length;
            strcpy(largest, temp);
        }

        // Update smallest word if needed
        if (length > 0 && length < smallestLength) 
        {
            smallestLength = length;
            strcpy(smallest, temp);
        }
    }
}

main() 
{
    char str[MAX_LENGTH];
    char largest[MAX_WORD_LENGTH];
    char smallest[MAX_WORD_LENGTH];

    // Input the string
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    // Remove newline character if present
    int length = strlen(str);
    if (length > 0 && str[length - 1] == '\n') 
    {
        str[length - 1] = '\0';
    }

    // Find largest and smallest words
    findLargestAndSmallestWords(str, largest, smallest);

    // Output the largest and smallest words
    if (strlen(largest) > 0) 
    {
        printf("Largest word: %s\n", largest);
    } 
    else 
    {
        printf("No words found.\n");
    }

    if (strlen(smallest) > 0) 
    {
        printf("Smallest word: %s\n", smallest);
    } 
    else 
    {
        printf("No words found.\n");
    }

}

