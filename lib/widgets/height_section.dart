import 'package:bmi_calculator/styles/colors.dart';
import 'package:flutter/material.dart';

class SliderComponent extends StatelessWidget {
  const SliderComponent({super.key, required this.height, required this.onHeightChanged});
  final int height;
  final Function(int) onHeightChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(vertical: 30),
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
              Text('$height', style: TextStyle(fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold)),
              Text('cm', style: TextStyle(fontSize: 25, color: AppColors.fontColor))
            ],
          )
        ],
      ),
    );
  }
}