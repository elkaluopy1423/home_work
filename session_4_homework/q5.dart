void main() {
  String text = 'EGP 12.50';

  String numberPart = text.substring(4);

  double value = double.parse(numberPart);

  print(value);
}
