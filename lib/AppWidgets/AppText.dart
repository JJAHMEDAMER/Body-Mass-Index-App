import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  AppText({
    required this.text,
    this.color = const Color(0xfffbc301),
    this.size = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600
      ),
    );
  }
}
