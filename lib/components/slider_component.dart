import 'package:bmi_calculator/styles/colors.dart';
import 'package:flutter/material.dart';

class SliderComponent extends StatefulWidget {
  const SliderComponent({
    super.key,
    required this.height,
    required this.onHeightChanged
  });
  final double height;
  final ValueChanged<double> onHeightChanged;

  @override
  State<SliderComponent> createState() => _SliderComponentState();
}

class _SliderComponentState extends State<SliderComponent> {
  @override
  Widget build(BuildContext context) {
    return Slider(
      min: 50,
      max: 250,
      value: widget.height,
      onChanged: (newHeight) => widget.onHeightChanged(newHeight),
      activeColor: Colors.white,
      inactiveColor: AppColors.fontColor,
      thumbColor: AppColors.secondaryColor,
    );
  }
}