// Write a program to Mathematic operation like Addition, Subtraction,  Multiplication, Division Of two number using
// different parameters and Function Overloading.

#include<iostream>
using namespace std;
class Calculator{  	// class
	public:
		int a,b;
	fun()
	{
		cout<<"Enter the value of a : ";
		cin>>a;
		cout<<"Enter the value of b : ";
		cin>>b;
	}
	cal()
	{
		cout<<"Addition is : "<<a+b<<endl;
	}
	cal(int a,int b) // parameters for method overloading
	{
		cout<<"Subtraction is : "<<a-b<<endl;
	}
	mul()
	{
		cout<<"Multiplication is : "<<a*b<<endl;
	}
	div()
	{
		cout<<"Division is : "<<a/b;
	}
};
main()
{
	Calculator obj; // called an object of the class.
	obj.fun();
	obj.cal();
	obj.cal(10,5); // arguments
	obj.mul();
	obj.div();
}
