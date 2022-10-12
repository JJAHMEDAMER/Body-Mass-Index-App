import 'package:bmi_calc_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Strips extends StatelessWidget {
  final BorderRadiusGeometry borderRadius;
  final CrossAxisAlignment crossAxisAlignment;

  const Strips({
    super.key,
    required this.borderRadius,
    required this.crossAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Container(
          width: 50,
          height: 20,
          decoration: BoxDecoration(
            color: AppColors.Yellow,
            borderRadius: borderRadius,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          width: 75,
          height: 20,
          decoration: BoxDecoration(
            color: AppColors.Yellow,
            borderRadius: borderRadius,
          ),
        ),
        SizedBox(height: 5),
        Container(
          width: 50,
          height: 20,
          decoration: BoxDecoration(
            color: AppColors.Yellow,
            borderRadius: borderRadius,
          ),
        ),
      ],
    );
  }
}
