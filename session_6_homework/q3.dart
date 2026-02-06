class Person {
  String name;
  int age;

  Person(this.name, this.age);
  // Method to display person's information with an optional title parameter
  void displayInfo([String title = "Person details:"]) {
    print("$title"); // Optional title parameter with default value
    print("Name: $name, Age: $age"); // Display person's information
  }
}

void main() {
  Person person1 = Person("Omar", 23);
  person1.displayInfo();
  person1.name = "Elkaluopy";
  person1.age = 24;
  person1.displayInfo(
    "person1 updated details is:",
  ); // Display updated information with a custom title
}
