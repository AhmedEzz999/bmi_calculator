import 'package:bmi_calculator/models/gender_model.dart';

class BmiData {
  final GenderType gender;
  final int height;
  final int weight;
  final int age;

  BmiData({
    required this.gender,
    required this.height,
    required this.weight,
    required this.age
  });
}