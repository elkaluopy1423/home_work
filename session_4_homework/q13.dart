void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];

  // خريطة لتخزين التكرار
  Map<String, int> counts = {};

  for (String name in names) {
    if (counts.containsKey(name)) {
      counts[name] = counts[name]! + 1; // زوّد العدد لو الاسم موجود
    } else {
      counts[name] = 1; // اضف الاسم لأول مرة
    }
  }

  // طباعة الأسماء اللي تكررت أكثر من مرة
  counts.forEach((name, count) {
    if (count > 1) {
      print("$name appears $count times");
    }
  });
}
