void main() {
  int number = 6;
  int factorial = 1;

  for (int i = 1; i <= number; i++) {
    factorial *= i;
  }

  print(factorial);
}
