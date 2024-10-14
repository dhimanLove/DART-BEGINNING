class Person {
  // Attributes
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Method to display info
  void Info() {
    print("Name: $name, Age: $age");
  }
}

void main() {
  // Creating an object of Person
  Person person1 = Person("Loveraj", 19);

  // Calling the method
  person1.Info();
}
