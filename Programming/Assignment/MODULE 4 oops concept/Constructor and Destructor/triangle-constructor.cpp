//Write a C++ program to create a class called Triangle that has private member variables for the lengths of
//its three sides.Implement member functions to determine if the triangle is equilateral,isosceles or scalene

#include<iostream>
using namespace std;
class Triangle{ // class
	private:
		int n,n1,n2;
	public:
		Triangle() // constructor 
		{
			cout<<"Enter the first side : ";
			cin>>n;
			
			cout<<"Enter the second side : ";
			cin>>n1;
			
			cout<<"Enter the third side : ";
			cin>>n2;
		}
		
		result()
		{
			if(n==n1 && n1==n2)
			{
				cout<<"It is a equilateral.";
			}
			else if(n==n1 || n==n2 || n1==n2)
			{
				cout<<"It is a isosecles";
			}
			else
			{
				cout<<"It is a scalene.";
			}
		}
};
main()
{
	Triangle obj; // when object of class called so constructor itself called.
	obj.result();
}
