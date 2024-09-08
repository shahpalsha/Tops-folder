// Program to input 10 numbers from the user and calculate:
// a. Count of even numbers
// b. Count of odd numbers
// c. Sum of even numbers
// d. Sum of odd numbers

#include <stdio.h>

main()
{
    int i, n;
    int ev = 0, od = 0;       // Counters for even and odd numbers
    int evsum = 0, odsum = 0; // Sums for even and odd numbers

    // Loop to accept 10 numbers from the user
    for(i = 1; i <= 10; i++)
    {
        printf("\nEnter Number %d: ", i);
        scanf("%d", &n);

        // Check if the number is even or odd
        if(n % 2 == 0)
        {
            printf("%d is Even", n);
            ev++;          // Increment even number counter
            evsum += n;    // Add to even numbers sum
        }
        else
        {
            printf("%d is Odd", n);
            od++;          // Increment odd number counter
            odsum += n;    // Add to odd numbers sum
        }
    }

    // Print the results
    printf("\nCount of Even Numbers is: %d", ev);
    printf("\nCount of Odd Numbers is: %d", od);
    printf("\nSum of Even Numbers is: %d", evsum);
    printf("\nSum of Odd Numbers is: %d", odsum);
}

