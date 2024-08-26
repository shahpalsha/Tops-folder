#include <stdio.h>

int main() 
{
    float principal, rate, time, compound_interest, amount;
    int n,i;

    // Input the principal amount, annual interest rate, and time period
    printf("Enter the principal amount: ");
    scanf("%f", &principal);

    printf("Enter the annual interest rate (in percentage): ");
    scanf("%f", &rate);

    printf("Enter the time period (in years): ");
    scanf("%f", &time);

    // Convert rate from percentage to decimal
    rate = rate / 100;

    // Number of compounding periods per year (assume annually for this example)
    n = 1;

    // Calculate the amount using a loop
    amount = principal;
    for (i = 0; i < n * time; i++) 
	{
        amount = amount * (1 + rate / n);
    }

    // Calculate compound interest
    compound_interest = amount - principal;

    // Output the compound interest
    printf("\nCompound interest: %.2f\n", compound_interest);

    return 0;
}

