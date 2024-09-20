// Write a program to find the max number from given two numbers using friend function.

#include<iostream>
using namespace std;
class Max{
	private:
		int a,b;
			
		friend class Result;
};
class Result{
	public:
		fun(Max & obj)
		{
			cout<<"Enter the a value of a : ";
			cin>>obj.a;
			
			cout<<"Enter the a value of b : ";
			cin>>obj.b;
			
			if(obj.a>obj.b)
			{
				cout<<endl<<"A is max.";
			}
			else
			{
				cout<<endl<<"B is max.";
			}
		}
};
main()
{
	Max obj;
	Result obj1;
	obj1.fun(obj);
}
