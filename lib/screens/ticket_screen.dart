import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/screens/ticket_view.dart';
import 'package:tickets/utils/app_info_list.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/utils/app_styles.dart';
import 'package:tickets/widgets/column_layout.dart';
import 'package:tickets/widgets/layout_builder_widget.dart';
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
      backgroundColor: Styles.bgColor,
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
                  padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColored: true,
                  ),
                ),
                //
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15.5),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(20),
                  ),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AppColumnLayout(
                            firstText: "Flutter DB",
                            secondText: "Passenger",
                            alignmentText: CrossAxisAlignment.start,
                          ),
                          AppColumnLayout(
                            firstText: "5221 478566",
                            secondText: "Passport",
                            alignmentText: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const LayoutBuilderSection(
                        isColored: true,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AppColumnLayout(
                            firstText: '364738 28274478',
                            secondText: "Number of E-ticket",
                            alignmentText: CrossAxisAlignment.start,
                          ),
                          AppColumnLayout(
                            firstText: "B2SG28",
                            secondText: "Booking code",
                            alignmentText: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const LayoutBuilderSection(
                        isColored: true,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/visa.png",
                                    scale: 11,
                                  ),
                                  Text(
                                    " *** 2462",
                                    style: Styles.headLineStyle3.copyWith(
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "Payment method",
                                style: Styles.headLineStyle4,
                              ),
                            ],
                          ),
                          const AppColumnLayout(
                            firstText: "\$2,399",
                            secondText: "Price",
                            alignmentText: CrossAxisAlignment.end,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
