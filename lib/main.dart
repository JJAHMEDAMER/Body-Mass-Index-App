import 'package:bmi_calc_app/AppWidgets/AppText.dart';
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
        body: AppText(text: "hello App",),
      ),
    );
  }
}
