/*
num:
1.num is a general numeric type.
2.it can hold both integers (int) and floating numbers (double).
3.useful when you don’t know if the number will be whole or decimal.
*/

void main() {
  num number1 = 10; // int
  num number2 = 15.5; // double

  print(number1); // Output: 10
  print(number2); // Output: 15.5

  /*double:
1.double can only hold decimal numbers (floating-point numbers).
2.Cannot store integers unless they are written as a decimal (e.g., 10.0).
*/
  double decimalNumber = 20.75;
  print(decimalNumber); // Output: 20.75
}
