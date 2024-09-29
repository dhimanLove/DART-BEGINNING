import 'dart:io';

main() {
  List Saman = [];

  while (true) {
    print('Choose karo :');
    print('1. Add krna hai ?');
    print('2. Remove karna hai ?');
    print('3. List me kuch dhundna hai ?');
    print('4. Show kru sab ?');
    print('5. Kam khatam ?');
    print('Ek choose krna (1-5):');

    String? choice = stdin.readLineSync();

    if (choice == '1') {
      print('Kya add kru =');
      String? item = stdin.readLineSync();
      if (item != null && item.isNotEmpty) {
        Saman.add(item);
        print('$item Added ;)');
      }
    } else if (choice == '2') {
      print('Kya nikalu :|');
      String? item = stdin.readLineSync();
      if (Saman.remove(item)) {
        print('$item removed :/ ');
      } else {
        print('$item object ni mila -_- .');
      }
    } else if (choice == '3') {
      print('Kya Dhundu =');
      String? item = stdin.readLineSync();
      if (Saman.contains(item)) {
        print('$item Lo mil gya ');
      } else {
        print('$item ni mila -_- .');
      }
    } else if (choice == '4') {
      print('Saman: ${Saman.join(', ')}');
    } else if (choice == '5') {
      print(' Tuc Mat Jao :{ ');
      break;
    } else {
      print('Bro Range se Bahr :( ');
    }
  }
}
