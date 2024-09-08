// Write a program in C to copy one string to another string.

#include<stdio.h>
main()
{
	char a[10],b[10];
	//Input the string
	printf("Enter Name : ");
	gets(a);
	
	//copy string 'a' to 'b'
	strcpy(b,a);
	
	//output copied the string
	printf("String b is : %s",b);
}
