import 'package:flutter/material.dart';
import '../constants.dart';

class HeightSlider extends StatelessWidget {
  final int height;
  final Function(double) onChanged;

  const HeightSlider({
    super.key,
    required this.height,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: kCardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text("HEIGHT", style: kTextStyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$height", style: kNumberStyle),
              const Text(" cm", style: kTextStyle),
            ],
          ),
          Slider(
            value: height.toDouble(),
            min: 100,
            max: 220,
            activeColor: kAccentColor,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
