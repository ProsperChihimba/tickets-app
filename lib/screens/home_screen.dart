import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/screens/hotel_screen.dart';
import 'package:tickets/screens/ticket_view.dart';
import 'package:tickets/utils/app_info_list.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/utils/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: Styles.headLineStyle3,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle,
                        )
                      ],
                    ),
                    Container(
                      width: AppLayout.getWidth(50),
                      height: AppLayout.getHeight(50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/img_1.png"))),
                    )
                  ],
                ),

                // Search container
                Gap(AppLayout.getHeight(25)),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(12),
                      vertical: AppLayout.getHeight(12)),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),

                // Upcoming flights header
                Gap(AppLayout.getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: Styles.headLineStyle2,
                    ),
                    Text("View all",
                        style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                        ))
                  ],
                ),
              ],
            ),
          ),

          Gap(AppLayout.getHeight(15)),
          // Ticket view row
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
            child: Row(
              children: ticketList
                  .map((ticket) => TicketView(ticket: ticket))
                  .toList(),
            ),
          ),

          //
          Gap(AppLayout.getHeight(15)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: Styles.headLineStyle2,
                ),
                Text("View all",
                    style: Styles.textStyle.copyWith(
                      color: Styles.primaryColor,
                    ))
              ],
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          // Hotel screen view
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
            child: Row(
                children: hotelList
                    .map((hotel) => HotelScreen(hotel: hotel))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
