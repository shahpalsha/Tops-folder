// Accept 5 names from user at run time.

#include <stdio.h>

main() 
{
    char names[5][50];  // Array to store 5 names, each up to 49 characters long + 1 for null terminator
    int i;

    // Accept 5 names from the user
    for (i = 0; i < 5; i++) 
    {
        printf("Enter name %d: ", i + 1);
        scanf("%s", names[i]); // Read each name into the array
    }

    // Print the names entered by the user
    printf("\nThe names you entered are:\n");
    
    for (i = 0; i < 5; i++) 
    {
        printf("Name %d: %s\n", i + 1, names[i]); // Print each name
    }
}

