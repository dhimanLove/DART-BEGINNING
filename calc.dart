import 'dart:io';

void main() {
  while (true) {
    print(' \n    \"Calculation me alas ? , Mai hu na \" \n');
    print("1" " Add kru ?");
    print("2" " Substract kru ?");
    print("3" " Multiply kru ?");
    print("4" " Divide kru ?");
    print('5 Exit');
    stdout.write(" \n    \" Bol kya evaluate kru in dono numbers se ? \" \t \n");

    String? choice = stdin.readLineSync();

    if (choice == '5') {
      print('Acha Chalta hu Doosri calculation me yad krna !');
      break;
    }

    double num1 = getNumber("Chal First Number Dal  ");
    double num2 = getNumber('Ab Second Dal  ');

    switch (choice) {
      case '1':
        print('Result: ${add(num1, num2)}');
        break;
      case '2':
        print('Result: ${subtract(num1, num2)}');
        break;
      case '3':
        print('Result: ${multiply(num1, num2)}');
        break;
      case '4':
        if (num2 != 0) {
          print('Result: ${divide(num1, num2)}');
        } else {
          print('Zero se Division karega ?');
        }
        break;
      default:
        print('Dobara Try Kar');
    }

    print(''); // Print a new line for better readability
  }
}

double getNumber(String prompt) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    try {
      return double.parse(input!);
    } catch (e) {
      print('Bhai Range ke Bahr hai !');
    }
  }
}

double add(double a, double b) => a + b;

double subtract(double a, double b) => a - b;

double multiply(double a, double b) => a * b;

double divide(double a, double b) => a / b;
