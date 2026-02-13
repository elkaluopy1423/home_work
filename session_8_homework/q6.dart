// used chatgpt to remember stack

bool isValid(String bracketsString) {
  List<String> stack = [];

  Map<String, String> bracketPairs = {')': '(', '}': '{', ']': '['};

  for (int i = 0; i < bracketsString.length; i++) {
    String char = bracketsString[i];

    // لو فتح قوس ➜ حطه في الستاك
    if (char == '(' || char == '{' || char == '[') {
      stack.add(char);
    }
    // لو قوس اغلاق
    else if (char == ')' || char == '}' || char == ']') {
      if (stack.isEmpty || stack.last != bracketPairs[char]) {
        return false; // القوس مغلق غلط
      }
      stack.removeLast(); // القوس صح ➜ شيل من الستاك
    }
  }

  // لو الستاك فاضي ➜ كل الأقواس صح
  return stack.isEmpty;
}

void main() {
  List<String> testCases = ["()", "()[]{}", "(]", "([)]", "{[]}"];

  for (var s in testCases) {
    print("'$s' is ${isValid(s) ? "Valid" : "Invalid"}");
  }
}
