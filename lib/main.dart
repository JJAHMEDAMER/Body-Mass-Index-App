import 'package:bmi_calc_app/AppWidgets/AppText.dart';
import 'package:bmi_calc_app/AppWidgets/InputText.dart';
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
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                          child: InputText(
                        label: "Height",
                        hintText: "in CM",
                        size: 26,
                      )),
                      Expanded(
                          child: InputText(
                        label: "Mass",
                        hintText: "in KGs",
                        size: 26,
                      )),
                    ],
                  ),
                  AppText(text: "Calculate"),
                  AppText(
                    text: "0",
                    size: 72,
                  ),
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
