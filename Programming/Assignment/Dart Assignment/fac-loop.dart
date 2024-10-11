// Write a program you have to find the factorial of given number.

import 'dart:io';

void main()
{

  print('Enter the number:');
  int n=int.parse(stdin.readLineSync()!);
  

  int fac=1,i;

  for(i=1;i<=n;i++)
  {
    fac = fac*i;
    
  }
  print('Factorial is : ');
  print(fac);
}