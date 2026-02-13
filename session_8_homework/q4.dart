class Product {
  String _name = "";
  double _price = 0.0;

  // Setter for name
  set name(String value) {
    if (value.isEmpty) {
      print("Invalid product name");
    } else {
      _name = value;
    }
  }

  // Getter for name
  String get name => _name;

  // Setter for price
  set price(double value) {
    if (value < 0) {
      print("Invalid price");
    } else {
      _price = value;
    }
  }

  // Getter for price
  double get price => _price;

  // Computed getter (10% discount)
  double get discountedPrice => _price * 0.9;
}

void main() {
  Product product = Product();

  product.name = "Laptop";
  product.price = 10000;

  print("Product: ${product.name}");
  print("Original Price: ${product.price}");
  print("Discounted Price (10%): ${product.discountedPrice}");

  product.name = "";
  product.price = -500;
}
