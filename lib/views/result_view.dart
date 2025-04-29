import 'package:bmi_calculator/components/result_component.dart';
import 'package:bmi_calculator/models/bmi_data.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.bmiData, required this.bmiResult});
  final double bmiResult;
  final BmiData bmiData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff45c7ff),
        title: Text('Result Page', style: TextStyle(fontSize: 28)),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 25),
          decoration: BoxDecoration(color: const Color(0xff45c7ff)),
          child: Column(
            children: [
              ResultComponent(
                info:
                    'Your gender is ${bmiData.gender?.toString().split('.').last ?? 'not selected'}',
              ),
              ResultComponent(info: 'Your age is ${bmiData.age}'),
              ResultComponent(
                info: 'Your height is ${bmiData.height.toInt()} cm',
              ),
              ResultComponent(info: 'Your weight is ${bmiData.weight} kg'),
              ResultComponent(info: 'BMI = ${bmiResult.toStringAsFixed(2)}'),
            ],
          ),
        ),
      ),
    );
  }
}