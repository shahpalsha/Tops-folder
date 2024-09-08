// Write a program to find out the max from given number (E.g., No: - 1562 Max number is 6)

#include <stdio.h>

main() 
{
    int num, maxDigit = 0;

    printf("Enter a number: ");
    scanf("%d", &num);
    
    if (num < 0) {
        num = -num;  // Convert negative number to positive
    }

    while (num != 0) 
    {
        int digit = num % 10;  // Extract the last digit
        
        if (digit > maxDigit) 
        {
            maxDigit = digit;  // Update maxDigit if current digit is larger
        }
        num /= 10;  // Remove the last digit
    }

    printf("Max digit is: %d\n", maxDigit);
    
}

