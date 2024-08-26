#include <stdio.h>

int main() {
    int a, b;

    // Input values for a and b
    printf("Enter the value of a: ");
    scanf("%d", &a);
    printf("Enter the value of b: ");
    scanf("%d", &b);
    
    // Swapping values using arithmetic operations
    a = a + b; // a now contains the sum of a and b
    b = a - b; // b now contains the original value of a
    a = a - b; // a now contains the original value of b
    
    // Output the swapped values
    printf("After swapping, value of a: %d\n", a);
    printf("After swapping, value of b: %d\n", b);

    return 0;
}

