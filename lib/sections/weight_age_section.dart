import 'package:bmi_calculator/components/weight_age_component.dart';
import 'package:bmi_calculator/models/weight_age_model.dart';
import 'package:flutter/material.dart';

class WeightAgeSection extends StatelessWidget {
  const WeightAgeSection({
    super.key,
    required this.weightValue,
    required this.ageValue,
    required this.onWeightChanged,
    required this.onAgeChanged,
  });
  final int weightValue;
  final int ageValue;
  final void Function(int) onWeightChanged;
  final void Function(int) onAgeChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        WeightAgeComponent(
          model: WeightAgeModel(
            text: 'WEIGHT',
            currentValue: weightValue,
            minValue: 20,
            maxValue: 250
          ),
          onValueChanged: onWeightChanged
        ),
        WeightAgeComponent(
          model: WeightAgeModel(
            text: 'AGE',
            currentValue: ageValue,
            minValue: 5,
            maxValue: 125
          ),
          onValueChanged: onAgeChanged
        )
      ],
    );
  }
}