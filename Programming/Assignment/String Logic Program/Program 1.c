// Program to find the length of a string without using library functions

#include <stdio.h>

main()
{
    char a[20];
    int i, len = 0;

    // Input string from user
    printf("Enter Name: ");
    gets(a);  // Note: gets() is unsafe, consider using fgets() instead

    // Calculate length of the string
    for (i = 0; a[i] != '\0'; i++)
    {
        len++;
    }
    
    // Print the length of the string
    printf("Length of string is: %d", len);
}

