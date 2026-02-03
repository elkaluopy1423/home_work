import 'dart:io';

void main() {
  List<int> numbers = [];

  // Let the user enter 5 numbers
  for (int i = 1; i <= 5; i++) {
    stdout.write("Enter number $i: ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  // Find largest and smallest
  int largest = numbers[0];
  int smallest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
    if (numbers[i] < smallest) {
      smallest = numbers[i];
    }
  }

  // Calculate difference
  int difference = largest - smallest;

  // Print results
  print("Largest number = $largest");
  print("Smallest number = $smallest");
  print("Difference = $difference");
}
