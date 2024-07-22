#include<stdio.h>
main()
{
	int a,b,temp;
	printf("Enter the value a :");
	scanf("%d",&a);
	printf("Enter the value b :");
	scanf("%d",&b);
	
	temp=a;// a=blank
	a=b;// b=blank
	b=temp; // temp=blank
	
	printf("After swapping of a :%d",a);
	printf("\nAfter swapping of b :%d",b);
}
