import 'dart:io';

void main() {
  List<int> numbers = [];

  for (int i = 1; i <= 6; i++) {
    stdout.write("Enter number $i: ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  // Initialize largest and second largest with the first element of the list
  int largest = numbers[0];
  int secondLargest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      secondLargest = largest;
      largest = numbers[i];
      // Update second largest before updating largest
      // This ensures that secondLargest holds the previous largest value
      // when a new largest is found
    } else if (numbers[i] > secondLargest && numbers[i] != largest) {
      secondLargest = numbers[i];
    }
  }

  print("Largest number: $largest");
  print("Second largest number: $secondLargest");
}
