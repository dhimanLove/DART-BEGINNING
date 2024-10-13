import 'dart:io';
import 'dart:math';

void main() {
  // Generate a random number between 1 and 100
  var random = Random();
  int number = random.nextInt(100) + 1; 
  int attempts = 5; // Number of attempts

  print("Guess the number between 1 and 100! You have 5 attempts.");

  for (int i = 0; i < attempts; i++) {
    stdout.write("Enter your guess: ");
    int? guess = int.tryParse(stdin.readLineSync()!); // Get user input

    if (guess == null) {
      print("Please enter a valid number.");
      continue;
    }

    if (guess == number) {
      print("Congratulations! You guessed it right!");
      break;
    } else if (guess < number) {
      print("Too low!");
    } else {
      print("Too high!");
    }
  }

  print("The number was $number.");
}
