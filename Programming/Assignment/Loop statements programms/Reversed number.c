// Program to reverse the digits of a given number and print it

#include <stdio.h>

main() 
{
    int num, reversed = 0;

    // Prompt the user to enter a number
    printf("Enter a number: ");
    scanf("%d", &num);

    // Reverse the digits of the number
    while (num != 0) 
    {
        int reminder = num % 10;       // Get the last digit of the number
        reversed = reversed * 10 + reminder;  // Append the last digit to the reversed number
        num = num / 10;               // Remove the last digit from the number
    }

    // Print the reversed number
    printf("Reversed number: %d\n", reversed);
}

