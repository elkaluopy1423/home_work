class Course {
  String title;
  int duration; // duration in months

  Course(this.title, {this.duration = 3});

  void printDetails() {
    print("Course Title: $title");
    print("Duration: $duration months");
  }
}

void main() {
  Course course1 = Course("Flutter Development");

  // Course with custom duration
  Course course2 = Course("Data Science", duration: 6);

  // Print both courses
  course1.printDetails();

  course2.printDetails();
}
