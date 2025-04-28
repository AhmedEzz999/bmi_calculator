import 'package:bmi_calculator/styles/colors.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondaryColor,
          shape: RoundedRectangleBorder(),
          padding: EdgeInsets.all(0),
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap
        ),
        onPressed: (){},
        child: Text('CALCULATE', style: TextStyle(fontSize: 30, color: Colors.white))
      ),
    );
  }
}