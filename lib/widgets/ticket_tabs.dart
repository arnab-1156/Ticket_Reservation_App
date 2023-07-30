import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(50)),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(10),
              ),
              width: size.width * 0.44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getWidth(50))),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  firstTab,
                  style:
                  Styles.headLineStyle4.copyWith(color: Colors.black),
                ),
              ),
            ), //Container for Airline Tickets
            FittedBox(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(12),
                ),
                width: size.width * 0.45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getWidth(50))),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Text(
                    secondTab,
                    style: Styles.headLineStyle4
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
            ), //Container for Hotels
          ],
        ),
      ),
    );
  }
}
