import 'package:bmi_calc_app/AppWidgets/AppText.dart';
import 'package:bmi_calc_app/utils/colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  const AppButton({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        null;
      },
      style: TextButton.styleFrom(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
          left: 13,
          right: 13,
        ),
        // Button Color
        backgroundColor: AppColors.DarkYellow,
        // Click Colors
        foregroundColor: AppColors.Black,

        // Button Shape
        shape: StadiumBorder(
          side: BorderSide(
            color: AppColors.White.withOpacity(0.3),
            width: 1,
          ),
        ),
      ),

      // Child is preferred to be last argument
      child: AppText(
        text: buttonText,
        color: AppColors.White,
        size: 18,
      ),
    );
  }
}
