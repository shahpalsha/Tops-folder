// Program to find the number of times a given word appears in a string

#include <stdio.h>

#define MAX_LENGTH 1000

// Function to count occurrences of a word in a string
int countWordOccurrences(const char *str, const char *word) 
{
    int count = 0;
    const char *ptr = str;
    int wordLength = strlen(word);

    // Search for the word in the string
    while ((ptr = strstr(ptr, word)) != NULL) 
    {
        // Check if word is not part of another word
        if ((ptr == str || !isalpha(ptr[-1])) && !isalpha(ptr[wordLength])) 
        {
            count++;
        }
        ptr += wordLength; // Move pointer past the word
    }

    return count;
}

int main() 
{
    char str[MAX_LENGTH];
    const char *word = "is"; // Word to search for

    // Input the string
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    // Remove newline character if present
    int length = strlen(str);
    if (length > 0 && str[length - 1] == '\n') 
    {
        str[length - 1] = '\0';
    }

    // Count occurrences of the word
    int count = countWordOccurrences(str, word);
    printf("The word '%s' appears %d times in the given string.\n", word, count);

    return 0;
}

