// Write a program you have to print the Fibonacci series up to user given number. 

import 'dart:io';

void main()
{

  print('Enter the number:');
  int n=int.parse(stdin.readLineSync()!);

  int i,n1=0,n2=1;
  print(n1);
  print(n2);

  for(i=3;i<=n;i++)
  {
    int n3=n1+n2;
    print(n3);

    n1=n2;
    n2=n3;
    
  }
}