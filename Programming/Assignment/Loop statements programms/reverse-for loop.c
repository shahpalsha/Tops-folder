// Program to reverse the digits of a given number

#include <stdio.h>

int main() 
{
    int n, i, rev = 0, remainder;

    // Prompt the user to enter a number
    printf("Enter a number: ");
    scanf("%d", &n);

    // Reverse the digits of the number
    while (n != 0) 
    {
        remainder = n % 10;  // Get the last digit of the number
        rev = rev * 10 + remainder;  // Append the last digit to the reversed number
        n /= 10;  // Remove the last digit from the number
    }

    // Print the reversed number
    printf("Reversed Number: %d\n", rev);

    return 0;
}

