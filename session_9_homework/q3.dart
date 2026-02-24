/*3. Unique Visitor Counter
You are building a mobile app that tracks unique visitors per day.
- Each visitor is identified by an ID (an integer).
- During the day, the app receives many repeated IDs (because the same user may open the app
multiple times).
- You need to count how many unique visitors used the app today.
Write code that, given a list of visitor IDs, returns the number of unique visitors.*/

import 'dart:io';

class UniqueVisitorCounter {
  Set<int> _uniqueVisitors = {};

  void addVisitor(int id) {
    _uniqueVisitors.add(id); // Using a Set to automatically handle duplicates
  }

  int getUniqueVisitorCount() {
    return _uniqueVisitors
        .length; // The size of the Set gives the count of unique visitors
  }
}

void main() {
  UniqueVisitorCounter counter = UniqueVisitorCounter();

  print("Enter visitor IDs (comma separated):");
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    List<String> idStrings = input.split(',');
    for (var idStr in idStrings) {
      int? id = int.tryParse(idStr.trim());
      if (id != null) {
        counter.addVisitor(id);
      } else {
        print("Invalid ID: $idStr. Skipping.");
      }
    }
  }

  print("Number of unique visitors today: ${counter.getUniqueVisitorCount()}");
}
