// Write a C++ Program to illustrates the use of Constructors in multilevel inheritance.

#include<iostream>
using namespace std;

// Base class
class Grandparent {
    public:
        Grandparent() 
		{
            cout<<"Grandparent constructor called."<<endl;
        }
};

// Derived class from Grandparent
class Parent :public Grandparent{
    public:
        Parent()
		{
            cout<<"Parent constructor called."<<endl;
        }
};

// Derived class from Parent
class Child :public Parent{
    public:
        Child() 
		{
            cout<<"Child constructor called."<<endl;
        }
};

main() 
{
    Child obj;  // Creating an object of the Child class
}


