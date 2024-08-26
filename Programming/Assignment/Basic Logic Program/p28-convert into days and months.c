#include <stdio.h>

int main() {
    int years,days,months;
	printf("Enter number of years: ");
    scanf("%d", &years);
	days = years*365;
    months = years*12;
	printf("days are: %d\n", days);
    printf("months are: %.2f\n", (float)months);
}

