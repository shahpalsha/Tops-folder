#include <stdio.h>

int main() 
{
    int n,i,rev=0,remainder;
	printf("Enter a number: ");
    scanf("%d",&n);
	for (i=1;n!=0;i++) 
	{
        remainder=n%10;               
        rev=rev*10+remainder;
		n/=10;  
    }
	printf("Reversed Number: %d\n",rev);
}

