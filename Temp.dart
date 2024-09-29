import 'dart:io';

main(){
  print("Enter Celcius");
  var tempc = double.parse(stdin.readLineSync()!);
  var celcius = (tempc * 9 / 5) + 32 ;
  print(celcius);

  print("Enter Farenheit");
  var tempf = double.parse(stdin.readLineSync()!);  
  var farenheit = (tempf - 32) * 5 / 9;
  print(farenheit);
}