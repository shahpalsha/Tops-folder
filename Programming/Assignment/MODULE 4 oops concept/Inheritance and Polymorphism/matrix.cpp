// Write a Program of Two 1D Matrix Addition using Operator Overloading.

#include <iostream>
using namespace std;

class Matrix{
	public:
	int a[3],b[3],i;
    function()
        {
        	cout<<"Enter the elements : "<<endl;
        	for(i=0;i<3;i++)
        	{
        		cin>>a[i];
			}
		}
		functions()
        {
        	cout<<endl<<"Enter the elements : "<<endl;
        	for(i=0;i<3;i++)
        	{
        		cin>>b[i];
			}
		}
        display()
        {
        	cout<<"Display the element of a : ";
        	for(i=0;i<3;i++)
        	{
        		cout<<a[i]<<" ";
			}
        	cout<<endl<<"Display the element of b : ";
        	for(i=0;i<3;i++)
        	{
        		cout<<b[i]<<" ";
			}
			cout<<endl<<"Addition is : "<<endl;
			for(i=0;i<3;i++)
        	{
        		cout<<a[i]+b[i]<<" ";
			}
		}
};
main()
{
	int b[3];
	Matrix obj;
	obj.function();
	obj.functions();
	obj.display();
}
