// Write a program of to swap the two values using template.

#include<iostream>
using namespace std;

template <typename S>
S swap(S a,S b)
{
	cout<<endl<<"Before swapping : "<<"a: "<<a<<" , "<<"b: "<<b<<endl;
	a=a+b;
	b=a-b;
	a=a-b;
	cout<<"After swapping : "<<"a: "<<a<<" , "<<"b: "<<b<<endl;
}
main()
{
	swap<int>(10,20);
	swap<char>('P','M');
}
