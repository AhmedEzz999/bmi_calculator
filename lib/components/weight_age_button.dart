import 'package:bmi_calculator/styles/colors.dart';
import 'package:flutter/material.dart';

class WeightAgeButton extends StatelessWidget {
  const WeightAgeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(0),
          shape: CircleBorder(),
          iconSize: 50,
          backgroundColor: AppColors.buttonColor,
          foregroundColor: Colors.white,
          splashFactory: NoSplash.splashFactory,
          overlayColor: Colors.transparent,
        ),
        onPressed: (){}, 
        child: Icon(Icons.add)
      );
  }
}