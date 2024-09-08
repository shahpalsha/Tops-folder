#include <stdio.h>

#define SIZE 5  // Define the size of the array

// Function to perform Bubble Sort on the array
void bubbleSort(int arr[], int n) 
{
    int temp, i, j;
    // Loop through all elements
    for (i = 0; i < n - 1; i++) 
    {
        // Compare adjacent elements and swap if needed
        for (j = 0; j < n - i - 1; j++) 
        {
            if (arr[j] > arr[j + 1]) 
            {
                // Swap elements
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

// Function to display the array
void displayArray(int arr[], int n) 
{
    int i;

    printf("Sorted Array:\n");
    // Print each element in the array
    for (i = 0; i < n; i++) 
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main() 
{
    int numbers[SIZE], i;

    // Prompt the user to enter 5 numbers
    printf("Enter %d numbers:\n", SIZE);
    for (i = 0; i < SIZE; i++) 
    {
        printf("Number %d: ", i + 1);
        scanf("%d", &numbers[i]); // Read each number from user input
    }

    // Sort the array using Bubble Sort
    bubbleSort(numbers, SIZE);

    // Display the sorted array
    displayArray(numbers, SIZE);

    return 0; // Return 0 to indicate successful execution
}

