import 'dart:io';

void main() {
  stdout.write("Enter a word: ");
  String word = stdin.readLineSync()!;

  // Reverse the word
  String reversed = word.split('').reversed.join('');

  // Count vowels // vowels : a, e, i, o, u (both uppercase and lowercase)
  int vowelCount = 0;
  String vowels = "aeiouAEIOU";

  for (int i = 0; i < word.length; i++) {
    if (vowels.contains(word[i])) {
      vowelCount++;
    }
  }

  print("Reversed word: $reversed");
  print("Number of vowels: $vowelCount");
}
