import 'package:bmi_calculator/models/gender_model.dart';
import 'package:bmi_calculator/styles/colors.dart';
import 'package:flutter/material.dart';

class GenderComponent extends StatelessWidget {
  const GenderComponent({super.key, required this.genderModel});
  final GenderModel genderModel;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: genderModel.isSelected ? AppColors.selectedColor : AppColors.unSelectedColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          splashFactory: NoSplash.splashFactory,
          overlayColor: Colors.transparent,
        ),
        onPressed: genderModel.onPressed,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(genderModel.genderIcon,size: 120,color: Colors.white),
            Text(genderModel.gender,style: TextStyle(fontSize: 27,color: AppColors.fontColor))
          ],
        )
      ),
    );
  }
}