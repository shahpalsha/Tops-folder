#include<stdio.h>
main()
{
	char i,j;
	// Print a pattern of letters from A to E
	for(i=65;i<=69;i++)
	{
		for(j=65;j<=i;j++)
		{
			printf(" %c",j);
		}
	printf("\n");
	}
}
