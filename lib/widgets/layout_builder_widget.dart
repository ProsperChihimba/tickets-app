import 'package:flutter/material.dart';
import 'package:tickets/utils/app_layout.dart';

class LayoutBuilderSection extends StatelessWidget {
  final bool? isColored;
  const LayoutBuilderSection({super.key, required this.isColored});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (constraints.constrainWidth() / 15).floor(),
            (index) => SizedBox(
              width: AppLayout.getWidth(5),
              height: AppLayout.getHeight(1),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color:
                      isColored == null ? Colors.white : Colors.grey.shade300,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
