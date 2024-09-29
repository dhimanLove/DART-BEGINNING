 import 'dart:io';

main(){
      print("enter 1");
      int num1 = int.parse(stdin.readLineSync()!);

      if(num1%2==0){
        print("it's even");

      }
      else if (num1%2!=0) {
        print("Odd");
      }
 }