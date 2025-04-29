import 'package:bmi_calculator/models/bmi_data.dart';
import 'package:bmi_calculator/styles/colors.dart';
import 'package:bmi_calculator/views/result_view.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
    required this.bmiData,
    required this.onCalculate
  });
  final BmiData bmiData;
  final double Function() onCalculate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondaryColor,
          shape: RoundedRectangleBorder(),
          padding: EdgeInsets.all(0),
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          splashFactory: NoSplash.splashFactory,
          overlayColor: Colors.transparent,
        ),
        onPressed: () {
          final bmiResult = onCalculate();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) =>
                      ResultView(bmiData: bmiData, bmiResult: bmiResult),
            ),
          );
        },
        child: Text(
          'CALCULATE',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}