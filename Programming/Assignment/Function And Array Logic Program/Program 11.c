#include <stdio.h>

int main() // Added return type int
{
    int numbers[5], i;

    // Prompt user to enter 5 numbers
    printf("Enter 5 numbers:\n");
    for (i = 0; i < 5; i++) 
    {
        printf("Number %d: ", i + 1);
        scanf("%d", &numbers[i]);
    }

    // Display numbers in reverse order
    printf("Numbers in reverse order:\n");
    for (i = 4; i >= 0; i--) 
    {
        printf("%d ", numbers[i]);
    }
    
    printf("\n");

    return 0; // Added return statement
}

