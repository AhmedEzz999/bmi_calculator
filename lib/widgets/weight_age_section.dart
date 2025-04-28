import 'package:bmi_calculator/components/weight_age_component.dart';
import 'package:flutter/material.dart';

class WeightAgeSection extends StatelessWidget {
  const WeightAgeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        WeightAgeComponent(),
        WeightAgeComponent()
      ],
    );
  }
}