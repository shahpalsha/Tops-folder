#include<iostream>
using namespace std;

class Function
{
	public: 
		int multiplication, cubic, num;
	show() // assign the value
	{
		cout<<"Enter number : ";
		cin>>num;
	}
	
	inline int mal() // inline function
	{
		multiplication = num * num;
	}
	
	inline int cub()
	{
		cubic = num * num * num;
	}
	
	result()
	{
		cout<<"Multiplication is : "<<multiplication<<endl;
		cout<<"Cubic is : "<<cubic;
	}
};

main()
{
	Function obj; // call object of function
	obj.show();
	obj.mal();
	obj.cub();
	obj.result();
}
