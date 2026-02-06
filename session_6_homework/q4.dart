class Product {
  String name;
  double price;
  Product([this.name = "UNKNOWN", this.price = 0.0]);

  void displayInfo() {
    print("Product Name: $name, Price: \$${price.toStringAsFixed(2)}");
  }
}

void main() {
  Product product1 = Product("apple", 70.5);
  Product product2 = Product();
  product1.displayInfo();
  product2.displayInfo();
}
