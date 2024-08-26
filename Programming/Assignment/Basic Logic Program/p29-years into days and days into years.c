#include <stdio.h>
main() 
{
    int years,days;
    float yearsFromDays;
	printf("Enter number of years: ");
    scanf("%d",&years);
	days=years*365;
	yearsFromDays=days/365.0;
	printf("days are: %d\n",days);
    printf("years are(from days):%.2f\n",yearsFromDays);

}

