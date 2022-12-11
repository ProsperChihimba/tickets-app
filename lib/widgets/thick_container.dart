import 'package:flutter/material.dart';
import 'package:tickets/utils/app_layout.dart';

class ThickContainer extends StatelessWidget {
  final bool? isColored;
  const ThickContainer({super.key, this.isColored});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: AppLayout.getWidth(2.5),
          color: isColored == null ? Colors.white : const Color(0xFF8ACCF7),
        ),
      ),
    );
  }
}
