#include <stdio.h>

int main() 
{
    int n=10,i,j; 
    int matrix[10][10];
    
    int value = 1;
    int top=0,bottom=n-1,left=0,right=n-1;
    
    while(value<=n*n) 
	{
        int i;
        for(i=left;i<=right;i++) // Fill the top row from the current left to right
		{
            matrix[top][i]=value++;
        }
        top++;
        for(i=top;i<=bottom;i++) 
		{
            matrix[i][right]=value++;// Fill the right column from the current top to bottom
        }
        right--;
        for (i=right;i>=left;i--) 
		{
            matrix[bottom][i]=value++;// Fill the bottom row from the current right to left
        }
        bottom--;
        for (i=bottom;i>=top;i--) 
		{
            matrix[i][left]=value++;// Fill the left column from the current bottom to top
        }
        left++;
    }
    for (i=0;i<n;i++) 
	{
        for (j=0;j<n;j++) 
		{
            printf("%4d",matrix[i][j]);
        }
        printf("\n");
    }
}

