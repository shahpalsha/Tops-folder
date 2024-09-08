// Write a program to calculate the summation of the digits of a number

#include <stdio.h>

main() 
{
    int num, sum = 0;

    // Prompt the user to enter a number
    printf("Enter a number: ");
    scanf("%d", &num);
    
    // Handle negative numbers by taking the absolute value
    if (num < 0) 
    {
        num = -num;
    }
    
    // Calculate the sum of the digits
    while (num != 0) 
    {
        int digit = num % 10;  // Get the last digit
        sum += digit;         // Add the digit to the sum
        num /= 10;            // Remove the last digit
    }

    // Print the result
    printf("Sum is: %d\n", sum);
}

