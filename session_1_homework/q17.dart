/*using the dynamic data type because :
1. It can hold any type of value
2. The type can change during execution
3. Type checking happens at runtime, not compile time*/

void main() {
  dynamic variable = "Omar Elkaluopy"; //now it's a string
  print(variable);

  variable = 42; // now it's an integer
  print(variable);
}
