// Write a program to find out the max from given number (E.g., No: - 1562 Max number is 6)

#include <stdio.h>

main() 
{
	
    int num, maxDigit = 0;

    printf("Enter a number: ");
    scanf("%d", &num);
    
    if (num < 0) {
        num = -num;
    }

    while (num != 0) 
	{
        int digit = num % 10;  
        
        if (digit > maxDigit) 
		{
            maxDigit = digit;  
        }
        num /= 10; 
    }

    printf("Max digit is: %d\n", maxDigit);
    
}
