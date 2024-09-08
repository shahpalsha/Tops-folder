// Accept 5 numbers from user and find those numbers' factorials

#include <stdio.h>

main() 
{
    int numbers[5];  // Array to store 5 numbers
    int factorial, i;  

    // Accept 5 numbers from the user
    for (i = 0; i < 5; i++) 
    {
        printf("Enter number %d: ", i + 1);
        scanf("%d", &numbers[i]);
    }

    // Calculate and print the factorial of each number
    for (i = 0; i < 5; i++) 
    {
        int num = numbers[i];
        factorial = 1;

        // Calculate factorial using a while loop
        while (num > 0) 
        {
            factorial *= num;  // Multiply factorial by num
            num--;             // Decrement num
        }

        // Print the factorial of the current number
        printf("Factorial of %d is %d\n", numbers[i], factorial);
    }
}

