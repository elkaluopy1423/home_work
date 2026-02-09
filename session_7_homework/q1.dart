class City {
  String name;
  int population;

  City(this.name, this.population);

  void printDetails() {
    print("City Name: $name");
    print("Population: $population");
  }
}

void main() {
  City city1 = City("Cairo", 20000000);
  City city2 = City("Alexandria", 5500000);

  city1.printDetails();

  city2.printDetails();
}
