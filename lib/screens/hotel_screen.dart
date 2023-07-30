// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors,

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(15),
        vertical: AppLayout.getHeight(17),
      ),
      margin: EdgeInsets.only(
        right: AppLayout.getWidth(17),
        top: AppLayout.getHeight(10),
        bottom: AppLayout.getHeight(10),
      ),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(AppLayout.getWidth(24)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: AppLayout.getWidth(8),
            spreadRadius: AppLayout.getWidth(5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(12)),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("lib/assets/images/${hotel['image']}"),
              ),
            ),
          ),
          const Gap(10),
          Text(
            "${hotel['place']}",
            style: Styles.headLineStyle1.copyWith(color: Styles.hsColor),
          ),
          const Gap(5),
          Text(
            "${hotel['destination']}",
            style: Styles.headLineStyle2.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            "\$${hotel['price']}/Night",
            style: Styles.headLineStyle1.copyWith(color: Styles.hsColor, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
