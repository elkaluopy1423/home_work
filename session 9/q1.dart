class Vehicle {
  String _name;
  double _tankCapacity;
  double _baseConsumption; // liters per 100 km

  Vehicle(this._name, double tankCapacity, double baseConsumption)
    : _tankCapacity = tankCapacity,
      _baseConsumption = baseConsumption {
    if (tankCapacity <= 0 || baseConsumption <= 0) {
      print("Invalid data for $_name");
      _tankCapacity = 50;
      _baseConsumption = 8;
    }
  }

  double fuelNeeded(double distance) {
    return (distance / 100) * _baseConsumption;
  }

  double totalFuel(List<double> trips) {
    double total = 0;
    for (var d in trips) {
      total += fuelNeeded(d);
    }
    return total;
  }

  bool canComplete(List<double> trips) {
    return totalFuel(trips) <= _tankCapacity;
  }

  String get name => _name;
}

//Car
class Car extends Vehicle {
  int _passengers;

  Car(String name, double tank, double base, int passengers)
    : _passengers = passengers,
      super(name, tank, base) {
    if (passengers < 1) {
      print("Invalid passengers number");
      _passengers = 1;
    }
  }

  @override //
  double fuelNeeded(double distance) {
    double extra = _passengers * 0.2;
    return (distance / 100) * (super._baseConsumption + extra);
  }
}

//  Truck
class Truck extends Vehicle {
  double _cargoWeight;

  Truck(String name, double tank, double base, double cargo)
    : _cargoWeight = cargo,
      super(name, tank, base) {
    if (cargo < 0) {
      print("Invalid cargo weight");
      _cargoWeight = 0;
    }
  }

  @override
  double fuelNeeded(double distance) {
    double extra = _cargoWeight * 0.5;
    return (distance / 100) * (super._baseConsumption + extra);
  }
}

void main() {
  List<Vehicle> vehicles = [
    Car("Car A", 50, 7, 4),
    Truck("Truck B", 120, 20, 5),
  ];

  List<double> trips = [100, 200, 150];

  for (var v in vehicles) {
    double fuel = v.totalFuel(trips);
    print("Vehicle: ${v.name}");
    print("Total Fuel Needed: ${fuel.toStringAsFixed(2)} L");

    if (v.canComplete(trips)) {
      print("Can complete the trip ✅\n");
    } else {
      print("Cannot complete the trip ❌\n");
    }
  }
}
