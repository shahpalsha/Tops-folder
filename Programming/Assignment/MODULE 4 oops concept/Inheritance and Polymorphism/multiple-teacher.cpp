// Create a class person having members name and age. Derive a class 
// student having member percentage. Derive another class teacher 
// having member salary. Write necessary member function to initialize, 
// read and write data. Write also Main function (Multiple Inheritance).

#include<iostream>
using namespace std;

class Person{ // parent class
	public:
		int age;
		string nm;
	write() // create a data
	{
		cout<<"Enter the age : ";
		cin>>age;
		
		cout<<"Enter the name : ";
		cin>>nm;
	}
		
};
class Student{ // parent class
	public:
		float per;
		percentage()
		{
			cout<<"Enter the percentage : ";
			cin>>per;
		}
};
class Teacher:public Person,public Student{ // child class // relationship between parent class and child class
	public:
		int sal;
		fun()
		{
			cout<<"Enter the salary : ";
			cin>>sal;
		}
		display()
		{
			cout<<endl<<"Age is : "<<age<<endl;
			cout<<"Name is : "<<nm<<endl;
			cout<<"Percentage is : "<<per<<endl;
			cout<<"Salary is : "<<sal;
		}
};
main()
{
	Teacher obj; // create the object of the child class
	obj.write(); // call the write function.
	obj.percentage();
	obj.fun();
	obj.display();
}
