#include <stdio.h>
main()
{
    int minutes;
    int seconds,hours;
	printf("Enter number of minutes: ");
    scanf("%d",&minutes);
	seconds=minutes*60;
    hours=minutes/60;
	printf("seconds are: %d\n", seconds);
    printf("hours are: %d\n", hours);
}

