import 'dart:io';

class Note {
  String title;
  String content;
  DateTime
  createdAt; // Add a createdAt field to store the creation time of the note

  Note(this.title, this.content) : createdAt = DateTime.now();

  void display() {
    print("\nTitle: $title");
    print("Content: $content");
    print("Created At: $createdAt");
  }
}

class NotesApp {
  List<Note> _notes = [];

  void addNote() {
    print("Enter note title:");
    String? title = stdin.readLineSync();

    print("Enter note content:");
    String? content = stdin.readLineSync();

    if (title == null || title.isEmpty || content == null || content.isEmpty) {
      print("Invalid input. Note not added.\n");
      return;
    }

    _notes.add(Note(title, content));
    print("Note added successfully!\n");
  }

  void listNotes() {
    if (_notes.isEmpty) {
      print("No notes available.\n");
      return;
    }

    for (var note in _notes) {
      note.display();
    }
  }

  void searchNote() {
    print("Enter title to search:");
    String? searchTitle = stdin
        .readLineSync(); // Read user input for the title to search

    if (searchTitle == null || searchTitle.isEmpty) {
      print("Invalid title.\n");
      return;
    }

    bool found = false;

    for (var note in _notes) {
      if (note.title.toLowerCase() == searchTitle.toLowerCase()) {
        // Case-insensitive search
        note.display();
        found = true;
      }
    }

    if (!found) {
      print("Note not found.\n");
    }
  }

  void deleteNote() {
    print("Enter title to delete:");
    String? deleteTitle = stdin.readLineSync();

    if (deleteTitle == null || deleteTitle.isEmpty) {
      //  Check for null or empty input
      print("Invalid title.\n");
      return;
    }

    _notes.removeWhere(
      (note) => note.title.toLowerCase() == deleteTitle.toLowerCase(),
    ); // Case-insensitive deletion

    print("If the note existed, it was deleted.\n");
  }
}

void main() {
  NotesApp app = NotesApp();

  while (true) {
    print("==== Notes App ====");
    print("1. Add Note");
    print("2. List Notes");
    print("3. Search Note");
    print("4. Delete Note");
    print("5. Exit");
    print("Choose an option:");

    String? choice = stdin.readLineSync();

    switch (choice) {
      // Use switch-case for better readability

      case '1':
        app.addNote(); // Call the addNote method when the user selects option 1
        break;
      case '2':
        app.listNotes(); // Call the listNotes method when the user selects option 2
        break;
      case '3':
        app.searchNote(); // Call the searchNote method when the user selects option 3
        break;
      case '4':
        app.deleteNote(); // Call the deleteNote method when the user selects option 4
        break;
      case '5':
        print("Goodbye !"); // Print a goodbye message before exiting
        return;
      default:
        print(
          "Invalid choice. Try again.\n",
        ); // Handle invalid input and prompt the user to try again
    }
  }
}
