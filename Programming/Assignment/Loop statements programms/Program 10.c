// Write a program to make a summation of the first and last digit of a number

#include <stdio.h>

main() 
{
    int num, firstDigit, lastDigit;

    // Prompt the user to enter a number
    printf("Enter a number: ");
    scanf("%d", &num);
    
    // Handle negative numbers by taking the absolute value
    if (num < 0) {
        num = -num;
    }

    // Get the last digit of the number
    lastDigit = num % 10;

    // Find the first digit of the number
    while (num >= 10) {
        num /= 10;
    }
    firstDigit = num;

    // Calculate the sum of the first and last digits
    int sum = firstDigit + lastDigit;

    // Print the result
    printf("Sum of first and last digit: %d\n", sum);
}

