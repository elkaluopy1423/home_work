import 'dart:io';

void main() {
  stdout.write("Enter a sentence: ");
  String sentence = stdin.readLineSync()!;

  // Split sentence into words
  List<String> words = sentence.trim().split(RegExp(r'\s+'));
  // trim() -> removes leading and trailing whitespace
  // split the sentence into words using whitespace as a delimiter (handles multiple spaces)

  print("Number of words: ${words.length}");

  String shortest = words[0];
  String longest = words[0];

  for (String word in words) {
    if (word.length < shortest.length) {
      shortest = word;
    }
    if (word.length > longest.length) {
      longest = word;
    }
  }

  print("Shortest word: $shortest");
  print("Longest word: $longest");
}
