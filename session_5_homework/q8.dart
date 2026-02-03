import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  int sum = 0;
  int largest = 0;

  int temp = number; // عشان نشتغل على نسخة من الرقم

  while (temp > 0) {
    int digit = temp % 10; // آخر رقم
    sum += digit;
    if (digit > largest) {
      largest = digit;
    }
    temp = temp ~/ 10; // إزالة آخر رقم
  }

  print("Sum of digits = $sum");
  print("Largest digit = $largest");
}
