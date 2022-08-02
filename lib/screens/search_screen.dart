import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
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
          vertical: AppLayout.getHeight(20)
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.getHeight(20)),
          AppTicketTabs(firstTab: "Airline tickets", secondTab: "Hotels",),
          Gap(AppLayout.getHeight(25)),
          AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure"
          ),
          Gap(AppLayout.getHeight(20)),
          AppIconText(
              icon: Icons.flight_land_rounded,
              text: "Arrival"
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(12), horizontal: AppLayout.getHeight(12)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xD91130CE),
            ),
            child: Text(
              "find tickets",
              style: Styles.textStyle.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /* First container */
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/sit.jpg"
                          )
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out the chance.",
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),

              /* Second container */
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                          color: Color(0xFF3A8888),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18, color: Color(0xFF189999)),
                            color: Colors.transparent,
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(200),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text("Taks love", style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "A",
                                style: TextStyle(fontSize: 38),
                              ),
                              TextSpan(
                                text: "B",
                                style: TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: "C",
                                style: TextStyle(fontSize: 38),
                              ),
                            ]
                          )
                        )
                      ],
                    ),
                  )

                ],
              )
            ],
          )

        ],
      ),
    );
  }
}
