import 'package:booktickets/themes/app_layout.dart';
import 'package:booktickets/themes/styles.dart';
import 'package:booktickets/widget/app_double_text_widget.dart';
import 'package:booktickets/widget/icon_text_widget.dart';
import 'package:booktickets/widget/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          const TicketTabsWidget(firstTabTitle: "Airline Tickets", secondTabTitle: "Hotels"),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(18),
                horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
                color: const Color(0xd91130ce),
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
            child: Center(
              child: Text("Find tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white)),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextWidget(bigText: "Upcoming Flights"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(12)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(200),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(12),
                          ),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/sit.jpg"))),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight. don't miss.",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                            color: const Color(0xFF3ab888),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18))),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getWidth(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take the survey about our services and get discount ",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -45,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: const Color(0xff189999)),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    width: size.width * 0.42,
                    height: AppLayout.getHeight(200),
                    decoration: BoxDecoration(
                        color: const Color(0xFFec6545),
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18))),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(15),
                        vertical: AppLayout.getHeight(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(15)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: '😍', style: TextStyle(fontSize: 38)),
                              TextSpan(
                                  text: '🥰', style: TextStyle(fontSize: 50)),
                              TextSpan(
                                  text: '😘', style: TextStyle(fontSize: 38))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
