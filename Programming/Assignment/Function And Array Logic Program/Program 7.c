#include <stdio.h>

int main() {
    char a[20];
    int i, len = 0;

    // Prompt the user to enter a string
    printf("Enter Name: ");
    gets(a); // Note: gets() is unsafe; consider using fgets() instead

    // Calculate the length of the string without using inbuilt functions
    for (i = 0; a[i] != '\0'; i++) {
        len++;
    }

    // Output the length of the string
    printf("Length of string is: %d\n", len);

    
}

