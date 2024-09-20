#include<iostream>
using namespace std;

class Cal{
    public:
        int a,b;

        // Function to take input
        show() {
            cout<<"Enter the value of a : ";
            cin>>a;
            cout<<"Enter the value of b : ";
            cin>>b;
        }

        // Function to add a and b
        add() 
		{
            cout<<"Addition is : "<<a+b<<endl;    
        }

        // Function to subtract b from a
        sub() 
		{
            cout<<"Subtraction is : "<<a-b<<endl;
        }

        // Function to multiply a and b
        mul() 
		{
            cout<<"Multiplication is : "<<a*b<<endl;
        }

        // Function to divide a by b
        div() 
		{
            cout<<"Division is: "<<a/b;
        }
};

main() 
{
    Cal obj;    // Create an object of class Cal
    obj.show(); // Call the show function to input values
    obj.add();  // Call the add function
    obj.sub();  // Call the sub function
    obj.mul();  // Call the mul function
    obj.div();  // Call the div function
}

