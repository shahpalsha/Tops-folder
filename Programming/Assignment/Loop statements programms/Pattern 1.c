#include <stdio.h>

main() 
{
    int i, j;

    // Loop to handle the number of rows (1 to 5)
    for (i = 1; i <= 5; i++) 
    {
        // Loop to handle the number of columns in each row
        for (j = 1; j <= i; j++) 
        {
            // Print '1' if the column index is odd, '0' if even
            if (j % 2 == 1) 
            {
                printf("1 ");
            } 
            else 
            {
                printf("0 ");
            }
        }
        // Move to the next line after each row
        printf("\n");
    }

}

