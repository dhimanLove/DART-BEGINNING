import 'dart:io';

main(){
  var num1=int.parse(stdin.readLineSync()!);
  var num2=int.parse(stdin.readLineSync()!);
  
  var add=num2+num1;
  var sub=num1-num2;
  var prod=num1*num2;
  var div=num1/num2;

  print("addition is ");print(add);
  print("Substraction is ");print(sub);
  print("Product is ");print(prod);
  print("Division is ");print(div);
}