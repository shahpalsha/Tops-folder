#include<iostream>
using namespace std;
class Person{
	private:
		int age;
		string nm,country;
	public:
		get()  // get the value
		{
			cout<<"Enter the Age : ";
			cin>>age;
			cout<<"Enter the name : ";
			cin>>nm;
			cout<<"Enter the country name : ";
			cin>>country;
		}
		set() // set the value
		{
			cout<<"Age is : "<<age<<endl;
			cout<<"Name is : "<<nm<<endl;
			cout<<"Country name is : "<<country;
		}
};
main()
{
	Person obj; // create the object of class
	obj.get(); 
	obj.set();
}
