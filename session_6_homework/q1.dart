class Calculator {
  int num1;
  int num2;

  Calculator(this.num1, this.num2);
  // Method to add the two numbers and print the result
  void addNumbers() {
    int sum = num1 + num2;
    print("Sum = $sum");
  }
}

void main() {
  Calculator calc = Calculator(5, 7);

  calc.addNumbers();
}
