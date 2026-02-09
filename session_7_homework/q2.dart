class Temperature {
  double celsius;

  Temperature(this.celsius);

  double toFahrenheit() {
    return (celsius * 9 / 5) + 32; // Convert Celsius to Fahrenheit
  }
}

void main() {
  Temperature temp = Temperature(25);

  print("Temperature in Fahrenheit: ${temp.toFahrenheit()}");
}
