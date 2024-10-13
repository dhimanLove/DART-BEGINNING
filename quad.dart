import 'dart:math';
import 'dart:io';

void main() {
  // a, b, and c ki values enter kro
  print("Enter a:");
  double a = double.parse(stdin.readLineSync()!);

  print("Enter b:");
  double b = double.parse(stdin.readLineSync()!);

  print("Enter c:");
  double c = double.parse(stdin.readLineSync()!);

  // Discriminant calculate karo56Y7Y
  double discriminant = b * b - 4 * a * c;

  if (discriminant > 0) {
    // Two real solutions
    double root1 = (-b + sqrt(discriminant)) / (2 * a);
    double root2 = (-b - sqrt(discriminant)) / (2 * a);
    print("Two real solutions: $root1 and $root2");

  } else if (discriminant == 0) {
    // One real solution
    double root = -b / (2 * a);
    print("One real solution: $root");

  } else {
    // No real solution
    print("No real solutions, discriminant is negative.");
  }
}
