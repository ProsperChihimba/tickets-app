import 'package:flutter/material.dart';
import 'package:tickets/utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              child: Center(child: Text(firstTab)),
              width: size.width * .44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              child: Center(child: Text(secondTab)),
              width: size.width * .44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.transparent),
            ),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: const Color(0xFFF4F7FD)),
      ),
    );
  }
}
