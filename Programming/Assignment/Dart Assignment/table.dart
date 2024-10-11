// Write a program you have to print the table of given number.

import 'dart:io';

void main() 
{
  print('Enter a number:');
  int num = int.parse(stdin.readLineSync()!);

  print('Multiplication Table of $num:');

  for (int i=1;i<=10;i++)
   {
    print('$num * $i = ${num * i}');
  }
}
