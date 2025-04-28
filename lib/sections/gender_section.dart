import 'package:bmi_calculator/components/gender_component.dart';
import 'package:bmi_calculator/models/gender_model.dart';
import 'package:flutter/material.dart';

class GenderSection extends StatelessWidget {
  const GenderSection({super.key, required this.selectedGender, required this.onGenderChanged});
  final GenderType? selectedGender;
  final Function(GenderType?) onGenderChanged;

  @override
  Widget build(BuildContext context) {
    final GenderModel male = GenderModel(
      gender: 'MALE',
      genderIcon: Icons.male,
      isSelected: selectedGender == GenderType.male,
      onPressed: () => onGenderChanged(GenderType.male)
    );
    final GenderModel feMale = GenderModel(
      gender: 'FEMALE',
      genderIcon: Icons.female,
      isSelected: selectedGender == GenderType.female,
      onPressed: () => onGenderChanged(GenderType.female)
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GenderComponent(genderModel: male),
        GenderComponent(genderModel: feMale),
      ],
    );
  }
}