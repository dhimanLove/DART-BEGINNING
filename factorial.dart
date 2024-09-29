import 'dart:io';

void main() {
  print('Enter a positive integer:');
  String? input = stdin.readLineSync();

  if (input != null) {
    int number = int.parse(input);

    if (number < 0) {
      print('Please enter a positive integer.');
    } else {
      int factorial = 1;

      for (int i = 1; i <= number; i++) {
        factorial *= i;
      }

      print('The factorial of $number is $factorial');
    }
  }
}
