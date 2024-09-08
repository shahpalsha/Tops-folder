#include <stdio.h>

#define SIZE 5  // Define the size of the array

int main() 
{
    int numbers[SIZE]; // Array to store numbers
    int sum = 0;       // Variable to store the sum of the array elements
    int i;             // Loop counter

    // Prompt the user to enter 5 numbers
    printf("Enter %d numbers:\n", SIZE);
    for (i = 0; i < SIZE; i++) 
    {
        printf("Number %d: ", i + 1);
        scanf("%d", &numbers[i]); // Read each number from user input
    }

    // Calculate the sum of the array elements
    for (i = 0; i < SIZE; i++) 
    {
        sum += numbers[i];
    }

    // Display the sum
    printf("Sum of the array elements: %d\n", sum);
}

