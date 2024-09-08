#include <stdio.h>

// Recursive function to reverse a string
void reverseString(char str[], int start, int end) {
    if (start >= end) {
        return; // Base case: when the pointers meet or cross
    }

    // Swap characters at start and end
    char temp = str[start];
    str[start] = str[end];
    str[end] = temp;

    // Recursive call with updated indices
    reverseString(str, start + 1, end - 1);
}

int main() {
    char str[100];

    // Input a string from the user
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    // Remove the trailing newline character if present
    str[strcspn(str, "\n")] = '\0';

    // Calculate the length of the string
    int length = strlen(str);

    // Reverse the string using recursion
    reverseString(str, 0, length - 1);

    // Print the reversed string
    printf("Reversed string: %s\n", str);

    return 0;
}

