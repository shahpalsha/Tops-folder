#include<iostream>
using namespace std;
class Circle{
	private:
		float radius,pi=3.14,area,cir;
		
	public:
		show() // take a input
		{
			cout<<"Enter the radius : "<<endl;
			cin>>radius;
		}
		areaofcircle() // function of area of the circle
		{
			area=2*pi*radius; // condition of area of circle
			cout<<"Area of Circle: "<<area<<endl;
		}
		areaofcircumference() // function of area of the circumference
		{
			cir=pi*radius*radius; // condition of area of circumference
			cout<<"Circumference of Circle: "<<cir;
		}
};
main()
{
	Circle obj; // Create an object of class Circle
	obj.show(); // call the show function
	obj.areaofcircle(); // call the area of circle function
	obj.areaofcircumference(); // call the area of circumference function
}
