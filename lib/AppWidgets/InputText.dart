import 'package:bmi_calc_app/AppWidgets/AppText.dart';
import 'package:bmi_calc_app/utils/colors.dart';
import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final String hintText;
  final double size;

  InputText({
    required this.label,
    required this.hintText,
    this.size = 16,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // Text Alignment
      textAlign: TextAlign.center,
      textAlignVertical: TextAlignVertical.center,

      // Curser
      cursorColor: AppColors.White,

      // Actual Input
      style: TextStyle(
        color: AppColors.White,
        fontSize: size,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
      ),

      // Label Hint and other
      decoration: InputDecoration(
        // Label
        label: Center(
          child: AppText(
            text: label,
            size: size,
          ),
        ),

        // Hint Text
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColors.Grey,
          fontSize: 12,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),

        // Border
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
