void main() {
  dynamic name = "Alice";
  name = 123;
  print(name); // Output: 123
}

//Why does this error occur?
//because :
//1.The variable name is declared with the type String.
//2.In Dart a variable can't be assigned a value of a different type.
//3. 123 is an  (int), not a String.
