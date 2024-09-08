#include <stdio.h>
#define MAX_STUDENTS 5
#define MAX_NAME_LENGTH 50

int main() // Added return type int
{
    char students[MAX_STUDENTS][MAX_NAME_LENGTH];
    int i;

    // Prompt user to enter names
    printf("Enter the names of %d students:\n", MAX_STUDENTS);
    for (i = 0; i < MAX_STUDENTS; i++) 
    {
        // Read each student's name
        printf("Student %d: ", i + 1);
        fgets(students[i], sizeof(students[i]), stdin);

        // Remove newline character if present
        size_t length = strlen(students[i]);
        if (length > 0 && students[i][length - 1] == '\n') 
        {
            students[i][length - 1] = '\0';
        }
    }

    // Display the names
    printf("\nNames of the students:\n");
    for (i = 0; i < MAX_STUDENTS; i++) 
    {
        printf("Student %d: %s\n", i + 1, students[i]);
    }

    return 0; // Added return statement
}

