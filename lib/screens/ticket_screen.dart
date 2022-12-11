import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/screens/ticket_view.dart';
import 'package:tickets/utils/app_info_list.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/utils/app_styles.dart';
import 'package:tickets/widgets/ticket_tabs.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(20),
              ),
              children: [
                Gap(AppLayout.getHeight(20)),
                Text(
                  "Tickets",
                  style: Styles.headLineStyle,
                ),
                Gap(AppLayout.getHeight(20)),
                const AppTicketTabs(
                  firstTab: "Upcoming",
                  secondTab: "Previous",
                ),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColored: true,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
