// Write a programto swap the two numbers using friend function without using third variable.

#include<iostream>
using namespace std;
class Swap{
	private:
		int a,b;
			
		friend class Result;
};
class Result{
	public:
		fun(Swap & obj)
		{
			cout<<"Enter the a value of a : ";
			cin>>obj.a;
			
			cout<<"Enter the a value of b : ";
			cin>>obj.b;
			
			cout<<endl<<"Before swapping = "<<"a : "<<obj.a<<","<<" b : "<<obj.b<<endl;
			
			obj.a=obj.a+obj.b;
			obj.b=obj.a-obj.b;
			obj.a=obj.a-obj.b;
			
	 		cout<<endl<<"After swapping = "<<"a : "<<obj.a<<","<<" b : "<<obj.b;
		}
};
main()
{
	Swap obj;
	Result obj1;
	obj1.fun(obj);
}
