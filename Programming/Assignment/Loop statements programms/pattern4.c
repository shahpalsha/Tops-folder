#include<stdio.h>
main()
{
	int i,j;
	
	// Print the top half of the diamond pattern
	for(i=1;i<=5;i++)
	{
		for(j=1;j<=i;j++)
		{
			printf(" *");
		}
	printf("\n");
	}
	
	// Print the bottom half of the diamond pattern
	for(i=1;i<=4;i++)
	{
		for(j=4;j>=i;j--)
		{
			printf(" *");
		}
	printf("\n");
	}
}

