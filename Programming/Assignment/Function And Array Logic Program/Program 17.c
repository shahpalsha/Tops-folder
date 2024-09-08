#include <stdio.h>

// Define a structure for Employee
struct Employee 
{
    int empno;            // Employee number
    char empname[50];     // Employee name
    float salary;         // Employee salary
};

// Define a union for Data
union Data 
{
    int intValue;         // Integer value
    float floatValue;    // Float value
    char charValue;       // Character value
};

int main() 
{
    // Initialize and display the structure
    struct Employee emp;
    emp.empno = 101;
    snprintf(emp.empname, sizeof(emp.empname), "John Doe");
    emp.salary = 50000.50;

    printf("Structure:\n");
    printf("Employee Number: %d\n", emp.empno);
    printf("Employee Name: %s\n", emp.empname);
    printf("Employee Salary: %.2f\n", emp.salary);
    printf("Size of Structure: %zu bytes\n\n", sizeof(emp));

    // Initialize and display the union
    union Data data;
    data.intValue = 10;
    printf("Union with intValue: %d\n", data.intValue);

    // Note: The following lines will overwrite the previous values
    data.floatValue = 20.5f;
    printf("Union with floatValue: %.2f\n", data.floatValue);

    data.charValue = 'A';
    printf("Union with charValue: %c\n", data.charValue);

    printf("Size of Union: %zu bytes\n", sizeof(data));

    return 0;
}

