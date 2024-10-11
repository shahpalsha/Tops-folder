//  Write a Program of Addition, Subtraction ,Multiplication and 
// Division using Switch case.(Must Be Menu Driven) .

import 'dart:io';
void main()
{

  print('Enter the value of a:');
  int a=int.parse(stdin.readLineSync()!);

  print('Enter the value of b:');
  int b=int.parse(stdin.readLineSync()!);

  print('1.Addition');
  print('2.Subtraction');
  print('3.Multiplication');
  print('4.Division');

  print('Enter your choice:');
  int choice =int.parse(stdin.readLineSync()!);


  switch(choice)
  {
    case 1:
    {
      print('Addition is : ${a+b}');
      break;
    }
    case 2:
    {
      print('Subtraction is : ${a-b}');
      break;
    }
    case 3:
    {
      print('Multiplication is : ${a*b}');
      break;
    }
    case 4:
    {
      print('Division is : ${a/b}');
      break;
    }
    default:
    {
      print('Invalid choice!!');
    }
  }
}
