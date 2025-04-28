import 'package:bmi_calculator/components/slider_component.dart';
import 'package:bmi_calculator/styles/colors.dart';
import 'package:flutter/material.dart';

class HeightSection extends StatelessWidget {
  const HeightSection({super.key, required this.height, required this.onHeightChanged});
  final double height;
  final ValueChanged<double> onHeightChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: AppColors.unSelectedColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          Text('HEIGHT', style: TextStyle(fontSize: 30, color: AppColors.fontColor)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text('${height.toInt()}', style: TextStyle(fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold)),
              Text('cm', style: TextStyle(fontSize: 25, color: AppColors.fontColor)),
            ],
          ),
          SliderComponent(
            height: height,
            onHeightChanged: onHeightChanged
          )
        ],
      ),
    );
  }
}