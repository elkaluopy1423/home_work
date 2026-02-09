class NumberCheck {
  int value;

  NumberCheck(this.value);

  bool isEven() {
    return value % 2 == 0;
  }
}

void main() {
  NumberCheck num = NumberCheck(10);

  print("Is the number even? ${num.isEven()}");
}
