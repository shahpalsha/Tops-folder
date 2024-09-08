#include <stdio.h>  // Preprocessor directive to include input/output functions

main() 
{
    // Variable declarations
    int num, originalNum, remainder, result = 0, n = 0, i;

    // Prompt user for an integer
    printf("Enter an integer: ");
    scanf("%d", &num);

    originalNum = num;  // Copy the input number for future comparison

    // Determine the number of digits in the input number
    while (originalNum != 0) {
        originalNum /= 10;  // Reduce the number by dividing it by 10
        n++;  // Increment the digit count
    }

    originalNum = num;  // Restore the original number

    // Loop through each digit of the number
    for (i = 0; i < n; i++) 
	{
        remainder = originalNum % 10;  // Get the last digit
        result += pow(remainder, n);   // Add the power of the digit to the result
        originalNum /= 10;  // Remove the last digit by integer division
    }

    // Check if the result is equal to the original number
    if (result == num)
        printf("%d is an Armstrong number.\n", num);  // If true, print Armstrong number
    else
        printf("%d is not an Armstrong number.\n", num);  // If false, print not an Armstrong number

}

