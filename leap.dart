import 'dart:io';

void main() {
  print('Konsa Saal :');
  String? input = stdin.readLineSync();

  if (input != null) {
    int year = int.parse(input);

    if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {//ye hai || or oprator  python wala jisse ek true hona chiye .
      print('$year ye Leap Year hai');
    } else {
      print('$year ye Leap year nai hai');
    }
  } else {
    print('Theek input de bhai !!');
  }
}
