import 'dart:io';

void main() {
  stdout.write("Enter a sentence: ");
  String sentence = stdin.readLineSync()!;

  // Split sentence into words
  List<String> words = sentence.toLowerCase().split(RegExp(r'\s+'));

  Map<String, int> wordCount = {};

  // Count occurrences of each word
  for (String word in words) {
    wordCount[word] = (wordCount[word] ?? 0) + 1;
  }

  print("Words that appear only once:");
  int uniqueCount = 0;

  for (var entry in wordCount.entries) {
    if (entry.value == 1) {
      print(entry.key);
      uniqueCount++;
    }
  }

  print("Total unique words: $uniqueCount");
}
