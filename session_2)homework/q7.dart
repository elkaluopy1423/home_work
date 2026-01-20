void main() {
  List<int> numbers = [4, 4, 5, 6, 6, 7];

  // Convert to a Set to remove duplicates
  Set<int> uniqueNumbers = numbers.toSet();
  print(uniqueNumbers);

  uniqueNumbers.add(8);
  print(uniqueNumbers);

  uniqueNumbers.remove(5);
  print(uniqueNumbers);

  print(uniqueNumbers.contains(6));
}
