#include<iostream>
using namespace std;

class Bank{
	public:
		int balance=5000,de,we,acc_no;
		string nm,acc_type;
		create() // create the bank account
		{
			cout<<"Enter the name: ";
			cin>>nm;
			
			cout<<"Enter account number : ";
			cin>>acc_no;
			
			cout<<"Enter account type : ";
			cin>>acc_type;
			
			fflush(stdin);
			cout<<"Your banalce : "<<balance<<endl; 
			this->balance=balance;
		}
		deposite() // deposit the ammount
		{
			cout<<"Enter your deposite amount : ";
			cin>>de;
			
			this->de=de; // use this operator to binding the data with the help of encapsulation
			
			this->balance=this->balance+this->de;
		}
		withdraw() // withdraw the ammount
		{
			cout<<"Enter your withdraw amount : ";
			cin>>we;
			
			this->we=we;
			
			if(we>this->balance)
			{
				cout<<"Amount is Insuficient.";
			}
			else
			{
				this->balance=this->balance-this->we;
			}
			
		}
		bal() // show the current balance
		{
			cout<<"Name is : "<<nm<<endl;
			cout<<"Your current balance : "<<this->balance;
		}
};
main()
{
	Bank obj; // create the object of class
	
	cout<<"Press 1 for opening account."<<endl; // create the menu
	cout<<"press 2 for Exit."<<endl;
	
	int ch;
	
	cout<<"Enter your choice : ";
	cin>>ch;
	
	if(ch==1)
	{
		obj.create();
		while(1)
		{
			
			
		cout<<"Press 1 for deposite account."<<endl;
		cout<<"Press 2 for withdraw amount."<<endl;
		cout<<"Press 3 for show your balance amount."<<endl;
		cout<<"Press 4 for exiting."<<endl;
		
		int ch1;
		
		cout<<"Enter your choice : ";
		cin>>ch1;
		
		
		
			if(ch1==1)
			{
				obj.deposite();
			}
			else if(ch1==2)
			{
				obj.withdraw();
			}
			else if(ch1==3)
			{
				obj.bal();
			}
			else if(ch1==4)
			{
				cout<<"Thank you!!";
			}
			else
			{
				cout<<"Invalid choice!!";
			}
		}	
	}
	else
	{
		cout<<"Thank you!!";
	}
}
