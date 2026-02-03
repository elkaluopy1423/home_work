import 'dart:io';

void main() {
  stdout.write("Enter first number: ");
  double n1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  double n2 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter third number: ");
  double n3 = double.parse(stdin.readLineSync()!);

  double sum = n1 + n2 + n3;
  double average = sum / 3;

  print("Sum = $sum");
  print("Average = $average");

  if (average > 50) {
    print("The average is greater than 50");
  } else {
    print("The average is NOT greater than 50");
  }
}
