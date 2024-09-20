#include<iostream>
using namespace std;

class Car
{
	private:
		string company, model;
		int year;
		
	public:
		get() // create car details using get method
		{
			cout<<"Enter Company Name : ";
			cin>>company;
			cout<<"Enter Model Name : ";
			cin>>model;
			cout<<"Enter Year : ";
			cin>>year;
		}
		
		set() // set the details
		{
			cout<<"Your Car's company is : "<<company<<endl;
			cout<<"Your Car's model is : "<<model<<endl;
			cout<<"Your Car's puchase year is : "<<year;
		}
};

main()
{
	Car obj; // call the object of class
	obj.get();
	obj.set();
}
