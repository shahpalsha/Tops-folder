// Write a program to find the Max number from the given three
//number using Ternary Operator
import 'dart:io';

void main(){
    print('Enter the number:');
    int n1 = int.parse(stdin.readLineSync()!);

    print('Enter the number:');
    int n2 = int.parse(stdin.readLineSync()!);

    print('Enter the number:');
    int n3 = int.parse(stdin.readLineSync()!);

    (n1>n2 && n1>n3)?print('N1 is Max.'):
    (n2>n3)?print('N2 is Max.'):print('N3 is Max.');
    
}