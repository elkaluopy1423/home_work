class Car {
  String brand;
  int modrlYear;
  Car(this.brand, this.modrlYear);

  void displayInfo() {
    print("Car Brand: $brand, Model Year: $modrlYear");
  }
}

void main() {
  Car myFirstCar = Car("suzuki", 1995);
  Car mySecondCar = Car("Hyundai", 2010);

  myFirstCar.displayInfo();
  mySecondCar.displayInfo();
}
