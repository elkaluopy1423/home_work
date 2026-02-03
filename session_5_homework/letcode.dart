bool isPalindrome(String s) {
  // 1) convert to lowercase
  s = s.toLowerCase();

  // 2) remove non-alphanumeric characters
  s = s.replaceAll(RegExp(r'[^a-z0-9]'), '');

  // 3) reverse the cleaned string
  String reversed = s.split('').reversed.join('');

  // 4) compare original with reversed
  return s == reversed;
}

void main() {
  print(isPalindrome("A man, a plan, a canal: Panama")); // true
  print(isPalindrome("race a car")); // false
  print(isPalindrome(" ")); // true
}
