#include <stdio.h>

#define NUM_COUNT 5 // Define the number of elements

int main() {
    int numbers[NUM_COUNT], i;

    // Input 5 numbers from the user
    printf("Enter %d numbers:\n", NUM_COUNT);
    for (i = 0; i < NUM_COUNT; i++) {
        printf("Number %d: ", i + 1);
        scanf("%d", &numbers[i]);
    }

    // Check each number if it's even or odd
    printf("\nChecking if each number is even or odd:\n");
    for (i = 0; i < NUM_COUNT; i++) {
        if (numbers[i] % 2 == 0) {
            printf("Number %d is even.\n", numbers[i]);
        } else {
            printf("Number %d is odd.\n", numbers[i]);
        }
    }

    return 0; // Return 0 to indicate successful completion
}

