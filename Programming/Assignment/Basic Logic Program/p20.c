#include <stdio.h>

int main() 
{
    float salary, insuranceDeduction, loanDeduction, remainingSalary;

    // Input the monthly salary
    printf("Enter your monthly salary: ");
    scanf("%f", &salary);

    // Calculate deductions
    insuranceDeduction = salary * 0.10;
    loanDeduction = salary * 0.10;

    // Calculate the remaining salary
    remainingSalary = salary - insuranceDeduction - loanDeduction;

    // Print the results
    printf("Insurance Deduction:%.2f\n", insuranceDeduction);
    printf("Loan Deduction:%.2f\n", loanDeduction);
    printf("Remaining Salary:%.2f\n", remainingSalary);
}

