void main() {
  List<String> animals = ['Cat', 'Dog', 'Lion'];

  animals.add('Tiger'); // add a new animal
  animals.removeLast(); // remove the last animal
  animals[1] = 'Elephant'; // update the second element

  print(animals.first);
  print(animals.last);
  print(animals.length);
  print(animals[1]);
}
