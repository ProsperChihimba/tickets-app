import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          // Page main title
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.getHeight(20)),
          //
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    child: Center(child: Text("Airline tickets")),
                    width: size.width * .44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.white),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    child: Center(child: Text("Hotels")),
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
          )
        ],
      ),
    );
  }
}
