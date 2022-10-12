import 'package:bmi_calc_app/AppWidgets/AppText.dart';
import 'package:bmi_calc_app/AppWidgets/sideStrips.dart';
import 'package:bmi_calc_app/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.Black,
        body: Column(
          children: [
            Container(
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  AppText(
                    text: "BMI Calculator",
                    size: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AppText(
                        text: "Height",
                      ),
                      AppText(
                        text: "Height",
                      )
                    ],
                  ),
                  AppText(text: "Calculate"),
                  AppText(text: "0"),
                  AppText(text: "Normal Weight"),
                ],
              ),
            ),
            Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Strips(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(100),
                  ),
                  crossAxisAlignment: CrossAxisAlignment.end,
                ),
                SizedBox(height: 10),
                Strips(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(100),
                  ),
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
