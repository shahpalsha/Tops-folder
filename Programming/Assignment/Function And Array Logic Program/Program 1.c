#include <stdio.h>

// Function to find the maximum number in an array
int findMax(int arr[], int size) {
    int max = arr[0];  // Assume the first element is the maximum
    int i;

    // Iterate through the array to find the maximum value
    for (i = 1; i < size; i++) {
        if (arr[i] > max) {
            max = arr[i];  // Update max if a larger element is found
        }
    }

    return max;
}

int main() {
    int n;
    
    // Input the number of elements in the array
    printf("Enter the number of elements in the array: ");
    scanf("%d", &n);

    int arr[n], i;
    
    // Input the elements of the array
    printf("Enter %d elements:\n", n);
    for (i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    // Find the maximum number in the array
    int max = findMax(arr, n);
    printf("The maximum number in the array is: %d\n", max);

    return 0; // Return 0 to indicate successful completion
}

