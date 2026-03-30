class BMICalculator {
  final int height;
  final int weight;

  BMICalculator({required this.height, required this.weight});

  double calculateBMI() {
    double h = height / 100;
    return weight / (h * h);
  }

  String getResult() {
    double bmi = calculateBMI();

    if (bmi >= 25) {
      return "Overweight";
    } else if (bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }
}
