class Book {
  String _title = "";
  int _pages = 0;

  set title(String value) {
    if (value.isEmpty) {
      print("Invalid title");
    } else {
      _title = value;
    }
  }

  String get title => _title;

  set pages(int value) {
    if (value <= 0) {
      print("Invalid number of pages");
    } else {
      _pages = value;
    }
  }

  // Computed getter (2 minutes per page)
  int get readingTime => _pages * 2;
}

void main() {
  Book book = Book();

  book.title = "Clean Code";
  book.pages = 300;

  print("Book Title: ${book.title}");
  print("Estimated Reading Time: ${book.readingTime} minutes");
}
