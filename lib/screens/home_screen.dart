import 'package:flutter/material.dart';
import '../widgets/gender_card.dart';
import '../widgets/height_slider.dart';
import '../widgets/number_selector.dart';
import '../widgets/calculate_button.dart';
import '../models/bmi_calculator.dart';

enum Gender { male, female }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Gender? selectedGender;
  int height = 174;
  int weight = 60;
  int age = 29;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        backgroundColor: const Color(0xFF0A0E21),
      ),
      body: Column(
        children: [
          Row(
            children: [
              GenderCard(
                icon: Icons.male,
                label: "MALE",
                isSelected: selectedGender == Gender.male,
                onTap: () {
                  setState(() => selectedGender = Gender.male);
                },
              ),
              GenderCard(
                icon: Icons.female,
                label: "FEMALE",
                isSelected: selectedGender == Gender.female,
                onTap: () {
                  setState(() => selectedGender = Gender.female);
                },
              ),
            ],
          ),

          HeightSlider(
            height: height,
            onChanged: (val) {
              setState(() => height = val.toInt());
            },
          ),

          Row(
            children: [
              NumberSelector(
                label: "WEIGHT",
                value: weight,
                onAdd: () => setState(() => weight++),
                onRemove: () => setState(() => weight--),
              ),
              NumberSelector(
                label: "AGE",
                value: age,
                onAdd: () => setState(() => age++),
                onRemove: () => setState(() => age--),
              ),
            ],
          ),

          const Spacer(),

          CalculateButton(
            onTap: () {
              BMICalculator calc = BMICalculator(
                height: height,
                weight: weight,
              );

              double bmi = calc.calculateBMI();

              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: const Text("Result :"),
                  titleTextStyle: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  content: Text(
                    "BMI: ${bmi.toStringAsFixed(1)}\n${calc.getResult()}",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
