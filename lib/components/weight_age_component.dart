import 'package:bmi_calculator/components/weight_age_button.dart';
import 'package:bmi_calculator/styles/colors.dart';
import 'package:flutter/material.dart';

class WeightAgeComponent extends StatelessWidget {
  const WeightAgeComponent({super.key});

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
          Text('WEIGHT', style: TextStyle(fontSize: 25, color: AppColors.fontColor)),
          Text('60', style: TextStyle(fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold)),
          Row(
            children: [
              WeightAgeButton(),
              SizedBox(width: 10),
              WeightAgeButton(),
            ],
          )
        ],
      ),
    );
  }
}