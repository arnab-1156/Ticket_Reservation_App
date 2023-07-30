// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/double_text_widget.dart';
import '../widgets/icon_text_widget.dart';
import '../widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(40),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getWidth(55)),
          ),
          Gap(AppLayout.getHeight(20)),
          const AppTicketTabs(firstTab: "Airline Tickets", secondTab: "Hotels"),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(18),
              horizontal: AppLayout.getWidth(15),
            ),
            decoration: BoxDecoration(
              color: const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
            ),
            child: Center(
              child: Text(
                "Find Tickets",
                style: Styles.textStyle.copyWith(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextWidget(
              bigText: "Upcoming Flights", smallText: "View All"),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(425),
                width: size.width * 0.43,
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(15),
                  horizontal: AppLayout.getWidth(15),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getWidth(12)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("lib/assets/images/sit.jpg"),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% Discount on the early booking of this flight. Don't miss out this chance!",
                      style: Styles.headLineStyle2.copyWith(
                        fontSize: AppLayout.getWidth(27),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.45,
                        height: AppLayout.getHeight(200),
                        padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(15),
                          horizontal: AppLayout.getWidth(15),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF3A8888),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(18),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discounts\nfor Survey",
                              style: Styles.headLineStyle2.copyWith(
                                fontSize: AppLayout.getWidth(28),
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take the survey about our services and get some exciting offers and discounts!",
                              style: Styles.headLineStyle2.copyWith(
                                fontSize: AppLayout.getWidth(22),
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: AppLayout.getWidth(-25),
                        top: AppLayout.getHeight(-30),
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: Color(0xFF189999),
                            ),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headLineStyle1.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(10)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 38),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 38),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
