import 'dart:math';

// General concrete shape class
class Shape {
  double area() {
    return 0.0;
  }
}

class Rectangle extends Shape {
  double _width = 1;
  double _height = 1;

  Rectangle(double width, double height) {
    if (width > 0 && height > 0) {
      _width = width;
      _height = height;
    } else {
      print("Invalid Rectangle dimensions. Using default 1x1.");
    }
  }

  @override
  double area() {
    return _width * _height;
  }
}

class Circle extends Shape {
  double _radius = 1;

  Circle(double radius) {
    if (radius > 0) {
      _radius = radius;
    } else {
      print("Invalid Circle radius. Using default 1.");
    }
  }

  @override
  double area() {
    return pi * _radius * _radius;
  }
}

class Triangle extends Shape {
  double _base = 1;
  double _height = 1;

  Triangle(double base, double height) {
    if (base > 0 && height > 0) {
      _base = base;
      _height = height;
    } else {
      print("Invalid Triangle dimensions. Using default 1x1.");
    }
  }

  double area() {
    return 0.5 * _base * _height;
  }
}

// Tiered pricing calculation
double calculateCost(double totalArea) {
  double cost = 0;

  if (totalArea <= 50) {
    cost = totalArea * 1.50;
  } else if (totalArea <= 150) {
    cost = (50 * 1.50) + ((totalArea - 50) * 1.25);
  } else {
    cost = (50 * 1.50) + (100 * 1.25) + ((totalArea - 150) * 1.00);
  }

  return cost;
}

void main() {
  // Polymorphic collection
  List<Shape> shapes = [
    Rectangle(10, 5),
    Circle(7),
    Triangle(6, 4),
    Rectangle(-2, 3), // invalid test
  ];

  double totalArea = 0;

  for (var shape in shapes) {
    totalArea += shape.area(); // polymorphism
  }

  double totalCost = calculateCost(totalArea);

  print("Total Area: ${totalArea.toStringAsFixed(2)}");
  print("Total Cost: \$${totalCost.toStringAsFixed(2)}");
}
