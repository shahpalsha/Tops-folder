// Program to accept 5 numbers from the user and display them

#include <stdio.h>

main()
{
    int n, i;
    
    // Loop to accept and display 5 numbers
    for (i = 1; i <= 5; i++)
    {
        printf("\nEnter Number %d: ", i);
        scanf("%d", &n);  // Read a number from the user
        
        printf("Number is: %d", n);  // Display the entered number
    }
}

