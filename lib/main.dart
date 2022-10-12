import 'package:bmi_calc_app/AppWidgets/AppButton.dart';
import 'package:bmi_calc_app/AppWidgets/AppText.dart';
import 'package:bmi_calc_app/AppWidgets/InputText.dart';
import 'package:bmi_calc_app/AppWidgets/sideStrips.dart';
import 'package:bmi_calc_app/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double bmi_result = 0.0;
  double height = 0.0;
  double mass = 0.0;
  String health = "";
  TextEditingController textControllerHeight = TextEditingController();

  TextEditingController textControllerMass = TextEditingController();

  void logic() {
    setState(() {
      mass = double.parse(textControllerMass.text);
      height =
          double.parse(textControllerHeight.text) / 100; // Convert to meter

      bmi_result = mass / (height * height);
      bmi_result = double.parse(bmi_result.toStringAsFixed(2));

      if (bmi_result < 16) {
        health = "Severe Thinness";
      } else if (bmi_result < 17) {
        health = "Moderate Thinness";
      } else if (bmi_result < 18.5) {
        health = "Mild Thinness";
      } else if (bmi_result < 25) {
        health = "Normal";
      } else if (bmi_result < 30) {
        health = "Overweight";
      } else if (bmi_result < 35) {
        health = "Obese Class I";
      } else if (bmi_result < 40) {
        health = "Obese Class II";
      } else if (bmi_result > 40) {
        health = "Obese Class III";
      }
    });
  }

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
                          textcontroller: textControllerHeight,
                          label: "Height",
                          hintText: "in CM",
                          size: 26,
                        ),
                      ),
                      Expanded(
                        child: InputText(
                          textcontroller: textControllerMass,
                          label: "Mass",
                          hintText: "in KGs",
                          size: 26,
                        ),
                      ),
                    ],
                  ),
                  AppButton(func: logic, buttonText: "Calculate"),
                  AppText(
                    text: bmi_result.toString(),
                    size: 72,
                  ),
                  AppText(text: health),
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
