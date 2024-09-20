// Assume that the test results of a batch of students are stored in three 
// different classes. Class Students are storing the roll number. Class Test 
// stores the marks obtained in two subjects and class result contains the 
// total marks obtained in the test. The class result can inherit the details 
// of the marks obtained in the test and roll number of students. 
// Multilevel Inheritance)




#include<iostream>
using namespace std;

class Student{ // grandparent class
	public:
		int roll_no;
		detail()
		{
			cout<<"Enter the roll no. : ";
			cin>>roll_no;
		}
};
class Test:public Student{ // parent class
	public:
		int fop,sad;
		sub()
		{
			cout<<"Enter the fop marks : ";
			cin>>fop;
			cout<<"Enter the sad marks : ";
			cin>>sad;
		}
};
class Result:public Test{ // child class
	public:
		int total;
		marks()
		{
			total=fop+sad;
		}
		display()
		{
			cout<<endl<<"Roll no. is : "<<roll_no<<endl;
			cout<<"FOP marks : "<<fop<<endl;
			cout<<"SAD marks : "<<sad<<endl;
			cout<<"Total is : "<<total;
		}
};
main()
{
	Result obj;
	obj.detail();
	obj.sub();
	obj.marks();
	obj.display();
}
