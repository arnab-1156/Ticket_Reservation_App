// ignore_for_file: avoid_unnecessary_containers, avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_info_list.dart';
import '../widgets/double_text_widget.dart';
import 'hotel_screen.dart';
import '../utils/app_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning!",
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeight(50),
                      width: AppLayout.getWidth(50),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getWidth(10)),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("lib/assets/images/img_1.png"),
                        ),
                      ),
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(12),
                    vertical: AppLayout.getHeight(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(40)),
                const AppDoubleTextWidget(
                    bigText: "Upcoming Flights", smallText: "View All"),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
            child: Row(
              children: ticketList
                  .map((ticketinfo) => TicketView(
                        ticket: ticketinfo,
                      ))
                  .toList(),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: const AppDoubleTextWidget(
                bigText: "Hotels", smallText: "View All"),
          ),
          Gap(AppLayout.getHeight(25)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
            child: Row(
              children: hotelList
                  .map((hotelinfo) => HotelScreen(hotel: hotelinfo))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
