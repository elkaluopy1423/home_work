import 'dart:io';

void main() {
  print("Enter numbers separated by anything (space, comma, etc.):");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("No input provided!");
    return;
  }

  RegExp reg = RegExp(r'-?\d+'); // يلتقط أرقام صحيحة بما فيها السالبة
  List<int> numbers = reg
      .allMatches(input)
      .map((match) => int.parse(match.group(0)!))
      .toList();

  if (numbers.isEmpty) {
    print("No valid numbers entered!");
    return;
  }

  int maxNum = numbers.reduce((a, b) => a > b ? a : b);
  int minNum = numbers.reduce((a, b) => a < b ? a : b);
  int difference = maxNum - minNum;

  print("\nLargest number: $maxNum");
  print("Smallest number: $minNum");
  print("Difference: $difference");

  double average = numbers.reduce((a, b) => a + b) / numbers.length;
  print("Average: ${average.toStringAsFixed(2)}");

  List<int> aboveAverage = numbers.where((n) => n > average).toList();
  print("Numbers above average: $aboveAverage");

  int evenCount = numbers.where((n) => n % 2 == 0).length;
  int oddCount = numbers.where((n) => n % 2 != 0).length;

  print("Even numbers count: $evenCount");
  print("Odd numbers count: $oddCount");
}
