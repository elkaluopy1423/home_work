import 'dart:io';

void main() {
  stdout.write("Enter a short sentence: ");
  String sentence = stdin.readLineSync()!;

  // Count words
  // Regular expression to handle multiple spaces
  List<String> words = sentence.trim().split(RegExp(r'\s+'));
  int wordCount = words.length;

  // Count characters excluding spaces
  int charCount = sentence.replaceAll(' ', '').length;

  print("Number of words: $wordCount");
  print("Number of characters (excluding spaces): $charCount");
}
