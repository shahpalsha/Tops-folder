#include<iostream>
using namespace std;
class Rectangle{
	private:
		float area,perameter,l,w,lwsum;
		
	public:
		show() // take a input
		{
			cout<<"Enter the length : ";
			cin>>l;
			cout<<"Enter the Width : ";
			cin>>w;
		}
		area_rectangle() // function of area of rectangle
		{
			area=l*w; // condition
			cout<<"Area of rectangle: "<<area<<endl;
		}
		perameter_rectangle() // function of perameter of rectangle
		{
			lwsum=l+w;
			perameter=2*lwsum; // condition 
			cout<<"Perameter of rectangle: "<<perameter;
		}
};
main()
{
	Rectangle obj; // Create an object of class rectangle
	obj.show(); // call the show function
	obj.area_rectangle(); // call the area of rectangle function
	obj.perameter_rectangle(); // call the perameter of rectangle function
}
