#include <stdio.h>

main() 
{
    int n, i;
    
    // Prompt the user to enter the number of terms to generate
    printf("Enter the number of terms to generate: ");
    scanf("%d", &n);

    // Initialize the sequence array with the first 3 terms
    int sequence[n];
    sequence[0] = 1;
    sequence[1] = 2;
    sequence[2] = 3;

    // Generate the sequence based on the rules
    for (i = 3; i < n; i++) {
        if (i % 2 == 0) {
            sequence[i] = sequence[i - 1] * 2; // For even index, double the previous number
        } else {
            sequence[i] = sequence[i - 1] * 3 / 2; // For odd index, multiply the previous number by 1.5
        }
    }

    // Print the generated sequence
    printf("Generated sequence: ");
    for (i = 0; i < n; i++) {
        printf("%d ", sequence[i]);
    }
    printf("\n");
}

