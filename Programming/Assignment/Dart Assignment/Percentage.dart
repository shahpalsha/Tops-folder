//Write a program user enter the 5 subjects mark. You have to make a 
//total and find the percentage. percentage > 75 you have to print 
//“Distinction” percentage > 60 and percentage <= 75 you have to 
//print “First class” percentage >50 and percentage <= 60 you have  to print 
//“Second class” percentage > 35 and percentage <= 50 you have to print 
//“Pass class” Otherwise print “Fail”.

import 'dart:io';
void main(){

  print('Enter the english marks:');
  int eng = int.parse(stdin.readLineSync()!);
  

  print('Enter the maths marks:');
  int maths = int.parse(stdin.readLineSync()!);
  

  print('Enter the s.s marks:');
  int ss = int.parse(stdin.readLineSync()!);
  

  print('Enter the Science marks:');
  int sci = int.parse(stdin.readLineSync()!);
 

  print('Enter the gujrati marks:');
  int guj = int.parse(stdin.readLineSync()!);
  
  print('English marks:$eng');
  print('Maths marks:$maths');
  print('S.S marks:$ss');
  print('Science marks:$sci');
  print('Gujarati marks:$guj');
  
  int total = eng+maths+ss+sci+guj; 
  
  print('Total = $total');
  
  double per = total/5;

  print('Percentage = $per%');
  
 if(per>75)
 {
  print('Distinction class!!');
 }
 else if(per>60 && per<=75)
 {
  print('First class!!');
 }
 else if(per>50 && per<=60)
 {
  print('Second class!!');
 }
 else if(per>35 && per<=50)
 {
  print('Pass!!');
 }
 else
 {
  print('Fail!!');
 }
}

