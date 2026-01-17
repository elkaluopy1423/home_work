//Both var and dynamic are used to declare variables, but they behave differently.

// var:
//1.The type is inferred once at compile time.
//2.After initialization, the variable cannot change its type.

void main() {
  var age = 20; // inferred as int
  age = 25; // correct because it's the same type
  age = "twenty"; //  error because we can't change type

  // dynamic:
  //1.The type is checked at runtime, not compile time.
  //2.The variable can change its type.

  dynamic value = 10;
  value = "Dart"; //  correct because type can change
  value = true; // also correct
  print(value); // Output: true
}
