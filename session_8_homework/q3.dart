class Grade {
  int _score = 0;

  // Setter with validation
  set score(int value) {
    if (value >= 0 && value <= 100) {
      _score = value;
    } else {
      print("Invalid score");
    }
  }

  // Getter
  int get score => _score;

  // Computed getter
  bool get isPass => _score >= 50;
}

void main() {
  Grade student = Grade();

  // First update (valid)
  student.score = 40;
  print("Score: ${student.score}");
  print("Passed: ${student.isPass}");

  print("----------------");

  // Second update (valid)
  student.score = 75;
  print("Score: ${student.score}");
  print("Passed: ${student.isPass}");

  // Third update (invalid)
  student.score = 150; // invalid
  print("Score: ${student.score}");
  print("Passed: ${student.isPass}");
}
