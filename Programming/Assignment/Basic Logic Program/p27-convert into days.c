#include <stdio.h>
main()
{
    int days;
    float months;
	printf("Enter number of days: ");
    scanf("%d",&days);
	months=days/30.0;
    printf("months are: %.2f\n",months);
}

