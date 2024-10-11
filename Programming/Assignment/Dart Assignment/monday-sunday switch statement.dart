// Write Program use switch statement. Display Monday to Sunday .

import 'dart:io';

void main()
{
  print('Enter your choice:');
  int day = int.parse(stdin.readLineSync()!);

  switch(day)
  {
    case 1:
    {
      print('Monday');
    }
    case 2:
    {
      print('Tuesday');
    }
    case 3:
    {
      print('Wensday');
    }
    case 4:
    {
      print('Thrusday');
    }
    case 5:
    {
      print('Friday');
    }
    case 6:
    {
      print('Saturday');
    }
    case 7:
    {
      print('Sunday');
    }
    default:
    {
      print('Invalid input!!');
    }
  }
    
}