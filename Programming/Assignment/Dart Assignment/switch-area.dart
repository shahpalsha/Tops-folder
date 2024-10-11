// Write a program of to find out the Area of Triangle, Rectangle and 
// Circle using If Condition.(Must Be Menu Driven).

import 'dart:io';

void main()
{
  print('1.Area of Triangle.');
  print('2.Area of Rectangle.');
  print('3.Area of Circle.');

  print('Enter your choice:');
  int ch=int.parse(stdin.readLineSync()!);

  if(ch==1)
  {
    print('Enter the l:');
    double l =double.parse(stdin.readLineSync()!);

    print('Enter the b:');
    double b =double.parse(stdin.readLineSync()!);

    double area = 0.5 * l * b;

    print('Area of Triangle is $area');

  }
  else if(ch==2)
  {
    print('Enter the l:');
    double l =double.parse(stdin.readLineSync()!);

    print('Enter the b:');
    double b =double.parse(stdin.readLineSync()!);

    double area = l * b;

    print('Area of Rectangle is $area');
  }
  else if(ch==3)
  {
    print('Enter the r:');
    double r =double.parse(stdin.readLineSync()!);

    double area = 3.14 * r * r;

    print('Area of Circle is $area');
  }
  else if(ch==4)
  {
    print('Exit!!');
  }
  else
  {
    print('Invalid choice!!');
  }
}