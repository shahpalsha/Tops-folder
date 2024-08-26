// Calculate 5 numbers from user and calculate number of even and odd using of while loop

#include<stdio.h>
main()
{
	int n, i=1,sum=0,e,o;
	while(i<=5)
	{
		printf("\nEnter Number : ",i);
		scanf("%d",&n);
		i++;
		sum += n;
		if(n%2==0)
		{
			printf("Number is even");
			e++;
		}	
		else
		{
			printf("Number is odd");
			o++;
		}
	}
	printf("\nSum is : %d",sum);
	printf("\nCount the even number : %d",e);
	printf("\nCount the odd number : %d",o);
}

