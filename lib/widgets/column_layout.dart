import 'package:flutter/material.dart';
import 'package:tickets/utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignmentText;
  const AppColumnLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.alignmentText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignmentText,
      children: [
        Text(
          firstText,
          style: Styles.headLineStyle3.copyWith(
            color: Colors.black,
          ),
        ),
        Text(
          secondText,
          style: Styles.headLineStyle4,
        ),
      ],
    );
  }
}
