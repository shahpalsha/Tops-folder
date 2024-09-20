// Write a program of to sort the array using templates.

#include<iostream>
using namespace std;

template <typename A>
A sort(A a[], int size)
{
    A temp;
    for(int i = 0; i < size; i++)
    {
        for(int j = i + 1; j < size; j++)
        {
            if(a[i] > a[j])
            {
                temp = a[i];
                a[i] = a[j];
                a[j] = temp;
            }
        }
    }
    
    // Output the sorted array
    cout << "Sorted array: ";
    for(int i = 0; i < size; i++)
    {
        cout << a[i] << " ";
    }
    cout << endl;
}

int main()
{
    int arr[] = {5, 4, 3, 2, 1};
    int size = sizeof(arr)/sizeof(arr[0]);

    acce<int>(arr, size);
    
    return 0;
}

