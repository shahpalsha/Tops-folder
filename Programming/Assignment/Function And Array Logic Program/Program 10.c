#include <stdio.h>

// Function to check if a number is a palindrome
int isPalindrome(int num) 
{
    int originalNum = num; 
    int reversedNum = 0;  
    int remainder;

    // Reverse the number
    while (num != 0) {
        remainder = num % 10;         
        reversedNum = reversedNum * 10 + remainder; 
        num /= 10;
    }

    // Check if the original and reversed numbers are the same
    return originalNum == reversedNum;
}

int main() 
{
    int num;

    printf("Enter an integer: ");
    scanf("%d", &num);

    // Check and display if the number is a palindrome
    if (isPalindrome(num)) 
    {
        printf("%d is a palindrome.\n", num);
    } 
    else 
    {
        printf("%d is not a palindrome.\n", num);
    }

}

