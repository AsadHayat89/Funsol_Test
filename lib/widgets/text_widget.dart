import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  CustomText({
    required this.text,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}