import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/utils.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/utils/app_styles.dart';
import 'package:tickets/widgets/layout_builder_widget.dart';
import 'package:tickets/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColored;
  const TicketView({
    super.key,
    required this.ticket,
    this.isColored,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 164 : 166),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            // Blue part of the ticket
            Container(
              decoration: BoxDecoration(
                  color: isColored == null
                      ? const Color(0xFF526799)
                      : Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                  )),
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(16),
                  vertical: AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColored == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      ),
                      const Spacer(),
                      ThickContainer(
                        isColored: isColored,
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                  (constraints.constrainWidth() / 6).floor(),
                                  (index) => SizedBox(
                                    height: AppLayout.getHeight(1),
                                    width: AppLayout.getWidth(3),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: isColored == null
                                            ? Colors.white
                                            : Colors.grey.shade300,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColored == null
                                    ? Colors.white
                                    : const Color(0xFF8ACCF7),
                              ),
                            ),
                          ),
                        ],
                      )),
                      ThickContainer(
                        isColored: isColored,
                      ),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: isColored == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      )
                    ],
                  ),

                  // Ticket first row second wave
                  Gap(AppLayout.getHeight(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          style: isColored == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColored == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColored == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // Orange part of the ticket
            Container(
              color: isColored == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(12.0),
                          vertical: AppLayout.getHeight(6.0)),
                      child: LayoutBuilderSection(
                        isColored: isColored,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                    ),
                  )
                ],
              ),
            ),

            // Buttom part of orange ticket
            Container(
              decoration: BoxDecoration(
                  color: isColored == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColored == null ? 21 : 0),
                    bottomRight: Radius.circular(isColored == null ? 21 : 0),
                  )),
              padding: EdgeInsets.only(
                  left: AppLayout.getWidth(16.0),
                  top: AppLayout.getHeight(10.0),
                  right: AppLayout.getWidth(16.0),
                  bottom: AppLayout.getHeight(16.0)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: isColored == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3
                                    .copyWith(color: Colors.black),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            "Date",
                            style: isColored == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: isColored == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3
                                    .copyWith(color: Colors.black),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            "Departure time",
                            style: isColored == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'],
                            style: isColored == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3
                                    .copyWith(color: Colors.black),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            "Number",
                            style: isColored == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
