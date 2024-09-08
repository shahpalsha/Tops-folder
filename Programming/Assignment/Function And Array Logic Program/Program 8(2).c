// Program to handle information for five employees using structures

#include <stdio.h>

#define MAX_EMPLOYEES 5

// Define the Employee structure
struct Employee {
    int empno;              // Employee number
    char empname[50];       // Employee name
    char address[100];      // Address
    int age;                // Age
};

// Function to print employee details
void printEmployee(struct Employee emp) {
    printf("Employee Number: %d\n", emp.empno);
    printf("Employee Name: %s\n", emp.empname);
    printf("Address: %s\n", emp.address);
    printf("Age: %d\n", emp.age);
    printf("-----------------------------\n");
}

int main() {
    struct Employee employees[MAX_EMPLOYEES]; // Array to store employee information
    int i;

    // Input details for each employee
    for (i = 0; i < MAX_EMPLOYEES; i++) {
        printf("Enter details for employee %d:\n", i + 1);
        printf("Employee Number: ");
        scanf("%d", &employees[i].empno);
        getchar(); // Consume the newline character left by scanf

        printf("Employee Name: ");
        fgets(employees[i].empname, sizeof(employees[i].empname), stdin);
        employees[i].empname[strcspn(employees[i].empname, "\n")] = '\0'; // Remove newline

        printf("Address: ");
        fgets(employees[i].address, sizeof(employees[i].address), stdin);
        employees[i].address[strcspn(employees[i].address, "\n")] = '\0'; // Remove newline

        printf("Age: ");
        scanf("%d", &employees[i].age);
        getchar(); // Consume the newline character left by scanf
    }

    // Display employee information
    printf("\nEmployee Information:\n");
    for (i = 0; i < MAX_EMPLOYEES; i++) {
        printEmployee(employees[i]);
    }

    return 0;
}

