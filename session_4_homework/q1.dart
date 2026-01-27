void main() {
  List<int> numbers = [5, 3, 5, 7, 3, 9];

  // removes duplicate numbers by Set
  Set<int> uniqueNumbers = numbers.toSet();

  print(uniqueNumbers); // الأرقام بدون تكرار
  print("Number of unique numbers: ${uniqueNumbers.length}");
}
