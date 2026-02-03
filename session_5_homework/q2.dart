import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);

  int count = 0;

  print("Odd numbers between 1 and $n:");

  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) {
      print(i);
      count++;
    }
  }

  print("Total odd numbers = $count");
}
