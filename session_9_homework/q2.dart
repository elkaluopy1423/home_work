import 'dart:io';

class MenuItem {
  String name;
  double price;
  String category;

  MenuItem(this.name, this.price, this.category);

  void display(int index) {
    print("$index. $name | $price EGP | $category");
  }
}

class Order {
  List<MenuItem> _items = [];

  void addItem(MenuItem item) {
    _items.add(item);
    print("${item.name} added to your order.\n");
  }

  void showOrder() {
    // Method to display the current order
    if (_items.isEmpty) {
      print("Your order is empty.\n");
      return;
    }

    print("\nYour Order:");
    for (var item in _items) {
      print("${item.name} - ${item.price} EGP");
    }

    print("Total: ${calculateTotal()} EGP\n");
  }

  double calculateTotal() {
    double total = 0;
    for (var item in _items) {
      total += item.price;
    }
    return total;
  }
}

void main() {
  List<MenuItem> menu = [
    MenuItem("Margherita Pizza", 120, "Pizza"),
    MenuItem("Pepperoni Pizza", 150, "Pizza"),
    MenuItem("Cheese Burger", 90, "Burger"),
    MenuItem("Coca Cola", 30, "Drinks"),
    MenuItem("Orange Juice", 25, "Drinks"),
  ];

  Order order = Order();

  while (true) {
    print("==== Food Delivery App ====");
    print("1. Show Menu");
    print("2. Add Item to Order");
    print("3. Show Order");
    print("4. Exit");
    print("Choose an option:");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print("\nMenu:");
        for (int i = 0; i < menu.length; i++) {
          menu[i].display(i + 1);
        }
        print("");
        break;

      case '2':
        print("\nEnter item number:");
        String? input = stdin.readLineSync();
        int? index = int.tryParse(input ?? "");

        if (index == null || index < 1 || index > menu.length) {
          print("Invalid choice.\n");
        } else {
          order.addItem(menu[index - 1]);
        }
        break;

      case '3':
        order.showOrder();
        break;

      case '4':
        print("Thank you for using the app !");
        return;

      default:
        print("Invalid option.\n");
    }
  }
}
