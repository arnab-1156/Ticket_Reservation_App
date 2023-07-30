// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:booktickets/screens/ticket_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../utils/app_info_list.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(40),
            ),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headLineStyle1
                    .copyWith(fontSize: AppLayout.getWidth(55)),
              ),
              Gap(AppLayout.getHeight(25)),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(35)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15.5)),
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15),
                  vertical: AppLayout.getHeight(20),
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: 'Danny Mac',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: '5221 364869',
                          secondText: 'Passport',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(
                      sections: 12,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: '0055 444 77147',
                          secondText: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: 'B2SG2B',
                          secondText: 'Booking code',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(
                      sections: 12,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'lib/assets/images/visa.png',
                                  scale: 11,
                                ),
                                Text(" *** 2462", style: Styles.headLineStyle3),
                              ],
                            ),
                            const Gap(5),
                            Text(
                              'Payment method',
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        AppColumnLayout(
                          firstText: '\$249.99',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              //BAR CODE
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getWidth(21)),
                    bottomRight: Radius.circular(AppLayout.getWidth(21)),
                  ),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(
                  left: AppLayout.getWidth(15),
                  right: AppLayout.getWidth(15),
                ),
                padding: EdgeInsets.only(
                  top: AppLayout.getHeight(20),
                  bottom: AppLayout.getWidth(20),
                ),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      data: 'https://github.com/arnab-1156',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: AppLayout.getHeight(70),
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(25),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Styles.textColor,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 5,
                backgroundColor: Styles.textColor,
              )
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(25),
            top: AppLayout.getHeight(295),
            child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2,
                    color: Styles.textColor,
                  ),
                ),
                child: CircleAvatar(
                  maxRadius: 5,
                  backgroundColor: Styles.textColor,
                )
            ),
          ),
        ],
      ),
    );
  }
}
