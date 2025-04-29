import 'dart:math';
import 'package:bmi_calculator/models/bmi_data.dart';
import 'package:bmi_calculator/models/gender_model.dart';
import 'package:bmi_calculator/styles/colors.dart';
import 'package:bmi_calculator/sections/calculate_button.dart';
import 'package:bmi_calculator/sections/gender_section.dart';
import 'package:bmi_calculator/sections/height_section.dart';
import 'package:bmi_calculator/sections/weight_age_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GenderType? _selectedGender;
  double _height = 174;
  int _weight = 60;
  int _age = 29;

  void _onGenderChanged(GenderType? gender) =>
      setState(() => _selectedGender = gender);
  void _onHeightChanged(double height) => setState(() => _height = height);
  void _onWeightChanged(int weight) => (setState(() => _weight = weight));
  void _onAgeChanged(int age) => (setState(() => _age = age));

  double _calculateBmi() {
    return _weight / pow((_height / 100), 2);
  }

  @override
  Widget build(BuildContext context) {
    final bmiData = BmiData(
      gender: _selectedGender,
      height: _height,
      weight: _weight,
      age: _age,
    );
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          title: const Text(
            'BMI CALCULATOR',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: AppColors.primaryColor,
              margin: EdgeInsets.only(),
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 20,
                right: 15,
                left: 15,
              ),
              child: Column(
                children: [
                  GenderSection(
                    selectedGender: _selectedGender,
                    onGenderChanged: _onGenderChanged
                  ),
                  HeightSection(
                    height: _height,
                    onHeightChanged: _onHeightChanged
                  ),
                  WeightAgeSection(
                    weightValue: _weight,
                    ageValue: _age,
                    onWeightChanged: _onWeightChanged,
                    onAgeChanged: _onAgeChanged
                  ),
                ],
              ),
            ),
            CalculateButton(bmiData: bmiData, onCalculate: _calculateBmi)
          ],
        ),
      ),
    );
  }
}