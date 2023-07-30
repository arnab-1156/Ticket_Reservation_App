// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, avoid_unnecessary_containers

import 'package:booktickets/widgets/column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/layout_builder_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(40)),
        children: [
          Gap(AppLayout.getHeight(60)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular((AppLayout.getHeight(10))),
                  image: const DecorationImage(
                    image: AssetImage("lib/assets/images/img_1.png"),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headLineStyle1,
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text(
                    "New-York",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(4),
                      vertical: AppLayout.getHeight(4),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFF526799),
                          ),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getWidth(5)),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(AppLayout.getWidth(5)),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("You are Tapped!");
                    },
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                        fontSize: 18,
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Divider(color: Colors.grey.shade400),
          Gap(AppLayout.getHeight(20)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(100),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
                ),
              ),
              Positioned(
                right: -35,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18,
                      color: Color(0xFF264CD2),
                    ),
                    color: Colors.transparent,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(25),
                  vertical: AppLayout.getHeight(22),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: AppLayout.getWidth(28),
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: AppLayout.getHeight(30),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new award",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: AppLayout.getWidth(33),
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text(
                          " You've 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade200.withOpacity(0.9),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            "Accumulated Miles",
            style: Styles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(30)),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getWidth(20)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10,
                  spreadRadius: 10,
                ),
              ],
            ),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                Text(
                  "192802",
                  style: TextStyle(
                    fontSize: 45,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headLineStyle3.copyWith(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Text(
                      "11 June 2022",
                      style: Styles.headLineStyle3.copyWith(
                        color: Colors.grey.shade500,
                      ),
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(8)),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(AppLayout.getHeight(8)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "23 042",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "Airline CO.",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                const AppLayoutBuilderWidget(
                    sections: 12, isColor: false, width: 6),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "24",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "Vistara",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                const AppLayoutBuilderWidget(
                    sections: 12, isColor: false, width: 6),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "52 340",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "Emirates",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          InkWell(
            onTap: () {
              print("You are tapped");
            },
            child: Center(
              child: Text(
                "How to get more miles?",
                style: Styles.textStyle.copyWith(
                  color: Styles.primaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
