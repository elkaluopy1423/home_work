class BankAccount {
  double _balance = 0;

  // Getter
  double get balance => _balance;

  // Setter
  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print('Invalid balance');
    }
  }
}

void main() {
  BankAccount account = BankAccount();

  account.balance = 1000;
  print('Current Balance: ${account.balance}');

  // Try setting negative balance
  account.balance = -500; // Should print error
  print('Final Balance: ${account.balance}');
}
