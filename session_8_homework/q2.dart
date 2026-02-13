class Car {
  String _brand = "";
  int _year = 0;

  // Setter for brand
  set brand(String value) {
    if (value.isEmpty) {
      print("Invalid brand name!");
    } else {
      _brand = value;
    }
  }

  // Getter for brand
  String get brand => _brand;

  // Setter for year
  set year(int value) {
    if (value < 1886) {
      print("Invalid year! First car was invented in 1886.");
    } else {
      _year = value;
    }
  }

  // Getter for year
  int get year => _year;
}

void main() {
  //  Valid Car
  Car car1 = Car();
  car1.brand = "Toyota";
  car1.year = 2022;

  print("Car 1:");
  print("Brand: ${car1.brand}");
  print("Year: ${car1.year}");

  //  Invalid Car
  Car car2 = Car();
  car2.brand = ""; // invalid brand
  car2.year = 1700; // invalid year

  print("Car 2:");
  print("Brand: ${car2.brand}");
  print("Year: ${car2.year}");
}
