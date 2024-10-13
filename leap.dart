import 'dart:io';

void main() {
  // Infinite loop to keep asking for input until the user decides to exit
  while (true) {
    // Taking input from the user
    print('\n Enter a year (or type "exit" to quit) \n');
    String? input = stdin.readLineSync(); // By Default ye input ko as a string recognize krega .

    // If you want to leave then type EXIT
    if (input == 'exit') {
      print('Exiting the program 🙂');
      break; // Loop se exit 
    }

    try {
      int year = int.parse(input!); // ye yaha input ko  int me convert krne ki try kr rha hai , agar hamne input me sach me integer value dali hai to best hai .

      // Here we are checking ye yeal leap year hai ki nahiii
      if (year % 4 == 0) {
        if (year % 100 != 0 || year % 400 == 0) {
          print('$year is a leap year ✌️ 😄 ');
        } else {
          print('$year is not a leap year 🫤 ');
        }
      } else {
        print('$year is not a leap year.');
      }

    } catch (error) {
      // Checking if  (example = double and string etc .)
      if (double.tryParse(input!) != null) {
        print('Invalid: Input is a Decimal number  🫥 ');
      } else {
        print('Invalid: Input is not a number  😑 ');
      }
    }
  }
}