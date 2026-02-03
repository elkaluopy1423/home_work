import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);

  int sum = 0;

  // Print multiplication table and calculate sum
  for (int i = 1; i <= 10; i++) {
    int result = n * i;
    print("$n x $i = $result");
    sum += result;
  }

  print("Sum of multiplication table results = $sum");
}
