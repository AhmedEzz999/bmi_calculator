import 'package:flutter/widgets.dart';

class GenderModel {
  final IconData genderIcon;
  final String gender;
  final bool isSelected;
  final VoidCallback onPressed;

  GenderModel({
    required this.genderIcon,
    required this.gender,
    required this.isSelected,
    required this.onPressed
  });
}
  enum GenderType {male, female}