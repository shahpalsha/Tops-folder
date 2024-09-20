// Write a C++ program to implement a class called Employee that has 
// private member variables for name, employee ID, and salary. Include 
// member functions to calculate and set salary based on employee 
// performance. Using of constructor.

#include<iostream>
using namespace std;
class Employee{ // class
	private:
		string nm;
		int id,sal,pr_rt;
	public:
		Employee() // constructor
		{
			cout<<"Enter the name: ";
			cin>>nm;
			
			cout<<"Enter the Id: ";
			cin>>id;
			
			cout<<"Enter the salary: ";
			cin>>sal;
		}
		set() // rating of a salary
		{
			cout<<"Enter the performs rating : ";
			cin>>pr_rt;
			
			if(pr_rt>=90)
			{
				sal += sal*0.20;
			}	
			else if(pr_rt>=70)
			{
				sal += sal*0.10;
			}
			else if(pr_rt>=60)
			{
				sal += sal*0.05;
			}
			else
			{
				cout<<"Unstatisfied your performs.";
			}	
		}
		display() // print the details
		{
			cout<<"Employee name is : "<<nm<<endl;
			cout<<"Employee Id is : "<<id<<endl;
			cout<<"Employee  current salary is : "<<sal<<endl;
		}
};
main()
{
	Employee obj; // constructor is called itself when object of class is called.
	obj.set();
	obj.display();
}
