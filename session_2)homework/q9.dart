void main() {
  List<Map<String, dynamic>> students = [
    {'name': 'Ahmed', 'grade': 80},
    {'name': 'Sara', 'grade': 90},
  ];

  print(students[1]['grade']);

  int grade1 = students[0]['grade'];
  int grade2 = students[1]['grade'];

  double average = (grade1 + grade2) / 2;
  print(average);
}
