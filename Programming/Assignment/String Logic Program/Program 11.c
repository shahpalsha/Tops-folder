// Program to replace lowercase characters with uppercase and vice versa

#include <stdio.h>
#define MAX_LENGTH 1000

int main() 
{
    char sentence[MAX_LENGTH];
    int i;

    // Input the sentence
    printf("Enter a sentence: ");
    fgets(sentence, sizeof(sentence), stdin);

    // Remove newline character if present
    int length = 0;
    while (sentence[length] != '\0') 
    {
        length++;
    }
    if (length > 0 && sentence[length - 1] == '\n') 
    {
        sentence[length - 1] = '\0';
    }

    // Convert lowercase to uppercase and vice versa
    for (i = 0; sentence[i] != '\0'; i++) 
    {
        if (islower(sentence[i])) 
        {
            sentence[i] = toupper(sentence[i]);
        } 
        else if (isupper(sentence[i])) 
        {
            sentence[i] = tolower(sentence[i]);
        }
    }
    
    // Output the modified sentence
    printf("Modified sentence: %s\n", sentence);


