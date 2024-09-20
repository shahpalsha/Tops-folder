// Write a C++ Program display Student Mark sheet using Multiple inheritance

#include<iostream>
using namespace std;
class Stu_dtl		// parent class
{
	public:
		
		string nm;
		int roll_n;
		
	public:
		
		detail()
		{
			cout<<"Enter the name of the student:";
			cin>>nm;
			cout<<"Enter the roll number:";
			cin>>roll_n;
		}
		display()
		{
			cout<<endl<<"Student name is : "<<nm<<endl;
			cout<<"Student roll-no. : "<<roll_n<<endl;
		}
};


class Stu_sub	// parent class
{
	public:
		int m,s,e,total,pr;
		subject()
		{
			cout<<"Enter the maths number:";
			cin>>m;
			cout<<"Enter the science number:";
			cin>>s;
			cout<<"Enter the english number:";
			cin>>e;
			
			total=m+s+e;
			pr=total/3;
		}
		display1()
			{
				cout<<"Maths marks : "<<m<<endl;
				cout<<"Science marks : "<<s<<endl;
				cout<<"English marks : "<<e<<endl;
				cout<<"Total is :"<<total<<endl;
				cout<<"Percentage is :"<<pr<<"%"<<endl;
			}
};


class Stu_mrks:public Stu_dtl,public Stu_sub  //child class
{
	public:
		marks()
		{
			if(pr>70)
			{
				cout<<"Destriction"<<endl;
			}
			else if(pr>60)
			{
				cout<<"First class"<<endl;
			}
			else if(pr>50)
			{
				cout<<"Second class"<<endl;
			}
			else if(pr>40)
			{
				cout<<"Pass"<<endl;
			}
			else
			{
				cout<<"Fail.!!";
			}
		}
};
main()
{
	Stu_mrks obj; // called the object of the child class.
	obj.detail();
	obj.subject();
	obj.display();
	obj.display1();
	obj.marks();
}
