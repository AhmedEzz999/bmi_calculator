import 'package:bmi_calculator/components/weight_age_button.dart';
import 'package:bmi_calculator/models/weight_age_model.dart';
import 'package:bmi_calculator/styles/colors.dart';
import 'package:flutter/material.dart';

class WeightAgeComponent extends StatelessWidget {
  const WeightAgeComponent({super.key, required this.model, required this.onValueChanged});
  final WeightAgeModel model;
  final void Function(int) onValueChanged;
  
  void addValueButton() {
    final newValue = (model.currentValue + 1).clamp(model.minValue, model.maxValue);
    onValueChanged(newValue);
  }

  void subtractValueButton() {
    final newValue = (model.currentValue - 1).clamp(model.minValue, model.maxValue);
    onValueChanged(newValue);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.unSelectedColor,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        children: [
          Text(model.text, style: TextStyle(fontSize: 25, color: AppColors.fontColor)),
          Text('${model.currentValue}', style: TextStyle(fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold)),
          Row(
            children: [
              WeightAgeButton(icon: Icons.remove,onPressed: subtractValueButton),
              SizedBox(width: 10),
              WeightAgeButton(icon: Icons.add,onPressed: addValueButton),
            ],
          )
        ],
      ),
    );
  }
}