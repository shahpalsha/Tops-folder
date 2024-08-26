// Accept 3 numbers from user using while loop and check each numbers palindrome.

#include<stdio.h>
main() 
{
    int n,rev,remainder,temp;
    int sum=0;
	while(sum<3) 
	{
        printf("Enter a number: ");
        scanf("%d",&n);
		temp=n;
        rev=0;// Reverse the number
        while(n!=0) 
		{
            remainder=n%10;
            rev= rev*10+remainder;
            n/=10;
        }
		if (temp==rev) 
		{
            printf("%d is a palindrome.\n",temp);
        } else 
		{
            printf("%d is not a palindrome.\n",temp);
        }
		sum++;
    }
}

