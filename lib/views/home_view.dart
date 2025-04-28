import 'package:bmi_calculator/models/gender_model.dart';
import 'package:bmi_calculator/styles/colors.dart';
import 'package:bmi_calculator/widgets/calculate_button.dart';
import 'package:bmi_calculator/widgets/gender_section.dart';
import 'package:bmi_calculator/widgets/height_section.dart';
import 'package:bmi_calculator/widgets/weight_age_section.dart';
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
  void _onGenderChanged (GenderType? gender) => setState(() => _selectedGender = gender);
  void _onHeightChanged (double height) => setState(() => _height = height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          title: const Text('BMI CALCULATOR', style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold)),
        ),
        body: Container(
          color: AppColors.primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                GenderSection(
                  selectedGender: _selectedGender,
                  onGenderChanged: _onGenderChanged,
                ),
                HeightSection(
                  height: _height,
                  onHeightChanged: _onHeightChanged,
                ),
                WeightAgeSection(),
                // CalculateButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}