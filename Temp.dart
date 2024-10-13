import 'dart:io';

main() {
  print("Enter temperature (e.g., 30C or 86F):");
  var input = stdin.readLineSync()!.toUpperCase();

  if (input.endsWith('C')) {
    // Convert Celsius to Fahrenheit
    var tempc = double.parse(input.substring(0, input.length - 1));
    var fahrenheit = (tempc * 9 / 5) + 32;
    print("$tempc°C is $fahrenheit°F");

  } else if (input.endsWith('F')) {
    // Convert Fahrenheit to Celsius
    var tempf = double.parse(input.substring(0, input.length - 1));
    var celsius = (tempf - 32) * 5 / 9;
    print("$tempf°F is $celsius°C");
    
  } else {
    print("Invalid input! Please use 'C' for Celsius or 'F' for Fahrenheit.");
  }
}