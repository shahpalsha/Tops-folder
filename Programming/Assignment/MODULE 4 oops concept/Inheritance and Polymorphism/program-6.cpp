// Write a C++ Program to show access to Private Public and Protected using Inheritance.

#include<iostream>
using namespace std;

class Parent{
	
	private:
		int a,b;
		
	public:
		show()
		{
			cout<<"Enter the value of a : ";
			cin>>a;
			cout<<"Enter the value of b : ";
			cin>>b;
		}
		add()
		{
			cout<<"Addition is : "<<a+b<<endl;
		}
		sub()
		{
			cout<<"Subtraction is : "<<a-b<<endl;
		}
		protected:
		getA()
		{
			return a;
		}
		getB()
		{
			return b;
		}
		
};
class Child:public Parent{
	public:
	int n,m;
		mul()
		{
			n=getA();
			m=getB();
			cout<<"Multiple is : "<<n*m;
		}
};
main()
{
	Child obj;
	obj.show();
	obj.add();
	obj.sub();
	obj.mul();
}
