// Accept 3 numbers from user using while loop and check each numbers palindrome.

#include<stdio.h>
main() 
{
    int n, rev, remainder, temp;  // Initialize variables
    int sum = 0;  // Counter to ensure 3 numbers are checked

    while(sum < 3)  // Loop to accept 3 numbers
    {
        printf("Enter a number: ");
        scanf("%d", &n);  // Input number

        temp = n;  // Store original number for later comparison
        rev = 0;   // Reset reverse number to 0
        
        while(n != 0)  // Reverse the number
        {
            remainder = n % 10;  // Get the last digit
            rev = rev * 10 + remainder;  // Append it to the reversed number
            n /= 10;  // Remove the last digit from the original number
        }

        if(temp == rev)  // Check if the original and reversed numbers are the same
        {
            printf("%d is a palindrome.\n", temp);
        }
        else
        {
            printf("%d is not a palindrome.\n", temp);
        }

        sum++;  // Increment the counter after checking each number
    }
}

