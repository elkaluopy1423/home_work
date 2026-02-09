import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  while (number >= 10) {
    // Continue until we get a single-digit number
    int sum = 0;

    while (number > 0) {
      sum += number % 10;
      number ~/= 10;
    }

    number = sum;
  }

  print("Final single-digit result: $number");
}
