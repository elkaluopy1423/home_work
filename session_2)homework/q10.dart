void main() {
  dynamic value = 10;
  print(value);

  value = "Hello";
  print(value);

  var number = 5;
  print(number);
  // number = "Hi";      //  This will cause an error because var type is fixed (int)

  var greeting = 'Hi';
  greeting = 'Hello there'; // correct , same type (String)
  print(greeting);

  num pi = 3.14159;
  print(pi.toInt());
  print(pi.toStringAsFixed(3));
}
