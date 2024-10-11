// Write a program to print the number in reverse order. 

import 'dart:io';

void main()
{
  print('Enter a number:');
  int num = int.parse(stdin.readLineSync()!);

  print('The number in reverse order is:');
  
  while (num > 0)
   {
    int digit = num % 10; // Get the last digit
    print(digit); // Print the last digit
    num = num ~/ 10; // Remove the last digit from the number
  }
}

